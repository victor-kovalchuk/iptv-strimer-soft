sat_type = "S"
sat_name = "ntv"
tp = "12265:L:27500"
tp_fr = "12265"
mac = "00:22:AB:91:CD:44"
lnb = "10750:10750:10750"

-- 14 channels:
channels = {
{name="Rossiya-1-SD",input={"dvb://adapter_1#pnr=1001&cam=reader_10007"},output={"udp://ens1f0@239.192.34.1:2121"},pnr="1001",udp_input={localaddr="172.17.168.11",addr="239.192.34.1",port="2121"}},
{name="Match!",input={"dvb://adapter_1#pnr=1002&cam=reader_6772"},output={"udp://ens1f0@239.192.34.2:2121"},pnr="1002",udp_input={localaddr="172.17.168.11",addr="239.192.34.2",port="2121"}},
{name="5-Kanal",input={"dvb://adapter_1#pnr=1003&cam=reader_6773"},output={"udp://ens1f0@239.192.34.3:2121"},pnr="1003",udp_input={localaddr="172.17.168.11",addr="239.192.34.3",port="2121"}},
{name="REN-TV",input={"dvb://adapter_1#pnr=1004&cam=reader_6773"},output={"udp://ens1f0@239.192.34.4:2121"},pnr="1004",udp_input={localaddr="172.17.168.11",addr="239.192.34.4",port="2121"}},
{name="Rossiya-K",input={"dvb://adapter_1#pnr=1005&cam=reader_6774"},output={"udp://ens1f0@239.192.34.5:2121"},pnr="1005",udp_input={localaddr="172.17.168.11",addr="239.192.34.5",port="2121"}},
{name="Rossiya-24",input={"dvb://adapter_1#pnr=1006&cam=reader_6774"},output={"udp://ens1f0@239.192.34.6:2121"},pnr="1006",udp_input={localaddr="172.17.168.11",addr="239.192.34.6",port="2121"}},
{name="Telekanal-Spas",input={"dvb://adapter_1#pnr=1007&cam=reader_6775"},output={"udp://ens1f0@239.192.34.7:2121"},pnr="1007",udp_input={localaddr="172.17.168.11",addr="239.192.34.7",port="2121"}},
{name="TV-3",input={"dvb://adapter_1#pnr=1008&cam=reader_6775"},output={"udp://ens1f0@239.192.34.8:2121"},pnr="1008",udp_input={localaddr="172.17.168.11",addr="239.192.34.8",port="2121"}},
{name="Pyatnitsa!",input={"dvb://adapter_1#pnr=1009&cam=reader_10004"},output={"udp://ens1f0@239.192.34.9:2121"},pnr="1009",udp_input={localaddr="172.17.168.11",addr="239.192.34.9",port="2121"}},
{name="Mir",input={"dvb://adapter_1#pnr=1010&cam=reader_6771"},output={"udp://ens1f0@239.192.34.10:2121"},pnr="1010",udp_input={localaddr="172.17.168.11",addr="239.192.34.10",port="2121"}},
{name="Shopping-Live",input={"dvb://adapter_1#pnr=1011&cam=reader_10007"},output={"udp://ens1f0@239.192.34.11:2121"},pnr="1011",udp_input={localaddr="172.17.168.11",addr="239.192.34.11",port="2121"}},
{name="Leomax-24",input={"dvb://adapter_1#pnr=1012&cam=reader_10008"},output={"udp://ens1f0@239.192.34.12:2121"},pnr="1012",udp_input={localaddr="172.17.168.11",addr="239.192.34.12",port="2121"}},
{name="Pobeda",input={"dvb://adapter_1#pnr=1015&cam=reader_10005"},output={"udp://ens1f0@239.192.34.15:2121"},pnr="1015",udp_input={localaddr="172.17.168.11",addr="239.192.34.15",port="2121"}},
{name="France-24-English",input={"dvb://adapter_1#pnr=1016&cam=reader_10005"},output={"udp://ens1f0@239.192.34.16:2121"},pnr="1016",udp_input={localaddr="172.17.168.11",addr="239.192.34.16",port="2121"}},
}

reader_10007 = newcamd({
 name = "Reader #10007",
 host = "172.17.166.18",
 port = 10007,
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
reader_6774 = newcamd({
 name = "Reader #6774",
 host = "172.17.166.18",
 port = 6774,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6775 = newcamd({
 name = "Reader #6775",
 host = "172.17.166.18",
 port = 6775,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_10004 = newcamd({
 name = "Reader #10004",
 host = "172.17.166.18",
 port = 10004,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6771 = newcamd({
 name = "Reader #6771",
 host = "172.17.166.18",
 port = 6771,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_10008 = newcamd({
 name = "Reader #10008",
 host = "172.17.166.18",
 port = 10008,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_10005 = newcamd({
 name = "Reader #10005",
 host = "172.17.166.18",
 port = 10005,
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
 reader_10007=reader_10007,
 reader_6772=reader_6772,
 reader_6773=reader_6773,
 reader_6774=reader_6774,
 reader_6775=reader_6775,
 reader_10004=reader_10004,
 reader_6771=reader_6771,
 reader_10008=reader_10008,
 reader_10005=reader_10005,
}
