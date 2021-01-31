sat_type = "S2"
sat_name = "ntv"
tp = "11977:R:27500"
tp_fr = "11977"
mac = "00:22:AB:92:90:55"
lnb = "10750:10750:10750"

-- 11 channels:
channels = {
{name="NTV (+2h)	",input={"dvb://adapter_1#pnr=1802&cam=reader_6770"},output={"udp://ens1f0@239.192.26.2:2121"},pnr="1802",udp_input={localaddr="127.0.0.1",addr="239.192.26.2",port="2121"}},
{name="TV Centr Ural	",input={"dvb://adapter_1#pnr=1803&cam=reader_6770"},output={"udp://ens1f0@239.192.26.3:2121"},pnr="1803",udp_input={localaddr="127.0.0.1",addr="239.192.26.3",port="2121"}},
{name="TNT (+2h)	",input={"dvb://adapter_1#pnr=1804&cam=reader_6770"},output={"udp://ens1f0@239.192.26.4:2121"},pnr="1804",udp_input={localaddr="127.0.0.1",addr="239.192.26.4",port="2121"}},
{name="TV Centr	",input={"dvb://adapter_1#pnr=1805&cam=reader_6770"},output={"udp://ens1f0@239.192.26.5:2121"},pnr="1805",udp_input={localaddr="127.0.0.1",addr="239.192.26.5",port="2121"}},
{name="BelRos	",input={"dvb://adapter_1#pnr=1807&cam=reader_6770"},output={"udp://ens1f0@239.192.26.6:2121"},pnr="1807",udp_input={localaddr="127.0.0.1",addr="239.192.26.6",port="2121"}},
{name="Astrakhan 24	",input={"dvb://adapter_1#pnr=1810&cam=reader_6770"},output={"udp://ens1f0@239.192.26.8:2121"},pnr="1810",udp_input={localaddr="127.0.0.1",addr="239.192.26.8",port="2121"}},
{name="Juvelirochka	",input={"dvb://adapter_1#pnr=1817&cam=reader_6770"},output={"udp://ens1f0@239.192.26.15:2121"},pnr="1817",udp_input={localaddr="127.0.0.1",addr="239.192.26.15",port="2121"}},
{name="TNT 4	",input={"dvb://adapter_1#pnr=1820&cam=reader_6767"},output={"udp://ens1f0@239.192.26.18:2121"},pnr="1820",udp_input={localaddr="127.0.0.1",addr="239.192.26.18",port="2121"}},
{name="Sankt Peterburg	",input={"dvb://adapter_1#pnr=1825&cam=reader_6770"},output={"udp://ens1f0@239.192.26.23:2121"},pnr="1825",udp_input={localaddr="127.0.0.1",addr="239.192.26.23",port="2121"}},
{name="Moskva 24	",input={"dvb://adapter_1#pnr=1827&cam=reader_6770"},output={"udp://ens1f0@239.192.26.25:2121"},pnr="1827",udp_input={localaddr="127.0.0.1",addr="239.192.26.25",port="2121"}},
{name="Prosveshenie	",input={"dvb://adapter_1#pnr=1829&cam=reader_6770"},output={"udp://ens1f0@239.192.26.26:2121"},pnr="1829",udp_input={localaddr="127.0.0.1",addr="239.192.26.26",port="2121"}},
}

reader_6770 = newcamd({
	name = "Reader #6770",
	host = "172.17.166.18",
	port = 6770,
	user = "root",
	pass = "root",
	key = "0102030405060708091011121314",
})
reader_6767 = newcamd({
	name = "Reader #6767",
	host = "172.17.166.18",
	port = 6767,
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
  reader_6767=reader_6767,
}
