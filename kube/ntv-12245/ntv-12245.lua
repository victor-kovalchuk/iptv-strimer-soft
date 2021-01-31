sat_type = "S2"
sat_name = "ntv"
tp = "12245:R:27500"
tp_fr = "12245"
mac = "00:22:AB:91:CC:F9"
lnb = "10750:10750:10750"

-- 15 channels:
channels = {
{name="Spike Rossiya	",input={"dvb://adapter_1#pnr=706&cam=reader_6768"},output={"udp://ens1f0@239.192.32.5:2121"},pnr="706",udp_input={localaddr="127.0.0.1",addr="239.192.32.5",port="2121"}},
{name="Zee TV Russia	",input={"dvb://adapter_1#pnr=707&cam=reader_6768"},output={"udp://ens1f0@239.192.32.6:2121"},pnr="707",udp_input={localaddr="127.0.0.1",addr="239.192.32.6",port="2121"}},
{name="Sony Sci-Fi Russia	",input={"dvb://adapter_1#pnr=711&cam=reader_6768"},output={"udp://ens1f0@239.192.32.9:2121"},pnr="711",udp_input={localaddr="127.0.0.1",addr="239.192.32.9",port="2121"}},
{name="Sony Turbo	",input={"dvb://adapter_1#pnr=712&cam=reader_6771"},output={"udp://ens1f0@239.192.32.10:2121"},pnr="712",udp_input={localaddr="127.0.0.1",addr="239.192.32.10",port="2121"}},
{name="Prodvizhenie Moskva	",input={"dvb://adapter_1#pnr=714&cam=reader_6771"},output={"udp://ens1f0@239.192.32.12:2121"},pnr="714",udp_input={localaddr="127.0.0.1",addr="239.192.32.12",port="2121"}},
{name="Zagorodnaya Zhizn	",input={"dvb://adapter_1#pnr=715&cam=reader_6771"},output={"udp://ens1f0@239.192.32.13:2121"},pnr="715",udp_input={localaddr="127.0.0.1",addr="239.192.32.13",port="2121"}},
{name="Radost Moya	",input={"dvb://adapter_1#pnr=716&cam=reader_6771"},output={"udp://ens1f0@239.192.32.14:2121"},pnr="716",udp_input={localaddr="127.0.0.1",addr="239.192.32.14",port="2121"}},
{name="Evrokino	",input={"dvb://adapter_1#pnr=717&cam=reader_6768"},output={"udp://ens1f0@239.192.32.15:2121"},pnr="717",udp_input={localaddr="127.0.0.1",addr="239.192.32.15",port="2121"}},
{name="GTRK Groznyj	",input={"dvb://adapter_1#pnr=718&cam=reader_6771"},output={"udp://ens1f0@239.192.32.16:2121"},pnr="718",udp_input={localaddr="127.0.0.1",addr="239.192.32.16",port="2121"}},
{name="Mir Seriala	",input={"dvb://adapter_1#pnr=719&cam=reader_6771"},output={"udp://ens1f0@239.192.32.17:2121"},pnr="719",udp_input={localaddr="127.0.0.1",addr="239.192.32.17",port="2121"}},
{name="Illusion +	",input={"dvb://adapter_1#pnr=721&cam=reader_6768"},output={"udp://ens1f0@239.192.32.19:2121"},pnr="721",udp_input={localaddr="127.0.0.1",addr="239.192.32.19",port="2121"}},
{name="Lubimoe Kino	",input={"dvb://adapter_1#pnr=722&cam=reader_6767"},output={"udp://ens1f0@239.192.32.20:2121"},pnr="722",udp_input={localaddr="127.0.0.1",addr="239.192.32.20",port="2121"}},
{name="Flix Snip	",input={"dvb://adapter_1#pnr=723&cam=reader_6768"},output={"udp://ens1f0@239.192.32.21:2121"},pnr="723",udp_input={localaddr="127.0.0.1",addr="239.192.32.21",port="2121"}},
{name="Shanson TV	",input={"dvb://adapter_1#pnr=724&cam=reader_6771"},output={"udp://ens1f0@239.192.32.22:2121"},pnr="724",udp_input={localaddr="127.0.0.1",addr="239.192.32.22",port="2121"}},
{name="Russkiy Illusion	",input={"dvb://adapter_1#pnr=728&cam=reader_6768"},output={"udp://ens1f0@239.192.32.26:2121"},pnr="728",udp_input={localaddr="127.0.0.1",addr="239.192.32.26",port="2121"}},
}

reader_6768 = newcamd({
	name = "Reader #6768",
	host = "172.17.166.18",
	port = 6768,
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
  reader_6768=reader_6768,
  reader_6771=reader_6771,
  reader_6767=reader_6767,
}
