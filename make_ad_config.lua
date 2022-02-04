#!/usr/local/bin/lua
if not arg[1] then
	print ('Usage: '..arg[0]..' <input filename>.')
	do return end
end
local conf = io.open(arg[1],'r')
if not conf then
	print ('Error: conf file <'..arg[1]..'> not found.')
	do return end
end
local mac = conf:read('*l'):gsub('%s', '')
local tp_param = conf:read('*l'):gsub('%s', '')
local tp_fr = tp_param:sub(1,5)
local tp_all = tp_param:sub(1,13)
local tp_type = tp_param:sub(15,-1)
local f_line = conf:read('*l')
local ch_list = {}
local index = 1
local cam = {}
local cam_index = 0

-- Name		PNR	Subsc		Camd	Mcast IP	port	Fr	EPG name	SDT name	DVBC PNR	DVBC Video PID	DVBC Aud PID
-- Kinouzhas	1309	Кино Плюс	6768	239.192.16.9	2121	11785	kinouzhas	Киноужас	27408		101		102
while f_line do
	if f_line == '' then break end
	local pos = f_line:find('\t')			-- Kinouzhas - name
	local pos1 = f_line:find('\t',pos+1)		-- 1309 - pnr
	local pos2 = f_line:find('\t',pos1+1)		-- Кино Плюс - Subscription
	local pos3 = f_line:find('\t',pos2+1)		-- 6768 - CAMD port
	local pos4 = f_line:find('\t',pos3+1)		-- 239.192.16.9 - mcast IP
	local pos5 = f_line:find('\t',pos4+1)		-- 2121 - mcast port
	local pos6 = f_line:find('\t',pos5+1)		-- 11785 - tp freq
	local pos7 = f_line:find('\t',pos6+1)		-- kinouzhas - EPG name
	local pos8 = -1
	local pos9 = -1
	local pos10 = -1
	if pos7 ~= -1 then
		pos8 = f_line:find('\t',pos7+1)		-- Киноужас - DVBC SDT name
		pos9 = f_line:find('\t',pos8+1)		-- 27408 - set_pnr port
		pos10 = f_line:find('\t',pos9+1)		-- 101 - DVBC Video PID
	end
	local cam_port = f_line:sub(pos2+1,pos3-1)	-- 
	if cam_port ~= 'SKIP' then
		ch_list[index] = {}
		ch_list[index].name = string.gsub(f_line:sub(1,pos-1),' ','-')
		ch_list[index].pnr = f_line:sub(pos+1,pos1-1)
		ch_list[index].subscription = f_line:sub(pos1+1,pos2-1)
		ch_list[index].cam = cam_port
		if not cam[ch_list[index].cam] then
			cam_index = cam_index+1
			cam[cam_index] = ch_list[index].cam
			cam[ch_list[index].cam] = ''
		end
		ch_list[index].mcast = f_line:sub(pos3+1,pos4-1)
		ch_list[index].port = f_line:sub(pos4+1,pos5-1)
		ch_list[index].freq = f_line:sub(pos5+1,pos6-1)
		if pos7 ~= -1 then
			ch_list[index].epg_name = f_line:sub(pos6+1,pos7-1)
			ch_list[index].sdt_name = f_line:sub(pos7+1,pos8-1)
			ch_list[index].set_pnr_port = f_line:sub(pos8+1,pos9-1)
			ch_list[index].dvbc_video_pid = f_line:sub(pos9+1,pos10-1)
			ch_list[index].dvbc_audio_pid = f_line:sub(pos10+1,-1)
		else
			ch_list[index].epg_name = f_line:sub(pos6+1,-1)
			ch_list[index].sdt_name = ''
			ch_list[index].set_pnr_port = ''
			ch_list[index].dvbc_video_pid = ''
			ch_list[index].dvbc_audio_pid = ''
		end
		index = index+1
	end
	f_line = conf:read('*l')
end

print ('sat_type = "'..tp_type..'"')
print ('sat_name = "ntv"')
print ('tp = "'..tp_all..'"')
print ('tp_fr = "'..tp_fr..'"')
print ('mac = "'..mac..'"')
print ('lnb = "10750:10750:10750"')
print ('')
print ('-- '..(index-1)..' channels:')
print ('channels = {')
for i=1,index-1,1 do
	local pnr = (ch_list[i].set_pnr_port == 'SKIP') and '' or '&set_pnr='..ch_list[i].set_pnr_port
	local ch_var = '{name="'..ch_list[i].name..'",'..'input={"dvb://adapter_1#pnr='..ch_list[i].pnr..pnr..'&cam=reader_'..ch_list[i].cam
	ch_var = ch_var .. '"},output={"udp://ens1f0@' .. ch_list[i].mcast..':'..ch_list[i].port..'#sync"},'
	if not ((#ch_list[i].dvbc_video_pid == 0) and (#ch_list[i].dvbc_audio_pid == 0)) then
		ch_var = ch_var .. 'map="video=' .. ch_list[i].dvbc_video_pid .. ',audio=' .. ch_list[i].dvbc_audio_pid .. '",'
	end
	ch_var = ch_var .. 'pnr="'..ch_list[i].pnr..'",'
	ch_var = ch_var .. 'udp_input={localaddr="172.17.168.11",addr="'..ch_list[i].mcast..'",port="'..ch_list[i].port..'"}},'
	print (ch_var)
end
print ('}')
print ('')

for i=1,cam_index,1 do
	print ('reader_'..cam[i]..' = newcamd({')
	print (' name = "Reader #'..cam[i]..'",')
	print (' host = "172.17.166.18",')
	print (' port = '..cam[i]..',')
	print (' user = "root",')
	print (' pass = "root",')
	print (' key = "0102030405060708091011121314",')
	print ('})')
end

print ('')

print ('return {')

print ([==[
 sat_type=sat_type,
 sat_name=sat_name,
 tp=tp,
 tp_fr=tp_fr,
 mac=mac,
 lnb=lnb,
 channels=channels,]==])

for i=1,cam_index,1 do
	print (' reader_'..cam[i]..'=reader_'..cam[i]..',')
end

print ('}')

