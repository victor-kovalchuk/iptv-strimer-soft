#!./astra

require("base")
local sat_type = 'S2'
local sat_name = '"telekarta"'
local tp_fr = '11862'	--'11760'
local tp_pol = 'H'	--'H'
local tp_sr = '27500'	--'28800'
local mac = '00:22:AB:92:90:50'
local lnb = '10750,10750,10750'
-- local mac = '00:22:AB:91:CD:40'
local channels = {
{name='Home4k',input={'dvb://adapter_1#pnr=202&cam=reader_0'},output={'udp://enp23s0f1@239.192.16.1:1234'},pnr='202',udp_input={localaddr='127.0.0.1',addr='239.192.16.1',port='1234'}}
}

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
t_tune.tp = tp_fr..':'..tp_pol..':'..tp_sr
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
--                print (sat_param)
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
--		print (udp_param)
        end
  })
end

