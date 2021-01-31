sat_type = "S2"
sat_name = "ntv"
tp = "11823:R:27500"
tp_fr = "11823"
mac = "00:22:AB:92:90:51"
lnb = "10750:10750:10750"

-- 1 channels:
channels = {
{name="Perviy kanal HD	",input={"dvb://adapter_1#pnr=1408&cam=reader_6769"},output={"udp://ens1f0@239.192.18.5:2121"},pnr="1408",udp_input={localaddr="127.0.0.1",addr="239.192.18.5",port="2121"}},
}

reader_6769 = newcamd({
	name = "Reader #6769",
	host = "172.17.166.18",
	port = 6769,
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
}
