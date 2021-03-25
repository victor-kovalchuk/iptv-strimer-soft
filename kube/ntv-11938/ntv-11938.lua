sat_type = "S2"
sat_name = "ntv"
tp = "11938:R:27500"
tp_fr = "11938"
mac = "00:22:AB:92:90:54"
lnb = "10750:10750:10750"

-- 3 channels:
channels = {
{name="Fox-Russia-HD",input={"dvb://adapter_1#pnr=17101&cam=reader_6768"},output={"udp://ens1f0@239.192.24.1:2121"},pnr="17101",udp_input={localaddr="127.0.0.1",addr="239.192.24.1",port="2121"}},
{name="Eurosport-2-Rossiya-HD",input={"dvb://adapter_1#pnr=17107&cam=reader_6767"},output={"udp://ens1f0@239.192.24.7:2121"},pnr="17107",udp_input={localaddr="127.0.0.1",addr="239.192.24.7",port="2121"}},
{name="Hollywood-HD",input={"dvb://adapter_1#pnr=17108&cam=reader_6767"},output={"udp://ens1f0@239.192.24.8:2121"},pnr="17108",udp_input={localaddr="127.0.0.1",addr="239.192.24.8",port="2121"}},
}

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
 reader_6768=reader_6768,
 reader_6767=reader_6767,
}
