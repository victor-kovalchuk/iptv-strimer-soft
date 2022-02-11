sat_type = "S2"
sat_name = "ntv"
tp = "12399:R:27500"
tp_fr = "12399"
mac = "00:22:AB:91:CC:FB"
lnb = "10750:10750:10750"

-- 6 channels:
channels = {
{name="Kinopremyera-HD",input={"dvb://adapter_1#pnr=12101&set_pnr=10070&cam=reader_6771"},output={"udp://ens1f0@239.192.42.1:2121"},map="video=33,audio=321",pnr="12101",udp_input={localaddr="172.17.168.11",addr="239.192.42.1",port="2121"}},
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
