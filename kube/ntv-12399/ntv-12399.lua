sat_type = "S2"
sat_name = "ntv"
tp = "12399:R:27500"
tp_fr = "12399"
mac = "00:22:AB:91:CC:FB"
lnb = "10750:10750:10750"

-- 6 channels:
channels = {
{name="Kinopremyera-HD",input={"dvb://adapter_1#pnr=12101&set_pnr=10070&cam=reader_6771"},output={"udp://ens1f0@239.192.42.1:2121"},map="video=33,audio=321",pnr="12101",udp_input={localaddr="172.17.168.11",addr="239.192.42.1",port="2121"}},
{name="Match!-Igra-HD",input={"dvb://adapter_1#pnr=12102&set_pnr=10120&cam=reader_10010"},output={"udp://ens1f0@239.192.42.2:2121"},map="video=322,audio=422",pnr="12102",udp_input={localaddr="172.17.168.11",addr="239.192.42.2",port="2121"}},
{name="HDL",input={"dvb://adapter_1#pnr=12103&set_pnr=2501&cam=reader_10010"},output={"udp://ens1f0@239.192.42.3:2121"},map="video=323,audio=403",pnr="12103",udp_input={localaddr="172.17.168.11",addr="239.192.42.3",port="2121"}},
{name="Match!-Arena-HD",input={"dvb://adapter_1#pnr=12104&set_pnr=10760&cam=reader_10010"},output={"udp://ens1f0@239.192.42.4:2121"},map="video=1076,audio=1805",pnr="12104",udp_input={localaddr="172.17.168.11",addr="239.192.42.4",port="2121"}},
{name="KHL-TV-HD",input={"dvb://adapter_1#pnr=12106&set_pnr=12090&cam=reader_10010"},output={"udp://ens1f0@239.192.42.6:2121"},map="video=1209,audio=1809",pnr="12106",udp_input={localaddr="172.17.168.11",addr="239.192.42.6",port="2121"}},
}

reader_6771 = newcamd({
 name = "Reader #6771",
 host = "172.17.166.18",
 port = 6771,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
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
 reader_6771=reader_6771,
 reader_10010=reader_10010,
 reader_6776=reader_6776,
}
