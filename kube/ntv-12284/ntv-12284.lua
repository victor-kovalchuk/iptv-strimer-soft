sat_type = "S2"
sat_name = "ntv"
tp = "12284:R:27500"
tp_fr = "12284"
mac = "00:22:AB:91:CC:F9"
lnb = "10750:10750:10750"

-- 20 channels:
channels = {
{name="Discovery-Channel-Rossiya",input={"dvb://adapter_1#pnr=803&set_pnr=409&cam=reader_10005"},output={"udp://ens1f0@239.192.36.3:2121#sync"},map="video=140,audio=1921",pnr="803",udp_input={localaddr="172.17.168.11",addr="239.192.36.3",port="2121"}},
{name="NST",input={"dvb://adapter_1#pnr=804&cam=reader_6768"},output={"udp://ens1f0@239.192.36.4:2121#sync"},pnr="804",udp_input={localaddr="172.17.168.11",addr="239.192.36.4",port="2121"}},
{name="Poehali!",input={"dvb://adapter_1#pnr=805&set_pnr=7037&cam=reader_6772"},output={"udp://ens1f0@239.192.36.5:2121#sync"},map="video=7037,audio=8037",pnr="805",udp_input={localaddr="172.17.168.11",addr="239.192.36.5",port="2121"}},
{name="Fox-Life-Russia",input={"dvb://adapter_1#pnr=806&set_pnr=811&cam=reader_6768"},output={"udp://ens1f0@239.192.36.6:2121#sync"},map="video=192,audio=206",pnr="806",udp_input={localaddr="172.17.168.11",addr="239.192.36.6",port="2121"}},
{name="MTV-Russia",input={"dvb://adapter_1#pnr=809&cam=reader_10005"},output={"udp://ens1f0@239.192.36.9:2121#sync"},pnr="809",udp_input={localaddr="172.17.168.11",addr="239.192.36.9",port="2121"}},
{name="Russkiy-Illusion",input={"dvb://adapter_1#pnr=810&set_pnr=10780&cam=reader_6768"},output={"udp://ens1f0@239.192.36.10:2121#sync"},map="video=1078,audio=3321",pnr="810",udp_input={localaddr="172.17.168.11",addr="239.192.36.10",port="2121"}},
{name="Illusion-+",input={"dvb://adapter_1#pnr=811&set_pnr=1003&cam=reader_6768"},output={"udp://ens1f0@239.192.36.11:2121#sync"},map="video=1003,audio=3322",pnr="811",udp_input={localaddr="172.17.168.11",addr="239.192.36.11",port="2121"}},
{name="MTV-90s",input={"dvb://adapter_1#pnr=812&set_pnr=7040&cam=reader_6773"},output={"udp://ens1f0@239.192.36.12:2121#sync"},map="video=7040,audio=8040",pnr="812",udp_input={localaddr="172.17.168.11",addr="239.192.36.12",port="2121"}},
{name="National-Geographic-Russia-SD",input={"dvb://adapter_1#pnr=813&set_pnr=411&cam=reader_10005"},output={"udp://ens1f0@239.192.36.13:2121#sync"},map="video=150,audio=213",pnr="813",udp_input={localaddr="172.17.168.11",addr="239.192.36.13",port="2121"}},
{name="TLC-Russia",input={"dvb://adapter_1#pnr=815&cam=reader_10005"},output={"udp://ens1f0@239.192.36.15:2121#sync"},pnr="815",udp_input={localaddr="172.17.168.11",addr="239.192.36.15",port="2121"}},
{name="MTV-80s",input={"dvb://adapter_1#pnr=816&set_pnr=7039&cam=reader_6773"},output={"udp://ens1f0@239.192.36.16:2121#sync"},map="video=7039,audio=8039",pnr="816",udp_input={localaddr="172.17.168.11",addr="239.192.36.16",port="2121"}},
{name="Bober",input={"dvb://adapter_1#pnr=818&set_pnr=12410&cam=reader_10005"},output={"udp://ens1f0@239.192.36.18:2121#sync"},map="video=218,audio=318",pnr="818",udp_input={localaddr="172.17.168.11",addr="239.192.36.18",port="2121"}},
{name="Vremya",input={"dvb://adapter_1#pnr=819&cam=reader_10005"},output={"udp://ens1f0@239.192.36.19:2121#sync"},pnr="819",udp_input={localaddr="172.17.168.11",addr="239.192.36.19",port="2121"}},
{name="Dom-Kino",input={"dvb://adapter_1#pnr=820&set_pnr=801&cam=reader_10005"},output={"udp://ens1f0@239.192.36.20:2121#sync"},map="video=220,audio=320",pnr="820",udp_input={localaddr="172.17.168.11",addr="239.192.36.20",port="2121"}},
{name="Karusel",input={"dvb://adapter_1#pnr=822&set_pnr=10280&cam=reader_10005"},output={"udp://ens1f0@239.192.36.22:2121#sync"},map="video=1028,audio=1115",pnr="822",udp_input={localaddr="172.17.168.11",addr="239.192.36.22",port="2121"}},
{name="Muzika-Pervogo",input={"dvb://adapter_1#pnr=823&set_pnr=10630&cam=reader_6773"},output={"udp://ens1f0@239.192.36.23:2121#sync"},map="video=223,audio=323",pnr="823",udp_input={localaddr="172.17.168.11",addr="239.192.36.23",port="2121"}},
{name="Telecafé-(Russia)",input={"dvb://adapter_1#pnr=824&set_pnr=808&cam=reader_6772"},output={"udp://ens1f0@239.192.36.24:2121#sync"},map="video=860,audio=1429",pnr="824",udp_input={localaddr="172.17.168.11",addr="239.192.36.24",port="2121"}},
{name="A1",input={"dvb://adapter_1#pnr=827&set_pnr=11670&cam=reader_10005"},output={"udp://ens1f0@239.192.36.27:2121#sync"},map="video=1167,audio=1813",pnr="827",udp_input={localaddr="172.17.168.11",addr="239.192.36.27",port="2121"}},
{name="A2-(Russia)",input={"dvb://adapter_1#pnr=828&set_pnr=7003&cam=reader_10005"},output={"udp://ens1f0@239.192.36.28:2121#sync"},map="video=7003,audio=8003",pnr="828",udp_input={localaddr="172.17.168.11",addr="239.192.36.28",port="2121"}},
{name="Hollywood",input={"dvb://adapter_1#pnr=831&cam=reader_10005"},output={"udp://ens1f0@239.192.36.31:2121#sync"},pnr="831",udp_input={localaddr="172.17.168.11",addr="239.192.36.31",port="2121"}},
}

reader_10005 = newcamd({
 name = "Reader #10005",
 host = "172.17.166.18",
 port = 10005,
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
reader_6772 = newcamd({
 name = "Reader #6772",
 host = "172.17.166.18",
 port = 6772,
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
 reader_10005=reader_10005,
 reader_6768=reader_6768,
 reader_6772=reader_6772,
 reader_6773=reader_6773,
}
