sat_type = "S2"
sat_name = "ntv"
tp = "11900:R:27500"
tp_fr = "11900"
mac = "00:22:AB:92:90:53"
lnb = "10750:10750:10750"

-- 6 channels:
channels = {
{name="Viasat-Nature-East",input={"dvb://adapter_1#pnr=19107&cam=reader_6767"},output={"udp://ens1f0@239.192.22.7:2121"},pnr="19107",udp_input={localaddr="127.0.0.1",addr="239.192.22.7",port="2121"}},
{name="Fox-Russia-SD",input={"dvb://adapter_1#pnr=19115&cam=reader_6767"},output={"udp://ens1f0@239.192.22.14:2121"},pnr="19115",udp_input={localaddr="127.0.0.1",addr="239.192.22.14",port="2121"}},
{name="Paramount-Comedy-Russia",input={"dvb://adapter_1#pnr=19118&cam=reader_6768"},output={"udp://ens1f0@239.192.22.17:2121"},pnr="19118",udp_input={localaddr="127.0.0.1",addr="239.192.22.17",port="2121"}},
{name="Mama",input={"dvb://adapter_1#pnr=19120&cam=reader_6769"},output={"udp://ens1f0@239.192.22.19:2121"},pnr="19120",udp_input={localaddr="127.0.0.1",addr="239.192.22.19",port="2121"}},
{name="Paramount-Channel-Russia",input={"dvb://adapter_1#pnr=19121&cam=reader_6768"},output={"udp://ens1f0@239.192.22.20:2121"},pnr="19121",udp_input={localaddr="127.0.0.1",addr="239.192.22.20",port="2121"}},
{name="CGTN-Russkij",input={"dvb://adapter_1#pnr=19125&cam=reader_6769"},output={"udp://ens1f0@239.192.22.22:2121"},pnr="19125",udp_input={localaddr="127.0.0.1",addr="239.192.22.22",port="2121"}},
}

reader_6767 = newcamd({
 name = "Reader #6767",
 host = "172.17.166.18",
 port = 6767,
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
 reader_6767=reader_6767,
 reader_6768=reader_6768,
 reader_6769=reader_6769,
}
