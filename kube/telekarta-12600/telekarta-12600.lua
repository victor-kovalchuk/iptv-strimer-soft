sat_type = "S"
sat_name = "telekarta"
tp = "12640:V:30000"
tp_fr = "12640"
mac = "00:22:AB:92:8F:FF"
lnb = "9750:10600:11700"

-- 14 channels:
channels = {
{name="Pobeda",input={"dvb://adapter_1#pnr=101&cam=reader_10011"},output={"udp://ens1f0@239.192.66.1:2121"},pnr="101",udp_input={localaddr="127.0.0.1",addr="239.192.66.1",port="2121"}},
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
