sat_type = "S2"
sat_name = "ntv"
tp = "11862:R:27500"
tp_fr = "11862"
mac = "00:22:AB:92:90:54"
lnb = "10750:10750:10750"

-- 4 channels:
channels = {
{name="STS-Kids-HD",input={"dvb://adapter_1#pnr=204&set_pnr=7009&cam=reader_10001"},output={"udp://ens1f0@239.192.20.4:2121#sync"},map="video=7009,audio=8009",pnr="204",udp_input={localaddr="172.17.168.11",addr="239.192.20.4",port="2121"}},
{name="TLC-Russia-HD",input={"dvb://adapter_1#pnr=205&set_pnr=11690&cam=reader_6772"},output={"udp://ens1f0@239.192.20.5:2121#sync"},map="video=206,audio=305",pnr="205",udp_input={localaddr="172.17.168.11",addr="239.192.20.5",port="2121"}},
{name="Travel-Channel-Europe-HD",input={"dvb://adapter_1#pnr=206&set_pnr=12190&cam=reader_10001"},output={"udp://ens1f0@239.192.20.6:2121#sync"},map="video=207,audio=306",pnr="206",udp_input={localaddr="172.17.168.11",addr="239.192.20.6",port="2121"}},
{name="Bollywood-TV-Rossiya-HD",input={"dvb://adapter_1#pnr=207&set_pnr=12270&cam=reader_10001"},output={"udp://ens1f0@239.192.20.7:2121#sync"},map="video=208,audio=307",pnr="207",udp_input={localaddr="172.17.168.11",addr="239.192.20.7",port="2121"}},
}

reader_10001 = newcamd({
 name = "Reader #10001",
 host = "172.17.166.18",
 port = 10001,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6772 = newcamd({
 name = "Reader #6772",
 host = "172.17.166.18",
 port = 6772,
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
 reader_6772=reader_6772,
}
