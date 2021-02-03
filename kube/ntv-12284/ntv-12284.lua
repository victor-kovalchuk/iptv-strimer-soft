sat_type = "S2"
sat_name = "ntv"
tp = "12284:R:27500"
tp_fr = "12284"
mac = "00:22:AB:91:CC:FA"
lnb = "10750:10750:10750"

-- 5 channels:
channels = {
{name="NST",input={"dvb://adapter_1#pnr=804&cam=reader_6776"},output={"udp://ens1f0@239.192.36.4:2121"},pnr="804",udp_input={localaddr="127.0.0.1",addr="239.192.36.4",port="2121"}},
{name="Fox-Life-Russia",input={"dvb://adapter_1#pnr=806&cam=reader_6776"},output={"udp://ens1f0@239.192.36.6:2121"},pnr="806",udp_input={localaddr="127.0.0.1",addr="239.192.36.6",port="2121"}},
{name="Bober",input={"dvb://adapter_1#pnr=818&cam=reader_6773"},output={"udp://ens1f0@239.192.36.18:2121"},pnr="818",udp_input={localaddr="127.0.0.1",addr="239.192.36.18",port="2121"}},
{name="Dom-Kino",input={"dvb://adapter_1#pnr=820&cam=reader_6767"},output={"udp://ens1f0@239.192.36.20:2121"},pnr="820",udp_input={localaddr="127.0.0.1",addr="239.192.36.20",port="2121"}},
{name="Karusel",input={"dvb://adapter_1#pnr=822&cam=reader_6773"},output={"udp://ens1f0@239.192.36.22:2121"},pnr="822",udp_input={localaddr="127.0.0.1",addr="239.192.36.22",port="2121"}},
}

reader_6776 = newcamd({
 name = "Reader #6776",
 host = "172.17.166.18",
 port = 6776,
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
 reader_6776=reader_6776,
 reader_6773=reader_6773,
 reader_6767=reader_6767,
}
