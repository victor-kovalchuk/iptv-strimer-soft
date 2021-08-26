sat_type = "S2"
sat_name = "ntv"
tp = "12437:R:27500"
tp_fr = "12437"
mac = "00:22:AB:91:CC:FC"
lnb = "10750:10750:10750"

-- 20 channels:
channels = {
{name="Telekanal-FAN",input={"dvb://adapter_1#pnr=401&cam=reader_6776"},output={"udp://ens1f0@239.192.44.1:2121"},pnr="401",udp_input={localaddr="172.17.168.11",addr="239.192.44.1",port="2121"}},
{name="REN-TV",input={"dvb://adapter_1#pnr=402&cam=reader_10006"},output={"udp://ens1f0@239.192.44.2:2121"},pnr="402",udp_input={localaddr="172.17.168.11",addr="239.192.44.2",port="2121"}},
{name="Karusel",input={"dvb://adapter_1#pnr=403&cam=reader_10006"},output={"udp://ens1f0@239.192.44.3:2121"},pnr="403",udp_input={localaddr="172.17.168.11",addr="239.192.44.3",port="2121"}},
{name="NTV-Pravo",input={"dvb://adapter_1#pnr=406&cam=reader_10010"},output={"udp://ens1f0@239.192.44.5:2121"},pnr="406",udp_input={localaddr="172.17.168.11",addr="239.192.44.5",port="2121"}},
{name="NTV-Serial",input={"dvb://adapter_1#pnr=408&cam=reader_6776"},output={"udp://ens1f0@239.192.44.7:2121"},pnr="408",udp_input={localaddr="172.17.168.11",addr="239.192.44.7",port="2121"}},
{name="Russkiy-Detektiv",input={"dvb://adapter_1#pnr=409&cam=reader_6776"},output={"udp://ens1f0@239.192.44.8:2121"},pnr="409",udp_input={localaddr="172.17.168.11",addr="239.192.44.8",port="2121"}},
{name="Telekanal-Zvezda",input={"dvb://adapter_1#pnr=410&cam=reader_10006"},output={"udp://ens1f0@239.192.44.9:2121"},pnr="410",udp_input={localaddr="172.17.168.11",addr="239.192.44.9",port="2121"}},
{name="Ani",input={"dvb://adapter_1#pnr=411&cam=reader_10006"},output={"udp://ens1f0@239.192.44.10:2121"},pnr="411",udp_input={localaddr="172.17.168.11",addr="239.192.44.10",port="2121"}},
{name="NTV-Hit",input={"dvb://adapter_1#pnr=412&cam=reader_10010"},output={"udp://ens1f0@239.192.44.11:2121"},pnr="412",udp_input={localaddr="172.17.168.11",addr="239.192.44.11",port="2121"}},
{name="5-Kanal",input={"dvb://adapter_1#pnr=413&cam=reader_10006"},output={"udp://ens1f0@239.192.44.12:2121"},pnr="413",udp_input={localaddr="172.17.168.11",addr="239.192.44.12",port="2121"}},
{name="Morskoi",input={"dvb://adapter_1#pnr=414&cam=reader_10010"},output={"udp://ens1f0@239.192.44.13:2121"},pnr="414",udp_input={localaddr="172.17.168.11",addr="239.192.44.13",port="2121"}},
{name="NTV-Styl",input={"dvb://adapter_1#pnr=415&cam=reader_10010"},output={"udp://ens1f0@239.192.44.14:2121"},pnr="415",udp_input={localaddr="172.17.168.11",addr="239.192.44.14",port="2121"}},
{name="Food-Network-Russia",input={"dvb://adapter_1#pnr=416&cam=reader_10006"},output={"udp://ens1f0@239.192.44.15:2121"},pnr="416",udp_input={localaddr="172.17.168.11",addr="239.192.44.15",port="2121"}},
{name="Moskva-Doverie",input={"dvb://adapter_1#pnr=417&cam=reader_6770"},output={"udp://ens1f0@239.192.44.16:2121"},pnr="417",udp_input={localaddr="172.17.168.11",addr="239.192.44.16",port="2121"}},
{name="Zhivi!",input={"dvb://adapter_1#pnr=418&cam=reader_10006"},output={"udp://ens1f0@239.192.44.17:2121"},pnr="418",udp_input={localaddr="172.17.168.11",addr="239.192.44.17",port="2121"}},
{name="Russkiy-Bestseller",input={"dvb://adapter_1#pnr=421&cam=reader_6776"},output={"udp://ens1f0@239.192.44.20:2121"},pnr="421",udp_input={localaddr="172.17.168.11",addr="239.192.44.20",port="2121"}},
{name="Boks-TV",input={"dvb://adapter_1#pnr=422&cam=reader_10010"},output={"udp://ens1f0@239.192.44.21:2121"},pnr="422",udp_input={localaddr="172.17.168.11",addr="239.192.44.21",port="2121"}},
{name="Russkiy-Roman",input={"dvb://adapter_1#pnr=424&cam=reader_10010"},output={"udp://ens1f0@239.192.44.23:2121"},pnr="424",udp_input={localaddr="172.17.168.11",addr="239.192.44.23",port="2121"}},
{name="V-Gostyakh-u-Skazki",input={"dvb://adapter_1#pnr=425&cam=reader_10010"},output={"udp://ens1f0@239.192.44.24:2121"},pnr="425",udp_input={localaddr="172.17.168.11",addr="239.192.44.24",port="2121"}},
{name="Dorama",input={"dvb://adapter_1#pnr=430&cam=reader_6776"},output={"udp://ens1f0@239.192.44.29:2121"},pnr="430",udp_input={localaddr="172.17.168.11",addr="239.192.44.29",port="2121"}},
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
}
