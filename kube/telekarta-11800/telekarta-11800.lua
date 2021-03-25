sat_type = "S2"
sat_name = "telekarta"
tp = "11800:H:28800"
tp_fr = "11800"
mac = "00:22:AB:92:8F:FB"
lnb = "9750:10600:11700"

-- 10 channels:
channels = {
{name="Stingray-Iconcerts",input={"dvb://adapter_1#pnr=1404&cam=reader_10011"},output={"udp://ens1f0@239.192.72.4:2121"},pnr="1404",udp_input={localaddr="127.0.0.1",addr="239.192.72.4",port="2121"}},
{name="Glazami-Turista",input={"dvb://adapter_1#pnr=1405&cam=reader_10011"},output={"udp://ens1f0@239.192.72.5:2121"},pnr="1405",udp_input={localaddr="127.0.0.1",addr="239.192.72.5",port="2121"}},
{name="Zhivaya-Priroda",input={"dvb://adapter_1#pnr=1406&cam=reader_10011"},output={"udp://ens1f0@239.192.72.6:2121"},pnr="1406",udp_input={localaddr="127.0.0.1",addr="239.192.72.6",port="2121"}},
{name="Kino-TV",input={"dvb://adapter_1#pnr=1408&cam=reader_10011"},output={"udp://ens1f0@239.192.72.8:2121"},pnr="1408",udp_input={localaddr="127.0.0.1",addr="239.192.72.8",port="2121"}},
{name="Tlum",input={"dvb://adapter_1#pnr=1409&cam=reader_10011"},output={"udp://ens1f0@239.192.72.9:2121"},pnr="1409",udp_input={localaddr="127.0.0.1",addr="239.192.72.9",port="2121"}},
}

reader_10011 = newcamd({
 name = "Reader #10011",
 host = "172.17.166.18",
 port = 10011,
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
 reader_10011=reader_10011,
}
