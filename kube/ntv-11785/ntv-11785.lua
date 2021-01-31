sat_type = "S2"
sat_name = "ntv"
tp = "11785:R:27500"
tp_fr = "11785"
mac = "00:22:AB:92:90:50"
lnb = "10750:10750:10750"

-- 10 channels:
channels = {
{name="OTR	",input={"dvb://adapter_1#pnr=1308&cam=reader_6769"},output={"udp://ens1f0@239.192.16.8:2121"},pnr="1308",udp_input={localaddr="127.0.0.1",addr="239.192.16.8",port="2121"}},
{name="Kinouzhas	",input={"dvb://adapter_1#pnr=1309&cam=reader_6768"},output={"udp://ens1f0@239.192.16.9:2121"},pnr="1309",udp_input={localaddr="127.0.0.1",addr="239.192.16.9",port="2121"}},
{name="Telekanal Zvezda	",input={"dvb://adapter_1#pnr=1311&cam=reader_6769"},output={"udp://ens1f0@239.192.16.11:2121"},pnr="1311",udp_input={localaddr="127.0.0.1",addr="239.192.16.11",port="2121"}},
{name="Kanal Disney (0h)	",input={"dvb://adapter_1#pnr=1312&cam=reader_6769"},output={"udp://ens1f0@239.192.16.12:2121"},pnr="1312",udp_input={localaddr="127.0.0.1",addr="239.192.16.12",port="2121"}},
{name="Muz TV (Russia)	",input={"dvb://adapter_1#pnr=1313&cam=reader_6769"},output={"udp://ens1f0@239.192.16.13:2121"},pnr="1313",udp_input={localaddr="127.0.0.1",addr="239.192.16.13",port="2121"}},
{name="NTV SD	",input={"dvb://adapter_1#pnr=1315&cam=reader_6769"},output={"udp://ens1f0@239.192.16.15:2121"},pnr="1315",udp_input={localaddr="127.0.0.1",addr="239.192.16.15",port="2121"}},
{name="Telekanal 360°	",input={"dvb://adapter_1#pnr=1316&cam=reader_6769"},output={"udp://ens1f0@239.192.16.16:2121"},pnr="1316",udp_input={localaddr="127.0.0.1",addr="239.192.16.16",port="2121"}},
{name="TNT	",input={"dvb://adapter_1#pnr=1319&cam=reader_6769"},output={"udp://ens1f0@239.192.16.19:2121"},pnr="1319",udp_input={localaddr="127.0.0.1",addr="239.192.16.19",port="2121"}},
{name="U	",input={"dvb://adapter_1#pnr=1320&cam=reader_6769"},output={"udp://ens1f0@239.192.16.20:2121"},pnr="1320",udp_input={localaddr="127.0.0.1",addr="239.192.16.20",port="2121"}},
{name="Super	",input={"dvb://adapter_1#pnr=1321&cam=reader_6767"},output={"udp://ens1f0@239.192.16.21:2121"},pnr="1321",udp_input={localaddr="127.0.0.1",addr="239.192.16.21",port="2121"}},
}

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
  reader_6769=reader_6769,
  reader_6768=reader_6768,
  reader_6767=reader_6767,
}
