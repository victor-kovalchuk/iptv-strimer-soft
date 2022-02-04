sat_type = "S2"
sat_name = "ntv"
tp = "11823:R:27500"
tp_fr = "11823"
mac = "00:22:AB:92:90:53"
lnb = "10750:10750:10750"

-- 2 channels:
channels = {
{name="MTV-Live-HD",input={"dvb://adapter_1#pnr=1404&set_pnr=2601&cam=reader_6773"},output={"udp://ens1f0@239.192.18.4:2121"},map="video=204,audio=404",pnr="1404",udp_input={localaddr="172.17.168.11",addr="239.192.18.4",port="2121"}},
{name="Perviy-kanal-HD",input={"dvb://adapter_1#pnr=1408&set_pnr=11020&cam=reader_6769"},output={"udp://ens1f0@239.192.18.5:2121"},map="video=1102,audio=1902",pnr="1408",udp_input={localaddr="172.17.168.11",addr="239.192.18.5",port="2121"}},
}

reader_6773 = newcamd({
 name = "Reader #6773",
 host = "172.17.166.18",
 port = 6773,
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
 reader_6773=reader_6773,
 reader_6769=reader_6769,
}
