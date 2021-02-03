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
local mac = conf:read('*l')
local tp_param = conf:read('*l')
local tp_fr = tp_param:sub(1,5)
local tp_all = tp_param:sub(1,13)
local tp_type = tp_param:sub(15,-1)
local f_line = conf:read('*l')
local ch_list = {}
local index = 1
local cam = {}
local cam_index = 0
while f_line do
	local pos = f_line:find('\t')
	local pos1 = f_line:find('\t',pos+1)
	local pos2 = f_line:find('\t',pos1+1)
	local pos3 = f_line:find('\t',pos2+1)
	local pos4 = f_line:find('\t',pos3+1)
	local cam_port = f_line:sub(pos2+1,pos3-1)
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
		ch_list[index].port = f_line:sub(pos4+1,-1)
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
	local ch_var = '{name="'..ch_list[i].name..'",'..'input={"dvb://adapter_1#pnr='..ch_list[i].pnr..'&cam=reader_'..ch_list[i].cam
	ch_var = ch_var .. '"},output={"udp://ens1f0@'..ch_list[i].mcast..':'..ch_list[i].port..'"},pnr="'..ch_list[i].pnr..'",'
	ch_var = ch_var .. 'udp_input={localaddr="127.0.0.1",addr="'..ch_list[i].mcast..'",port="'..ch_list[i].port..'"}},'
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

