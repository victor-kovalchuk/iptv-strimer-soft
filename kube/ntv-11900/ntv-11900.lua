sat_type = "S2"
sat_name = "ntv"
tp = "11900:R:27500"
tp_fr = "11900"
mac = "00:22:AB:92:90:55"
lnb = "10750:10750:10750"

-- 18 channels:
channels = {
{name="Viasat-Nature-East",input={"dvb://adapter_1#pnr=19107&set_pnr=2504&cam=reader_10001"},output={"udp://ens1f0@239.192.22.7:2121#sync"},map="video=1961,audio=1962",pnr="19107",udp_input={localaddr="172.17.168.11",addr="239.192.22.7",port="2121"}},
{name="Viasat-Sport-East",input={"dvb://adapter_1#pnr=19108&set_pnr=1007&cam=reader_6770"},output={"udp://ens1f0@239.192.22.8:2121#sync"},map="video=1007,audio=3508",pnr="19108",udp_input={localaddr="172.17.168.11",addr="239.192.22.8",port="2121"}},
{name="Flix-Snip",input={"dvb://adapter_1#pnr=19111&cam=reader_6768"},output={"udp://ens1f0@239.192.22.11:2121#sync"},pnr="19111",udp_input={localaddr="172.17.168.11",addr="239.192.22.11",port="2121"}},
{name="Usadba",input={"dvb://adapter_1#pnr=19113&cam=reader_10001"},output={"udp://ens1f0@239.192.22.13:2121#sync"},pnr="19113",udp_input={localaddr="172.17.168.11",addr="239.192.22.13",port="2121"}},
{name="EuroNews-Russkiy",input={"dvb://adapter_1#pnr=19114&cam=reader_10001"},output={"udp://ens1f0@239.192.22.14:2121#sync"},pnr="19114",udp_input={localaddr="172.17.168.11",addr="239.192.22.14",port="2121"}},
{name="Fox-Russia",input={"dvb://adapter_1#pnr=19115&set_pnr=812&cam=reader_10001"},output={"udp://ens1f0@239.192.22.15:2121#sync"},map="video=215,audio=316",pnr="19115",udp_input={localaddr="172.17.168.11",addr="239.192.22.15",port="2121"}},
{name="National-Geographic-Wild-Russia",input={"dvb://adapter_1#pnr=19116&set_pnr=411&cam=reader_10001"},output={"udp://ens1f0@239.192.22.16:2121#sync"},map="video=150,audio=213",pnr="19116",udp_input={localaddr="172.17.168.11",addr="239.192.22.16",port="2121"}},
{name="Armenia-TV-Satellite",input={"dvb://adapter_1#pnr=19117&cam=reader_6769"},output={"udp://ens1f0@239.192.22.17:2121#sync"},pnr="19117",udp_input={localaddr="172.17.168.11",addr="239.192.22.17",port="2121"}},
{name="Paramount-Comedy-Russia",input={"dvb://adapter_1#pnr=19118&set_pnr=11820&cam=reader_6768"},output={"udp://ens1f0@239.192.22.18:2121#sync"},map="video=1182,audio=3108",pnr="19118",udp_input={localaddr="172.17.168.11",addr="239.192.22.18",port="2121"}},
{name="BBC-World-News-Europe",input={"dvb://adapter_1#pnr=19119&cam=reader_10001"},output={"udp://ens1f0@239.192.22.19:2121#sync"},pnr="19119",udp_input={localaddr="172.17.168.11",addr="239.192.22.19",port="2121"}},
{name="Mama",input={"dvb://adapter_1#pnr=19120&set_pnr=11910&cam=reader_6769"},output={"udp://ens1f0@239.192.22.20:2121#sync"},map="video=1191,audio=1515",pnr="19120",udp_input={localaddr="172.17.168.11",addr="239.192.22.20",port="2121"}},
{name="Paramount-Channel-Russia",input={"dvb://adapter_1#pnr=19121&set_pnr=11810&cam=reader_6768"},output={"udp://ens1f0@239.192.22.21:2121#sync"},map="video=1181,audio=3105",pnr="19121",udp_input={localaddr="172.17.168.11",addr="239.192.22.21",port="2121"}},
{name="Sony-Sci-Fi-Russia",input={"dvb://adapter_1#pnr=19122&set_pnr=7007&cam=reader_6768"},output={"udp://ens1f0@239.192.22.22:2121#sync"},map="video=7007,audio=8007",pnr="19122",udp_input={localaddr="172.17.168.11",addr="239.192.22.22",port="2121"}},
{name=".Black",input={"dvb://adapter_1#pnr=19123&cam=reader_10001"},output={"udp://ens1f0@239.192.22.23:2121#sync"},pnr="19123",udp_input={localaddr="172.17.168.11",addr="239.192.22.23",port="2121"}},
{name="Motorsport-TV",input={"dvb://adapter_1#pnr=19124&cam=reader_10001"},output={"udp://ens1f0@239.192.22.24:2121#sync"},pnr="19124",udp_input={localaddr="172.17.168.11",addr="239.192.22.24",port="2121"}},
{name="Mezzo",input={"dvb://adapter_1#pnr=19126&cam=reader_6773"},output={"udp://ens1f0@239.192.22.26:2121#sync"},pnr="19126",udp_input={localaddr="172.17.168.11",addr="239.192.22.26",port="2121"}},
{name="CNN-International-Europe",input={"dvb://adapter_1#pnr=19129&cam=reader_10001"},output={"udp://ens1f0@239.192.22.27:2121#sync"},pnr="19129",udp_input={localaddr="172.17.168.11",addr="239.192.22.27",port="2121"}},
}

reader_10001 = newcamd({
 name = "Reader #10001",
 host = "172.17.166.18",
 port = 10001,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6770 = newcamd({
 name = "Reader #6770",
 host = "172.17.166.18",
 port = 6770,
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
reader_6773 = newcamd({
 name = "Reader #6773",
 host = "172.17.166.18",
 port = 6773,
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
 reader_6770=reader_6770,
 reader_6768=reader_6768,
 reader_6769=reader_6769,
 reader_6773=reader_6773,
}
