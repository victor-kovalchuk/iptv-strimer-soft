sat_type = "S2"
sat_name = "ntv"
tp = "12437:R:27500"
tp_fr = "12437"
mac = "00:22:AB:91:CC:FC"
lnb = "10750:10750:10750"

-- 23 channels:
channels = {
{name="Telekanal-FAN",input={"dvb://adapter_1#pnr=401&cam=reader_6776"},output={"udp://ens1f0@239.192.44.1:2121#sync"},pnr="401",udp_input={localaddr="172.17.168.11",addr="239.192.44.1",port="2121"}},
{name="REN-TV",input={"dvb://adapter_1#pnr=402&set_pnr=307&cam=reader_10006"},output={"udp://ens1f0@239.192.44.2:2121#sync"},map="video=1117,audio=1916",pnr="402",udp_input={localaddr="172.17.168.11",addr="239.192.44.2",port="2121"}},
{name="Karusel",input={"dvb://adapter_1#pnr=403&set_pnr=10280&cam=reader_10006"},output={"udp://ens1f0@239.192.44.3:2121#sync"},map="video=1028,audio=1115",pnr="403",udp_input={localaddr="172.17.168.11",addr="239.192.44.3",port="2121"}},
{name="NTV-Pravo",input={"dvb://adapter_1#pnr=406&cam=reader_10010"},output={"udp://ens1f0@239.192.44.5:2121#sync"},pnr="406",udp_input={localaddr="172.17.168.11",addr="239.192.44.5",port="2121"}},
{name="NTV-Serial",input={"dvb://adapter_1#pnr=408&set_pnr=7006&cam=reader_6776"},output={"udp://ens1f0@239.192.44.7:2121#sync"},map="video=7006,audio=8006",pnr="408",udp_input={localaddr="172.17.168.11",addr="239.192.44.7",port="2121"}},
{name="Russkiy-Detektiv",input={"dvb://adapter_1#pnr=409&set_pnr=11780&cam=reader_6776"},output={"udp://ens1f0@239.192.44.8:2121#sync"},map="video=1178,audio=1418",pnr="409",udp_input={localaddr="172.17.168.11",addr="239.192.44.8",port="2121"}},
{name="Telekanal-Zvezda",input={"dvb://adapter_1#pnr=410&set_pnr=10530&cam=reader_10006"},output={"udp://ens1f0@239.192.44.9:2121#sync"},map="video=1053,audio=1104",pnr="410",udp_input={localaddr="172.17.168.11",addr="239.192.44.9",port="2121"}},
{name="Ani",input={"dvb://adapter_1#pnr=411&set_pnr=12170&cam=reader_10006"},output={"udp://ens1f0@239.192.44.10:2121#sync"},map="video=1217,audio=1426",pnr="411",udp_input={localaddr="172.17.168.11",addr="239.192.44.10",port="2121"}},
{name="NTV-Hit",input={"dvb://adapter_1#pnr=412&set_pnr=7001&cam=reader_10010"},output={"udp://ens1f0@239.192.44.11:2121#sync"},map="video=7001,audio=8001",pnr="412",udp_input={localaddr="172.17.168.11",addr="239.192.44.11",port="2121"}},
{name="5-Kanal",input={"dvb://adapter_1#pnr=413&set_pnr=11150&cam=reader_10006"},output={"udp://ens1f0@239.192.44.12:2121#sync"},map="video=1115,audio=3510",pnr="413",udp_input={localaddr="172.17.168.11",addr="239.192.44.12",port="2121"}},
{name="Morskoi",input={"dvb://adapter_1#pnr=414&cam=reader_10010"},output={"udp://ens1f0@239.192.44.13:2121#sync"},pnr="414",udp_input={localaddr="172.17.168.11",addr="239.192.44.13",port="2121"}},
{name="NTV-Styl",input={"dvb://adapter_1#pnr=415&cam=reader_10010"},output={"udp://ens1f0@239.192.44.14:2121#sync"},pnr="415",udp_input={localaddr="172.17.168.11",addr="239.192.44.14",port="2121"}},
{name="Food-Network-Russia",input={"dvb://adapter_1#pnr=416&cam=reader_10006"},output={"udp://ens1f0@239.192.44.15:2121#sync"},pnr="416",udp_input={localaddr="172.17.168.11",addr="239.192.44.15",port="2121"}},
{name="Moskva-Doverie",input={"dvb://adapter_1#pnr=417&set_pnr=11960&cam=reader_6770"},output={"udp://ens1f0@239.192.44.16:2121#sync"},map="video=217,audio=317",pnr="417",udp_input={localaddr="172.17.168.11",addr="239.192.44.16",port="2121"}},
{name="Zhivi!",input={"dvb://adapter_1#pnr=418&cam=reader_10006"},output={"udp://ens1f0@239.192.44.17:2121#sync"},pnr="418",udp_input={localaddr="172.17.168.11",addr="239.192.44.17",port="2121"}},
{name="Sarafan",input={"dvb://adapter_1#pnr=419&set_pnr=12050&cam=reader_6772"},output={"udp://ens1f0@239.192.44.18:2121#sync"},map="video=1205,audio=1425",pnr="419",udp_input={localaddr="172.17.168.11",addr="239.192.44.18",port="2121"}},
{name="Russkiy-Bestseller",input={"dvb://adapter_1#pnr=421&set_pnr=11770&cam=reader_6776"},output={"udp://ens1f0@239.192.44.20:2121#sync"},map="video=1177,audio=1420",pnr="421",udp_input={localaddr="172.17.168.11",addr="239.192.44.20",port="2121"}},
{name="Boks-TV",input={"dvb://adapter_1#pnr=422&set_pnr=7033&cam=reader_10010"},output={"udp://ens1f0@239.192.44.21:2121#sync"},map="video=7033,audio=8033",pnr="422",udp_input={localaddr="172.17.168.11",addr="239.192.44.21",port="2121"}},
{name="E-TV-(Russia)",input={"dvb://adapter_1#pnr=423&set_pnr=7036&cam=reader_6772"},output={"udp://ens1f0@239.192.44.22:2121#sync"},map="video=7036,audio=8036",pnr="423",udp_input={localaddr="172.17.168.11",addr="239.192.44.22",port="2121"}},
{name="Russkiy-Roman",input={"dvb://adapter_1#pnr=424&set_pnr=11790&cam=reader_10010"},output={"udp://ens1f0@239.192.44.23:2121#sync"},map="video=1179,audio=1419",pnr="424",udp_input={localaddr="172.17.168.11",addr="239.192.44.23",port="2121"}},
{name="V-Gostyakh-u-Skazki",input={"dvb://adapter_1#pnr=425&set_pnr=12480&cam=reader_10010"},output={"udp://ens1f0@239.192.44.24:2121#sync"},map="video=225,audio=325",pnr="425",udp_input={localaddr="172.17.168.11",addr="239.192.44.24",port="2121"}},
{name="Dorama",input={"dvb://adapter_1#pnr=430&cam=reader_6776"},output={"udp://ens1f0@239.192.44.29:2121#sync"},pnr="430",udp_input={localaddr="172.17.168.11",addr="239.192.44.29",port="2121"}},
{name="Dialogi-o-rybalke",input={"dvb://adapter_1#pnr=431&cam=reader_6772"},output={"udp://ens1f0@239.192.44.30:2121#sync"},pnr="431",udp_input={localaddr="172.17.168.11",addr="239.192.44.30",port="2121"}},
}

reader_6776 = newcamd({
 name = "Reader #6776",
 host = "172.17.166.18",
 port = 6776,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_10006 = newcamd({
 name = "Reader #10006",
 host = "172.17.166.18",
 port = 10006,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_10010 = newcamd({
 name = "Reader #10010",
 host = "172.17.166.18",
 port = 10010,
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
 reader_6776=reader_6776,
 reader_10006=reader_10006,
 reader_10010=reader_10010,
 reader_6770=reader_6770,
 reader_6772=reader_6772,
}
