sat_type = "S2"
sat_name = "ntv"
tp = "12322:R:27500"
tp_fr = "12322"
mac = "00:22:AB:91:CC:FB"
lnb = "10750:10750:10750"

-- 8 channels:
channels = {
{name="365 dnei TV	",input={"dvb://adapter_1#pnr=101&cam=reader_6767"},output={"udp://ens1f0@239.192.38.1:2121"},pnr="101",udp_input={localaddr="127.0.0.1",addr="239.192.38.1",port="2121"}},
{name="Kinomiks	",input={"dvb://adapter_1#pnr=105&cam=reader_6773"},output={"udp://ens1f0@239.192.38.5:2121"},pnr="105",udp_input={localaddr="127.0.0.1",addr="239.192.38.5",port="2121"}},
{name="Kinokomedija	",input={"dvb://adapter_1#pnr=108&cam=reader_6767"},output={"udp://ens1f0@239.192.38.8:2121"},pnr="108",udp_input={localaddr="127.0.0.1",addr="239.192.38.8",port="2121"}},
{name="Kuhnya TV	",input={"dvb://adapter_1#pnr=110&cam=reader_6773"},output={"udp://ens1f0@239.192.38.10:2121"},pnr="110",udp_input={localaddr="127.0.0.1",addr="239.192.38.10",port="2121"}},
{name="Kinoserija	",input={"dvb://adapter_1#pnr=113&cam=reader_6767"},output={"udp://ens1f0@239.192.38.13:2121"},pnr="113",udp_input={localaddr="127.0.0.1",addr="239.192.38.13",port="2121"}},
{name="Muzhskoe Kino	",input={"dvb://adapter_1#pnr=114&cam=reader_6776"},output={"udp://ens1f0@239.192.38.14:2121"},pnr="114",udp_input={localaddr="127.0.0.1",addr="239.192.38.14",port="2121"}},
{name="Rodnoe Kino	",input={"dvb://adapter_1#pnr=115&cam=reader_6767"},output={"udp://ens1f0@239.192.38.15:2121"},pnr="115",udp_input={localaddr="127.0.0.1",addr="239.192.38.15",port="2121"}},
{name="Nashe Novoe Kino	",input={"dvb://adapter_1#pnr=116&cam=reader_6767"},output={"udp://ens1f0@239.192.38.16:2121"},pnr="116",udp_input={localaddr="127.0.0.1",addr="239.192.38.16",port="2121"}},
}

reader_6767 = newcamd({
	name = "Reader #6767",
	host = "172.17.166.18",
	port = 6767,
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
  reader_6767=reader_6767,
  reader_6773=reader_6773,
  reader_6776=reader_6776,
}
