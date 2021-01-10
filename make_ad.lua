#!/usr/local/bin/lua
local base_lua = io.open('base.lua','r')
if not base_lua then
	print ('Error: <base.lua> not found')
	do return end
end
if not arg[1] then
	print ('Usage: '..arg[0]..' <input filename>.')
	do return end
end
repeat
	local base_line = base_lua:read('*l')
	print (base_line or '')
until not base_line
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
		ch_list[index].name = f_line:sub(1,pos)
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

print ('local sat_type = "'..tp_type..'"')
print ('local sat_name = "telekarta"')
print ('local tp = "'..tp_all..'"')
print ('local tp_fr = "'..tp_fr..'"')
print ('local mac = "'..mac..'"')
print ('local lnb = "10750:10750:10750"')
print ('')
print ('-- '..(index-1)..' channels:')
print ('local channels = {')
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
	print ('\tname = "Reader #'..cam[i]..'",')
	print ('\thost = "172.17.166.18",')
	print ('\tport = '..cam[i]..',')
	print ('\tuser = "root",')
	print ('\tpass = "root",')
	print ('\tkey = "0102030405060708091011121314",')
	print ('})')
end

local pr_list = [===[
function send_monitor(content)
	http_request({
		host = "127.0.0.1",
		path = "/",
		method = "POST",
		content = content,
		port = 80,
		headers = {
			"User-Agent: Astra v." .. astra.version,
			"Host: astra_test",
			"Content-Type: application/octet-stream",
			"Content-Length: " .. #content,
			"Connection: close",
		},
		callback = function(a,b)
		end
	})
end

local t_tune = {}
t_tune.type = sat_type
t_tune.mac = mac
t_tune.lnb = lnb
t_tune.tp = tp
t_tune.callback = function(data)
                local sat_param = '{"sat_param":{"sat_name":'..sat_name..',"tp_fr":'..tp_fr..','
		sat_param = sat_param..'"ber":'..(data.ber or -1)..','
		sat_param = sat_param..'"unc":'..(data.unc or -1)..','
		local snr = data.snr
		if snr then
			snr = math.floor(snr/655)
		end
		sat_param = sat_param..'"snr":'..(snr or -1)..','
		local signal = data.signal
		if signal then
			signal = math.floor(signal/655)
		end
		sat_param = sat_param..'"signal":'..(signal or -1)..'}}'
		send_monitor(sat_param)
        end

adapter_1 = dvb_tune(t_tune)

reader_0 = newcamd({
	name = "Reader #0",
	host = "172.17.166.18",
	port = 6767,
	user = "root",
	pass = "root",
	key = "0102030405060708091011121314",
})

_an = {}

for q,item in pairs(channels)do
  make_channel(item)
  _an[q] = {i = {}, a = {}}
  _an[q].i = udp_input(item.udp_input)
  _an[q].a = analyze({
        upstream = _an[q].i:stream(),
        name = "_" .. item.name,
        callback = function(data)
                local a_array = {}
                if data.total then
                        for k,v in pairs (data.total) do
                                a_array[k] = v
                        end
                end
		local udp_param = '{"udp_param":{"sat_name":'..sat_name..',"tp_fr":'..tp_fr..',"pnr":'..item.pnr..',"pr_name":"'..item.name..'",'
		udp_param = udp_param..'"scrambled":'..(a_array.scrambled and '1' or '0')..','
		udp_param = udp_param..'"bitrate":'..(a_array.bitrate or '0')..','
		udp_param = udp_param..'"pes_errors":'..(a_array.pes_errors or '0')..','
		udp_param = udp_param..'"cc_errors":'..(a_array.cc_errors or '0')..'}}'
		send_monitor(udp_param)
        end
  })
end
]===]

print (pr_list)

