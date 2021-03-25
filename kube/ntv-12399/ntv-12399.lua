sat_type = "S2"
sat_name = "ntv"
tp = "12399:R:27500"
tp_fr = "12399"
mac = "00:22:AB:91:CC:FA"
lnb = "10750:10750:10750"

-- 5 channels:
channels = {
{name="Match!-Igra-HD",input={"dvb://adapter_1#pnr=12102&cam=reader_10010"},output={"udp://ens1f0@239.192.42.2:2121"},pnr="12102",udp_input={localaddr="127.0.0.1",addr="239.192.42.2",port="2121"}},
{name="HDL",input={"dvb://adapter_1#pnr=12103&cam=reader_10010"},output={"udp://ens1f0@239.192.42.3:2121"},pnr="12103",udp_input={localaddr="127.0.0.1",addr="239.192.42.3",port="2121"}},
{name="Match!-Arena-HD",input={"dvb://adapter_1#pnr=12104&cam=reader_10010"},output={"udp://ens1f0@239.192.42.4:2121"},pnr="12104",udp_input={localaddr="127.0.0.1",addr="239.192.42.4",port="2121"}},
{name="KHL-TV-HD",input={"dvb://adapter_1#pnr=12106&cam=reader_10010"},output={"udp://ens1f0@239.192.42.6:2121"},pnr="12106",udp_input={localaddr="127.0.0.1",addr="239.192.42.6",port="2121"}},
{name="Sony-Channel-Russia",input={"dvb://adapter_1#pnr=12107&cam=reader_6776"},output={"udp://ens1f0@239.192.42.7:2121"},pnr="12107",udp_input={localaddr="127.0.0.1",addr="239.192.42.7",port="2121"}},
}

reader_10010 = newcamd({
 name = "Reader #10010",
 host = "172.17.166.18",
 port = 10010,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6776 = newcamd({
 name = "Reader #6776",
 host = "172.17.166.18",
 port = 6776,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})

return {
 sat_type=sat_type,
 sat_name=sat_name,
 tp=tp,
 tp_fr=tp_fr,
 mac=mac,
 lnb=lnb,
 channels=channels,
 reader_10010=reader_10010,
 reader_6776=reader_6776,
}
