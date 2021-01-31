sat_type = "S2"
sat_name = "ntv"
tp = "12399:R:27500"
tp_fr = "12399"
mac = "00:22:AB:91:CC:FC"
lnb = "10750:10750:10750"

-- 1 channels:
channels = {
{name="Sony Channel Russia	",input={"dvb://adapter_1#pnr=12107&cam=reader_6776"},output={"udp://ens1f0@239.192.42.7:2121"},pnr="12107",udp_input={localaddr="127.0.0.1",addr="239.192.42.7",port="2121"}},
}

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
  reader_6776=reader_6776,
}
