sat_type = "S2"
sat_name = "telekarta"
tp = "12080:H:28800"
tp_fr = "12080"
mac = "00:22:AB:92:8F:FD"
lnb = "9750:10600:11700"

-- 7 channels:
channels = {
{name="Rossiya-1",input={"dvb://adapter_1#pnr=403&cam=reader_10011"},output={"udp://ens1f0@239.192.84.3:2121"},pnr="403",udp_input={localaddr="127.0.0.1",addr="239.192.84.3",port="2121"}},
{name="TNT",input={"dvb://adapter_1#pnr=413&cam=reader_10011"},output={"udp://ens1f0@239.192.84.13:2121"},pnr="413",udp_input={localaddr="127.0.0.1",addr="239.192.84.13",port="2121"}},
{name="Perviy-kanal",input={"dvb://adapter_1#pnr=414&cam=reader_10011"},output={"udp://ens1f0@239.192.84.14:2121"},pnr="414",udp_input={localaddr="127.0.0.1",addr="239.192.84.14",port="2121"}},
{name="Russkiy-Roman",input={"dvb://adapter_1#pnr=415&cam=reader_10011"},output={"udp://ens1f0@239.192.84.15:2121"},pnr="415",udp_input={localaddr="127.0.0.1",addr="239.192.84.15",port="2121"}},
{name="Russkiy-Detektiv",input={"dvb://adapter_1#pnr=416&cam=reader_10011"},output={"udp://ens1f0@239.192.84.16:2121"},pnr="416",udp_input={localaddr="127.0.0.1",addr="239.192.84.16",port="2121"}},
{name="Russkiy-Bestseller",input={"dvb://adapter_1#pnr=420&cam=reader_10011"},output={"udp://ens1f0@239.192.84.20:2121"},pnr="420",udp_input={localaddr="127.0.0.1",addr="239.192.84.20",port="2121"}},
{name="Cinéma",input={"dvb://adapter_1#pnr=427&cam=reader_10011"},output={"udp://ens1f0@239.192.84.26:2121"},pnr="427",udp_input={localaddr="127.0.0.1",addr="239.192.84.26",port="2121"}},
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
