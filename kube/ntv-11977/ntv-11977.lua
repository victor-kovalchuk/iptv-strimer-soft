sat_type = "S2"
sat_name = "ntv"
tp = "11977:R:27500"
tp_fr = "11977"
mac = "00:22:AB:92:90:55"
lnb = "10750:10750:10750"

-- 19 channels:
channels = {
{name="NTV+2",input={"dvb://adapter_1#pnr=1802&cam=reader_10002"},output={"udp://ens1f0@239.192.26.2:2121"},pnr="1802",udp_input={localaddr="127.0.0.1",addr="239.192.26.2",port="2121"}},
{name="TV-Centr-Ural+2",input={"dvb://adapter_1#pnr=1803&cam=reader_10002"},output={"udp://ens1f0@239.192.26.3:2121"},pnr="1803",udp_input={localaddr="127.0.0.1",addr="239.192.26.3",port="2121"}},
{name="TNT+2",input={"dvb://adapter_1#pnr=1804&cam=reader_10002"},output={"udp://ens1f0@239.192.26.4:2121"},pnr="1804",udp_input={localaddr="127.0.0.1",addr="239.192.26.4",port="2121"}},
{name="TV-Centr",input={"dvb://adapter_1#pnr=1805&cam=reader_6769"},output={"udp://ens1f0@239.192.26.5:2121"},pnr="1805",udp_input={localaddr="127.0.0.1",addr="239.192.26.5",port="2121"}},
{name="BelRos",input={"dvb://adapter_1#pnr=1807&cam=reader_6769"},output={"udp://ens1f0@239.192.26.7:2121"},pnr="1807",udp_input={localaddr="127.0.0.1",addr="239.192.26.7",port="2121"}},
{name="Okhota-i-Rybalka",input={"dvb://adapter_1#pnr=1808&cam=reader_10002"},output={"udp://ens1f0@239.192.26.8:2121"},pnr="1808",udp_input={localaddr="127.0.0.1",addr="239.192.26.8",port="2121"}},
{name="Ru-TV",input={"dvb://adapter_1#pnr=1812&cam=reader_10002"},output={"udp://ens1f0@239.192.26.11:2121"},pnr="1812",udp_input={localaddr="127.0.0.1",addr="239.192.26.11",port="2121"}},
{name="Evrokino",input={"dvb://adapter_1#pnr=1813&cam=reader_6768"},output={"udp://ens1f0@239.192.26.12:2121"},pnr="1813",udp_input={localaddr="127.0.0.1",addr="239.192.26.12",port="2121"}},
{name="Travel-+-Adventure",input={"dvb://adapter_1#pnr=1814&cam=reader_10002"},output={"udp://ens1f0@239.192.26.13:2121"},pnr="1814",udp_input={localaddr="127.0.0.1",addr="239.192.26.13",port="2121"}},
{name="RT-News",input={"dvb://adapter_1#pnr=1815&cam=reader_10002"},output={"udp://ens1f0@239.192.26.14:2121"},pnr="1815",udp_input={localaddr="127.0.0.1",addr="239.192.26.14",port="2121"}},
{name="Juvelirochka",input={"dvb://adapter_1#pnr=1817&cam=reader_6769"},output={"udp://ens1f0@239.192.26.16:2121"},pnr="1817",udp_input={localaddr="127.0.0.1",addr="239.192.26.16",port="2121"}},
{name="TNT-4",input={"dvb://adapter_1#pnr=1820&cam=reader_10002"},output={"udp://ens1f0@239.192.26.19:2121"},pnr="1820",udp_input={localaddr="127.0.0.1",addr="239.192.26.19",port="2121"}},
{name="Bridge-TV",input={"dvb://adapter_1#pnr=1821&cam=reader_10002"},output={"udp://ens1f0@239.192.26.20:2121"},pnr="1821",udp_input={localaddr="127.0.0.1",addr="239.192.26.20",port="2121"}},
{name="Mir-24",input={"dvb://adapter_1#pnr=1823&cam=reader_10002"},output={"udp://ens1f0@239.192.26.22:2121"},pnr="1823",udp_input={localaddr="127.0.0.1",addr="239.192.26.22",port="2121"}},
{name="8-Kanal",input={"dvb://adapter_1#pnr=1824&cam=reader_10002"},output={"udp://ens1f0@239.192.26.23:2121"},pnr="1824",udp_input={localaddr="127.0.0.1",addr="239.192.26.23",port="2121"}},
{name="Sankt-Peterburg",input={"dvb://adapter_1#pnr=1825&cam=reader_6769"},output={"udp://ens1f0@239.192.26.24:2121"},pnr="1825",udp_input={localaddr="127.0.0.1",addr="239.192.26.24",port="2121"}},
{name="Telekanal-2x2",input={"dvb://adapter_1#pnr=1826&cam=reader_10002"},output={"udp://ens1f0@239.192.26.25:2121"},pnr="1826",udp_input={localaddr="127.0.0.1",addr="239.192.26.25",port="2121"}},
{name="Moskva-24",input={"dvb://adapter_1#pnr=1827&cam=reader_10002"},output={"udp://ens1f0@239.192.26.26:2121"},pnr="1827",udp_input={localaddr="127.0.0.1",addr="239.192.26.26",port="2121"}},
{name="Home-Shopping-Russia",input={"dvb://adapter_1#pnr=1828&cam=reader_10002"},output={"udp://ens1f0@239.192.26.27:2121"},pnr="1828",udp_input={localaddr="127.0.0.1",addr="239.192.26.27",port="2121"}},
}

reader_10002 = newcamd({
 name = "Reader #10002",
 host = "172.17.166.18",
 port = 10002,
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

return {
 sat_type=sat_type,
 sat_name=sat_name,
 tp=tp,
 tp_fr=tp_fr,
 mac=mac,
 lnb=lnb,
 channels=channels,
 reader_10002=reader_10002,
 reader_6769=reader_6769,
 reader_6768=reader_6768,
}
