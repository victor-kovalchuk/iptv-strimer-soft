sat_type = "S2"
sat_name = "ntv"
tp = "12284:R:27500"
tp_fr = "12284"
mac = "00:22:AB:91:CC:F9"
lnb = "10750:10750:10750"

-- 15 channels:
channels = {
{name="Discovery-Channel-Rossiya",input={"dvb://adapter_1#pnr=803&cam=reader_10005"},output={"udp://ens1f0@239.192.36.3:2121"},pnr="803",udp_input={localaddr="172.17.168.11",addr="239.192.36.3",port="2121"}},
{name="NST",input={"dvb://adapter_1#pnr=804&cam=reader_6768"},output={"udp://ens1f0@239.192.36.4:2121"},pnr="804",udp_input={localaddr="172.17.168.11",addr="239.192.36.4",port="2121"}},
{name="Fox-Life-Russia",input={"dvb://adapter_1#pnr=806&cam=reader_6768"},output={"udp://ens1f0@239.192.36.6:2121"},pnr="806",udp_input={localaddr="172.17.168.11",addr="239.192.36.6",port="2121"}},
{name="MTV-Russia",input={"dvb://adapter_1#pnr=809&cam=reader_10005"},output={"udp://ens1f0@239.192.36.9:2121"},pnr="809",udp_input={localaddr="172.17.168.11",addr="239.192.36.9",port="2121"}},
{name="Russkiy-Illusion",input={"dvb://adapter_1#pnr=810&cam=reader_6768"},output={"udp://ens1f0@239.192.36.10:2121"},pnr="810",udp_input={localaddr="172.17.168.11",addr="239.192.36.10",port="2121"}},
{name="Illusion-+",input={"dvb://adapter_1#pnr=811&cam=reader_6768"},output={"udp://ens1f0@239.192.36.11:2121"},pnr="811",udp_input={localaddr="172.17.168.11",addr="239.192.36.11",port="2121"}},
{name="National-Geographic-Russia-SD",input={"dvb://adapter_1#pnr=813&cam=reader_10005"},output={"udp://ens1f0@239.192.36.13:2121"},pnr="813",udp_input={localaddr="172.17.168.11",addr="239.192.36.13",port="2121"}},
{name="TLC-Russia",input={"dvb://adapter_1#pnr=815&cam=reader_10005"},output={"udp://ens1f0@239.192.36.15:2121"},pnr="815",udp_input={localaddr="172.17.168.11",addr="239.192.36.15",port="2121"}},
{name="Bober",input={"dvb://adapter_1#pnr=818&cam=reader_10005"},output={"udp://ens1f0@239.192.36.18:2121"},pnr="818",udp_input={localaddr="172.17.168.11",addr="239.192.36.18",port="2121"}},
{name="Vremya",input={"dvb://adapter_1#pnr=819&cam=reader_10005"},output={"udp://ens1f0@239.192.36.19:2121"},pnr="819",udp_input={localaddr="172.17.168.11",addr="239.192.36.19",port="2121"}},
{name="Dom-Kino",input={"dvb://adapter_1#pnr=820&cam=reader_10005"},output={"udp://ens1f0@239.192.36.20:2121"},pnr="820",udp_input={localaddr="172.17.168.11",addr="239.192.36.20",port="2121"}},
{name="Karusel",input={"dvb://adapter_1#pnr=822&cam=reader_10005"},output={"udp://ens1f0@239.192.36.22:2121"},pnr="822",udp_input={localaddr="172.17.168.11",addr="239.192.36.22",port="2121"}},
{name="A1",input={"dvb://adapter_1#pnr=827&cam=reader_10005"},output={"udp://ens1f0@239.192.36.27:2121"},pnr="827",udp_input={localaddr="172.17.168.11",addr="239.192.36.27",port="2121"}},
{name="A2-(Russia)",input={"dvb://adapter_1#pnr=828&cam=reader_10005"},output={"udp://ens1f0@239.192.36.28:2121"},pnr="828",udp_input={localaddr="172.17.168.11",addr="239.192.36.28",port="2121"}},
{name="Hollywood",input={"dvb://adapter_1#pnr=831&cam=reader_10005"},output={"udp://ens1f0@239.192.36.31:2121"},pnr="831",udp_input={localaddr="172.17.168.11",addr="239.192.36.31",port="2121"}},
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
}
