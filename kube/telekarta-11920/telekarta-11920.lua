sat_type = "S2"
sat_name = "telekarta"
tp = "11920:H:28800"
tp_fr = "11920"
mac = "00:22:AB:92:8F:F8"
lnb = "9750:10600:11700"

-- 1 channels:
channels = {
{name="Ocean-TV",input={"dvb://adapter_1#pnr=1218&cam=reader_10011"},output={"udp://ens1f0@239.192.76.17:2121"},pnr="1218",udp_input={localaddr="127.0.0.1",addr="239.192.76.17",port="2121"}},
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
