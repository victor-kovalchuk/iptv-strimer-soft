sat_type = "S2"
sat_name = "ntv"
tp = "11862:R:27500"
tp_fr = "11862"
mac = "00:22:AB:92:90:52"
lnb = "10750:10750:10750"

-- 3 channels:
channels = {
{name="STS-Kids-HD",input={"dvb://adapter_1#pnr=204&cam=reader_10001"},output={"udp://ens1f0@239.192.20.4:2121"},pnr="204",udp_input={localaddr="127.0.0.1",addr="239.192.20.4",port="2121"}},
{name="Travel-Channel-Europe-HD",input={"dvb://adapter_1#pnr=206&cam=reader_10001"},output={"udp://ens1f0@239.192.20.6:2121"},pnr="206",udp_input={localaddr="127.0.0.1",addr="239.192.20.6",port="2121"}},
{name="Bollywood-TV-Rossiya-HD",input={"dvb://adapter_1#pnr=207&cam=reader_10001"},output={"udp://ens1f0@239.192.20.7:2121"},pnr="207",udp_input={localaddr="127.0.0.1",addr="239.192.20.7",port="2121"}},
}

reader_10001 = newcamd({
 name = "Reader #10001",
 host = "172.17.166.18",
 port = 10001,
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
 reader_10001=reader_10001,
}
