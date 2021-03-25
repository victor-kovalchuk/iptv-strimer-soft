sat_type = "S2"
sat_name = "telekarta"
tp = "11960:H:28800"
tp_fr = "11960"
mac = "00:22:AB:92:8F:F9"
lnb = "9750:10600:11700"

-- 21 channels:
channels = {
{name="Perviy-kanal",input={"dvb://adapter_1#pnr=92&cam=reader_10011"},output={"udp://ens1f0@239.192.64.1:2121"},pnr="92",udp_input={localaddr="127.0.0.1",addr="239.192.64.1",port="2121"}},
{name="Rossiya-1",input={"dvb://adapter_1#pnr=901&cam=reader_10011"},output={"udp://ens1f0@239.192.64.2:2121"},pnr="901",udp_input={localaddr="127.0.0.1",addr="239.192.64.2",port="2121"}},
{name="Maidan",input={"dvb://adapter_1#pnr=906&cam=reader_10011"},output={"udp://ens1f0@239.192.64.4:2121"},pnr="906",udp_input={localaddr="127.0.0.1",addr="239.192.64.4",port="2121"}},
{name="Perviy-Oblastnoy-Chelyabinsk",input={"dvb://adapter_1#pnr=907&cam=reader_10011"},output={"udp://ens1f0@239.192.64.5:2121"},pnr="907",udp_input={localaddr="127.0.0.1",addr="239.192.64.5",port="2121"}},
{name="Uspeh",input={"dvb://adapter_1#pnr=908&cam=reader_10011"},output={"udp://ens1f0@239.192.64.6:2121"},pnr="908",udp_input={localaddr="127.0.0.1",addr="239.192.64.6",port="2121"}},
{name="REN-TV",input={"dvb://adapter_1#pnr=909&cam=reader_10011"},output={"udp://ens1f0@239.192.64.7:2121"},pnr="909",udp_input={localaddr="127.0.0.1",addr="239.192.64.7",port="2121"}},
{name="5-Kanal",input={"dvb://adapter_1#pnr=910&cam=reader_10011"},output={"udp://ens1f0@239.192.64.8:2121"},pnr="910",udp_input={localaddr="127.0.0.1",addr="239.192.64.8",port="2121"}},
{name="Okhota-i-Rybalka",input={"dvb://adapter_1#pnr=913&cam=reader_10011"},output={"udp://ens1f0@239.192.64.9:2121"},pnr="913",udp_input={localaddr="127.0.0.1",addr="239.192.64.9",port="2121"}},
{name="Shant-News",input={"dvb://adapter_1#pnr=915&cam=reader_10011"},output={"udp://ens1f0@239.192.64.11:2121"},pnr="915",udp_input={localaddr="127.0.0.1",addr="239.192.64.11",port="2121"}},
{name="Food-Network-Russia",input={"dvb://adapter_1#pnr=916&cam=reader_10011"},output={"udp://ens1f0@239.192.64.12:2121"},pnr="916",udp_input={localaddr="127.0.0.1",addr="239.192.64.12",port="2121"}},
{name="Nashe-TV",input={"dvb://adapter_1#pnr=919&cam=reader_10011"},output={"udp://ens1f0@239.192.64.13:2121"},pnr="919",udp_input={localaddr="127.0.0.1",addr="239.192.64.13",port="2121"}},
{name="Fine-Living",input={"dvb://adapter_1#pnr=920&cam=reader_10011"},output={"udp://ens1f0@239.192.64.14:2121"},pnr="920",udp_input={localaddr="127.0.0.1",addr="239.192.64.14",port="2121"}},
{name="Discovery-Channel-Rossiya",input={"dvb://adapter_1#pnr=921&cam=reader_10011"},output={"udp://ens1f0@239.192.64.15:2121"},pnr="921",udp_input={localaddr="127.0.0.1",addr="239.192.64.15",port="2121"}},
{name="Animal-Planet-Rossiya",input={"dvb://adapter_1#pnr=922&cam=reader_10011"},output={"udp://ens1f0@239.192.64.16:2121"},pnr="922",udp_input={localaddr="127.0.0.1",addr="239.192.64.16",port="2121"}},
{name="TLC-Russia",input={"dvb://adapter_1#pnr=923&cam=reader_10011"},output={"udp://ens1f0@239.192.64.17:2121"},pnr="923",udp_input={localaddr="127.0.0.1",addr="239.192.64.17",port="2121"}},
{name="Investigation-Discovery-Rossiya",input={"dvb://adapter_1#pnr=924&cam=reader_10011"},output={"udp://ens1f0@239.192.64.18:2121"},pnr="924",udp_input={localaddr="127.0.0.1",addr="239.192.64.18",port="2121"}},
{name="Pyatnitsa!",input={"dvb://adapter_1#pnr=925&cam=reader_10011"},output={"udp://ens1f0@239.192.64.19:2121"},pnr="925",udp_input={localaddr="127.0.0.1",addr="239.192.64.19",port="2121"}},
{name="Telekanal-Spas",input={"dvb://adapter_1#pnr=926&cam=reader_10011"},output={"udp://ens1f0@239.192.64.20:2121"},pnr="926",udp_input={localaddr="127.0.0.1",addr="239.192.64.20",port="2121"}},
{name="TNV-Tatarstan",input={"dvb://adapter_1#pnr=927&cam=reader_10011"},output={"udp://ens1f0@239.192.64.21:2121"},pnr="927",udp_input={localaddr="127.0.0.1",addr="239.192.64.21",port="2121"}},
{name="Che!",input={"dvb://adapter_1#pnr=928&cam=reader_10011"},output={"udp://ens1f0@239.192.64.22:2121"},pnr="928",udp_input={localaddr="127.0.0.1",addr="239.192.64.22",port="2121"}},
{name="Damskiy-Klub",input={"dvb://adapter_1#pnr=929&cam=reader_10011"},output={"udp://ens1f0@239.192.64.23:2121"},pnr="929",udp_input={localaddr="127.0.0.1",addr="239.192.64.23",port="2121"}},
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
