sat_type = "S2"
sat_name = "ntv"
tp = "12322:R:27500"
tp_fr = "12322"
mac = "00:22:AB:91:CC:FA"
lnb = "10750:10750:10750"

-- 20 channels:
channels = {
{name="365-dnei-TV",input={"dvb://adapter_1#pnr=101&set_pnr=901&cam=reader_10003"},output={"udp://ens1f0@239.192.38.1:2121#sync"},map="video=110,audio=201",pnr="101",udp_input={localaddr="172.17.168.11",addr="239.192.38.1",port="2121"}},
{name="Auto-Plus",input={"dvb://adapter_1#pnr=102&set_pnr=1006&cam=reader_10003"},output={"udp://ens1f0@239.192.38.2:2121#sync"},map="video=121,audio=202",pnr="102",udp_input={localaddr="172.17.168.11",addr="239.192.38.2",port="2121"}},
{name="Europa-Plus-TV",input={"dvb://adapter_1#pnr=103&set_pnr=7034&cam=reader_10003"},output={"udp://ens1f0@239.192.38.3:2121#sync"},map="video=7034,audio=8034",pnr="103",udp_input={localaddr="172.17.168.11",addr="239.192.38.3",port="2121"}},
{name="Indijskoe-Kino",input={"dvb://adapter_1#pnr=104&set_pnr=1105&cam=reader_10003"},output={"udp://ens1f0@239.192.38.4:2121#sync"},map="video=113,audio=204",pnr="104",udp_input={localaddr="172.17.168.11",addr="239.192.38.4",port="2121"}},
{name="Kinomiks",input={"dvb://adapter_1#pnr=105&set_pnr=10440&cam=reader_10003"},output={"udp://ens1f0@239.192.38.5:2121#sync"},map="video=205,audio=305",pnr="105",udp_input={localaddr="172.17.168.11",addr="239.192.38.5",port="2121"}},
{name="Kinosvidanie",input={"dvb://adapter_1#pnr=106&set_pnr=1104&cam=reader_6771"},output={"udp://ens1f0@239.192.38.6:2121#sync"},map="video=206,audio=306",pnr="106",udp_input={localaddr="172.17.168.11",addr="239.192.38.6",port="2121"}},
{name="Kinohit",input={"dvb://adapter_1#pnr=107&set_pnr=1001&cam=reader_6771"},output={"udp://ens1f0@239.192.38.7:2121#sync"},map="video=160,audio=207",pnr="107",udp_input={localaddr="172.17.168.11",addr="239.192.38.7",port="2121"}},
{name="Kinokomedija",input={"dvb://adapter_1#pnr=108&set_pnr=1110&cam=reader_10003"},output={"udp://ens1f0@239.192.38.8:2121#sync"},map="video=112,audio=208",pnr="108",udp_input={localaddr="172.17.168.11",addr="239.192.38.8",port="2121"}},
{name="Kuhnya-TV",input={"dvb://adapter_1#pnr=110&cam=reader_10007"},output={"udp://ens1f0@239.192.38.10:2121#sync"},pnr="110",udp_input={localaddr="172.17.168.11",addr="239.192.38.10",port="2121"}},
{name="La-Minor",input={"dvb://adapter_1#pnr=111&set_pnr=706&cam=reader_10003"},output={"udp://ens1f0@239.192.38.11:2121#sync"},map="video=115,audio=211",pnr="111",udp_input={localaddr="172.17.168.11",addr="239.192.38.11",port="2121"}},
{name="Kinoserija",input={"dvb://adapter_1#pnr=113&cam=reader_10003"},output={"udp://ens1f0@239.192.38.13:2121#sync"},pnr="113",udp_input={localaddr="172.17.168.11",addr="239.192.38.13",port="2121"}},
{name="Muzhskoe-Kino",input={"dvb://adapter_1#pnr=114&cam=reader_6776"},output={"udp://ens1f0@239.192.38.14:2121#sync"},pnr="114",udp_input={localaddr="172.17.168.11",addr="239.192.38.14",port="2121"}},
{name="Rodnoe-Kino",input={"dvb://adapter_1#pnr=115&set_pnr=702&cam=reader_10003"},output={"udp://ens1f0@239.192.38.15:2121#sync"},map="video=33,audio=315",pnr="115",udp_input={localaddr="172.17.168.11",addr="239.192.38.15",port="2121"}},
{name="Nashe-Novoe-Kino",input={"dvb://adapter_1#pnr=116&set_pnr=1103&cam=reader_10003"},output={"udp://ens1f0@239.192.38.16:2121#sync"},map="video=168,audio=216",pnr="116",udp_input={localaddr="172.17.168.11",addr="239.192.38.16",port="2121"}},
{name="Nostalgia",input={"dvb://adapter_1#pnr=117&set_pnr=11180&cam=reader_10003"},output={"udp://ens1f0@239.192.38.17:2121#sync"},map="video=1118,audio=1434",pnr="117",udp_input={localaddr="172.17.168.11",addr="239.192.38.17",port="2121"}},
{name="Kinosemja",input={"dvb://adapter_1#pnr=119&set_pnr=1102&cam=reader_6771"},output={"udp://ens1f0@239.192.38.19:2121#sync"},map="video=219,audio=319",pnr="119",udp_input={localaddr="172.17.168.11",addr="239.192.38.19",port="2121"}},
{name="Shot-TV",input={"dvb://adapter_1#pnr=121&cam=reader_6772"},output={"udp://ens1f0@239.192.38.21:2121#sync"},pnr="121",udp_input={localaddr="172.17.168.11",addr="239.192.38.21",port="2121"}},
{name="Zhara-TV",input={"dvb://adapter_1#pnr=123&cam=reader_6772"},output={"udp://ens1f0@239.192.38.23:2121#sync"},pnr="123",udp_input={localaddr="172.17.168.11",addr="239.192.38.23",port="2121"}},
{name="KVN-TV",input={"dvb://adapter_1#pnr=124&set_pnr=12360&cam=reader_10003"},output={"udp://ens1f0@239.192.38.24:2121#sync"},map="video=224,audio=324",pnr="124",udp_input={localaddr="172.17.168.11",addr="239.192.38.24",port="2121"}},
{name="Dikij-Telekanal",input={"dvb://adapter_1#pnr=125&cam=reader_10003"},output={"udp://ens1f0@239.192.38.25:2121#sync"},pnr="125",udp_input={localaddr="172.17.168.11",addr="239.192.38.25",port="2121"}},
}

reader_10003 = newcamd({
 name = "Reader #10003",
 host = "172.17.166.18",
 port = 10003,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6771 = newcamd({
 name = "Reader #6771",
 host = "172.17.166.18",
 port = 6771,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_10007 = newcamd({
 name = "Reader #10007",
 host = "172.17.166.18",
 port = 10007,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6776 = newcamd({
 name = "Reader #6776",
 host = "172.17.166.18",
 port = 6776,
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
 reader_10003=reader_10003,
 reader_6771=reader_6771,
 reader_10007=reader_10007,
 reader_6776=reader_6776,
 reader_6772=reader_6772,
}
