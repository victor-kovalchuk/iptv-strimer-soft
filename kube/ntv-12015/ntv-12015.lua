sat_type = "S2"
sat_name = "ntv"
tp = "12015:R:27500"
tp_fr = "12015"
mac = "00:22:AB:91:CC:F8"
lnb = "10750:10750:10750"

-- 7 channels:
channels = {
{name="NTV-HD",input={"dvb://adapter_1#pnr=2201&set_pnr=12250&cam=reader_6770"},output={"udp://ens1f0@239.192.28.1:2121#sync"},map="video=201,audio=301",pnr="2201",udp_input={localaddr="172.17.168.11",addr="239.192.28.1",port="2121"}},
{name="Konniy-Mir",input={"dvb://adapter_1#pnr=2203&cam=reader_10003"},output={"udp://ens1f0@239.192.28.3:2121#sync"},pnr="2203",udp_input={localaddr="172.17.168.11",addr="239.192.28.3",port="2121"}},
{name="Match!",input={"dvb://adapter_1#pnr=2204&cam=reader_10003"},output={"udp://ens1f0@239.192.28.4:2121#sync"},pnr="2204",udp_input={localaddr="172.17.168.11",addr="239.192.28.4",port="2121"}},
{name="Dom-Kino-Premium-HD",input={"dvb://adapter_1#pnr=2205&set_pnr=12150&cam=reader_6768"},output={"udp://ens1f0@239.192.28.5:2121#sync"},map="video=205,audio=305",pnr="2205",udp_input={localaddr="172.17.168.11",addr="239.192.28.5",port="2121"}},
{name="Bridge-TV-Deluxe",input={"dvb://adapter_1#pnr=2206&set_pnr=7041&cam=reader_6773"},output={"udp://ens1f0@239.192.28.6:2121#sync"},map="video=7041,audio=8041",pnr="2206",udp_input={localaddr="172.17.168.11",addr="239.192.28.6",port="2121"}},
{name="TNT-HD",input={"dvb://adapter_1#pnr=2207&set_pnr=12240&cam=reader_6770"},output={"udp://ens1f0@239.192.28.7:2121#sync"},map="video=207,audio=307",pnr="2207",udp_input={localaddr="172.17.168.11",addr="239.192.28.7",port="2121"}},
{name="Rossiya-1-HD",input={"dvb://adapter_1#pnr=2208&set_pnr=11010&cam=reader_10003"},output={"udp://ens1f0@239.192.28.8:2121#sync"},map="video=1101,audio=1901",pnr="2208",udp_input={localaddr="172.17.168.11",addr="239.192.28.8",port="2121"}},
}

reader_6770 = newcamd({
 name = "Reader #6770",
 host = "172.17.166.18",
 port = 6770,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_10003 = newcamd({
 name = "Reader #10003",
 host = "172.17.166.18",
 port = 10003,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6768 = newcamd({
 name = "Reader #6768",
 host = "172.17.166.18",
 port = 6768,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6773 = newcamd({
 name = "Reader #6773",
 host = "172.17.166.18",
 port = 6773,
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
 reader_6770=reader_6770,
 reader_10003=reader_10003,
 reader_6768=reader_6768,
 reader_6773=reader_6773,
}
