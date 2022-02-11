sat_type = "S2"
sat_name = "ntv"
tp = "11785:R:27500"
tp_fr = "11785"
mac = "00:22:AB:92:90:52"
lnb = "10750:10750:10750"

-- 24 channels:
channels = {
{name="Match!-Arena",input={"dvb://adapter_1#pnr=1301&cam=reader_6767"},output={"udp://ens1f0@239.192.16.1:2121#sync"},pnr="1301",udp_input={localaddr="172.17.168.11",addr="239.192.16.1",port="2121"}},
{name="Match!-Boets",input={"dvb://adapter_1#pnr=1302&set_pnr=1011&cam=reader_6767"},output={"udp://ens1f0@239.192.16.2:2121#sync"},map="video=1011,audio=1804",pnr="1302",udp_input={localaddr="172.17.168.11",addr="239.192.16.2",port="2121"}},
{name="Match!-Igra",input={"dvb://adapter_1#pnr=1303&cam=reader_6767"},output={"udp://ens1f0@239.192.16.3:2121#sync"},pnr="1303",udp_input={localaddr="172.17.168.11",addr="239.192.16.3",port="2121"}},
{name="Match!-Strana",input={"dvb://adapter_1#pnr=1304&cam=reader_6767"},output={"udp://ens1f0@239.192.16.4:2121#sync"},pnr="1304",udp_input={localaddr="172.17.168.11",addr="239.192.16.4",port="2121"}},
{name="OTR",input={"dvb://adapter_1#pnr=1308&cam=reader_6769"},output={"udp://ens1f0@239.192.16.8:2121#sync"},pnr="1308",udp_input={localaddr="172.17.168.11",addr="239.192.16.8",port="2121"}},
{name="Kinouzhas",input={"dvb://adapter_1#pnr=1309&set_pnr=7008&cam=reader_6768"},output={"udp://ens1f0@239.192.16.9:2121#sync"},map="video=7008,audio=8008",pnr="1309",udp_input={localaddr="172.17.168.11",addr="239.192.16.9",port="2121"}},
{name="Telekanal-Doktor",input={"dvb://adapter_1#pnr=1310&cam=reader_6767"},output={"udp://ens1f0@239.192.16.10:2121#sync"},pnr="1310",udp_input={localaddr="172.17.168.11",addr="239.192.16.10",port="2121"}},
{name="Telekanal-Zvezda",input={"dvb://adapter_1#pnr=1311&set_pnr=10530&cam=reader_6769"},output={"udp://ens1f0@239.192.16.11:2121#sync"},map="video=1053,audio=1104",pnr="1311",udp_input={localaddr="172.17.168.11",addr="239.192.16.11",port="2121"}},
{name="Kanal-Disney",input={"dvb://adapter_1#pnr=1312&set_pnr=701&cam=reader_6769"},output={"udp://ens1f0@239.192.16.12:2121#sync"},map="video=142,audio=2701",pnr="1312",udp_input={localaddr="172.17.168.11",addr="239.192.16.12",port="2121"}},
{name="Muz-TV-(Russia)",input={"dvb://adapter_1#pnr=1313&set_pnr=11730&cam=reader_6769"},output={"udp://ens1f0@239.192.16.13:2121#sync"},map="video=1173,audio=1713",pnr="1313",udp_input={localaddr="172.17.168.11",addr="239.192.16.13",port="2121"}},
{name="NTV",input={"dvb://adapter_1#pnr=1315&set_pnr=10510&cam=reader_6769"},output={"udp://ens1f0@239.192.16.15:2121#sync"},map="video=165,audio=1051",pnr="1315",udp_input={localaddr="172.17.168.11",addr="239.192.16.15",port="2121"}},
{name="Telekanal-360°",input={"dvb://adapter_1#pnr=1316&cam=reader_6769"},output={"udp://ens1f0@239.192.16.16:2121#sync"},pnr="1316",udp_input={localaddr="172.17.168.11",addr="239.192.16.16",port="2121"}},
{name="RBK-TV",input={"dvb://adapter_1#pnr=1317&set_pnr=11105&cam=reader_6767"},output={"udp://ens1f0@239.192.16.17:2121#sync"},map="video=429,audio=1110",pnr="1317",udp_input={localaddr="172.17.168.11",addr="239.192.16.17",port="2121"}},
{name="KHL-TV",input={"dvb://adapter_1#pnr=1318&set_pnr=1005&cam=reader_6767"},output={"udp://ens1f0@239.192.16.18:2121#sync"},map="video=1301,audio=1814",pnr="1318",udp_input={localaddr="172.17.168.11",addr="239.192.16.18",port="2121"}},
{name="TNT",input={"dvb://adapter_1#pnr=1319&set_pnr=1210&cam=reader_6769"},output={"udp://ens1f0@239.192.16.19:2121"},map="video=119,audio=1114",pnr="1319",udp_input={localaddr="172.17.168.11",addr="239.192.16.19",port="2121"}},
{name="U",input={"dvb://adapter_1#pnr=1320&set_pnr=12200&cam=reader_6769"},output={"udp://ens1f0@239.192.16.20:2121#sync"},map="video=1220,audio=1707",pnr="1320",udp_input={localaddr="172.17.168.11",addr="239.192.16.20",port="2121"}},
{name="Subbota!",input={"dvb://adapter_1#pnr=1321&cam=reader_6767"},output={"udp://ens1f0@239.192.16.21:2121#sync"},pnr="1321",udp_input={localaddr="172.17.168.11",addr="239.192.16.21",port="2121"}},
{name="World-Fashion-Channel-Russia",input={"dvb://adapter_1#pnr=1322&cam=reader_6767"},output={"udp://ens1f0@239.192.16.22:2121#sync"},pnr="1322",udp_input={localaddr="172.17.168.11",addr="239.192.16.22",port="2121"}},
{name="Shop-&-Show",input={"dvb://adapter_1#pnr=1323&cam=reader_6767"},output={"udp://ens1f0@239.192.16.23:2121#sync"},pnr="1323",udp_input={localaddr="172.17.168.11",addr="239.192.16.23",port="2121"}},
{name="TNT-Music",input={"dvb://adapter_1#pnr=1324&set_pnr=12300&cam=reader_6767"},output={"udp://ens1f0@239.192.16.24:2121#sync"},map="video=1230,audio=1709",pnr="1324",udp_input={localaddr="172.17.168.11",addr="239.192.16.24",port="2121"}},
{name="Mir-Basketbola",input={"dvb://adapter_1#pnr=1326&cam=reader_6767"},output={"udp://ens1f0@239.192.16.26:2121#sync"},pnr="1326",udp_input={localaddr="172.17.168.11",addr="239.192.16.26",port="2121"}},
{name="Avto-24",input={"dvb://adapter_1#pnr=1328&set_pnr=11840&cam=reader_10001"},output={"udp://ens1f0@239.192.16.28:2121#sync"},map="video=1184,audio=1517",pnr="1328",udp_input={localaddr="172.17.168.11",addr="239.192.16.28",port="2121"}},
{name="Eurosport-1-Rossiya",input={"dvb://adapter_1#pnr=1329&cam=reader_6767"},output={"udp://ens1f0@239.192.16.29:2121#sync"},pnr="1329",udp_input={localaddr="172.17.168.11",addr="239.192.16.29",port="2121"}},
{name="Radost-Moya",input={"dvb://adapter_1#pnr=1330&set_pnr=11090&cam=reader_10001"},output={"udp://ens1f0@239.192.16.30:2121#sync"},map="video=230,audio=330",pnr="1330",udp_input={localaddr="172.17.168.11",addr="239.192.16.30",port="2121"}},
}

reader_6767 = newcamd({
 name = "Reader #6767",
 host = "172.17.166.18",
 port = 6767,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6769 = newcamd({
 name = "Reader #6769",
 host = "172.17.166.18",
 port = 6769,
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
reader_10001 = newcamd({
 name = "Reader #10001",
 host = "172.17.166.18",
 port = 10001,
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
 reader_6767=reader_6767,
 reader_6769=reader_6769,
 reader_6768=reader_6768,
 reader_10001=reader_10001,
}
