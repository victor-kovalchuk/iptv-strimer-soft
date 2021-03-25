sat_type = "S"
sat_name = "telekarta"
tp = "11720:H:28800"
tp_fr = "11720"
mac = "00:22:AB:92:8F:F9"
lnb = "9750:10600:11700"

-- 16 channels:
channels = {
{name="Kanal-Disney",input={"dvb://adapter_1#pnr=701&cam=reader_10011"},output={"udp://ens1f0@239.192.68.1:2121"},pnr="701",udp_input={localaddr="127.0.0.1",addr="239.192.68.1",port="2121"}},
{name="Soyuz",input={"dvb://adapter_1#pnr=702&cam=reader_10011"},output={"udp://ens1f0@239.192.68.2:2121"},pnr="702",udp_input={localaddr="127.0.0.1",addr="239.192.68.2",port="2121"}},
{name="Juvelirochka",input={"dvb://adapter_1#pnr=703&cam=reader_10011"},output={"udp://ens1f0@239.192.68.3:2121"},pnr="703",udp_input={localaddr="127.0.0.1",addr="239.192.68.3",port="2121"}},
{name="8-Kanal",input={"dvb://adapter_1#pnr=705&cam=reader_10011"},output={"udp://ens1f0@239.192.68.4:2121"},pnr="705",udp_input={localaddr="127.0.0.1",addr="239.192.68.4",port="2121"}},
{name="Che!",input={"dvb://adapter_1#pnr=707&cam=reader_10011"},output={"udp://ens1f0@239.192.68.6:2121"},pnr="707",udp_input={localaddr="127.0.0.1",addr="239.192.68.6",port="2121"}},
{name="TNT-4",input={"dvb://adapter_1#pnr=708&cam=reader_10011"},output={"udp://ens1f0@239.192.68.7:2121"},pnr="708",udp_input={localaddr="127.0.0.1",addr="239.192.68.7",port="2121"}},
{name="TNT-Music",input={"dvb://adapter_1#pnr=709&cam=reader_10011"},output={"udp://ens1f0@239.192.68.8:2121"},pnr="709",udp_input={localaddr="127.0.0.1",addr="239.192.68.8",port="2121"}},
{name="Kluch",input={"dvb://adapter_1#pnr=710&cam=reader_10011"},output={"udp://ens1f0@239.192.68.9:2121"},pnr="710",udp_input={localaddr="127.0.0.1",addr="239.192.68.9",port="2121"}},
{name="Domashniy",input={"dvb://adapter_1#pnr=711&cam=reader_10011"},output={"udp://ens1f0@239.192.68.10:2121"},pnr="711",udp_input={localaddr="127.0.0.1",addr="239.192.68.10",port="2121"}},
{name="STS-Love",input={"dvb://adapter_1#pnr=712&cam=reader_10011"},output={"udp://ens1f0@239.192.68.11:2121"},pnr="712",udp_input={localaddr="127.0.0.1",addr="239.192.68.11",port="2121"}},
{name="Muz-TV",input={"dvb://adapter_1#pnr=713&cam=reader_10011"},output={"udp://ens1f0@239.192.68.12:2121"},pnr="713",udp_input={localaddr="127.0.0.1",addr="239.192.68.12",port="2121"}},
{name="EuroNews-Russkiy",input={"dvb://adapter_1#pnr=714&cam=reader_10011"},output={"udp://ens1f0@239.192.68.13:2121"},pnr="714",udp_input={localaddr="127.0.0.1",addr="239.192.68.13",port="2121"}},
{name="Sony-Channel-Russia",input={"dvb://adapter_1#pnr=715&cam=reader_10011"},output={"udp://ens1f0@239.192.68.14:2121"},pnr="715",udp_input={localaddr="127.0.0.1",addr="239.192.68.14",port="2121"}},
{name="Sony-Sci-Fi-Russia",input={"dvb://adapter_1#pnr=716&cam=reader_10011"},output={"udp://ens1f0@239.192.68.15:2121"},pnr="716",udp_input={localaddr="127.0.0.1",addr="239.192.68.15",port="2121"}},
{name="Sony-Turbo",input={"dvb://adapter_1#pnr=717&cam=reader_10011"},output={"udp://ens1f0@239.192.68.16:2121"},pnr="717",udp_input={localaddr="127.0.0.1",addr="239.192.68.16",port="2121"}},
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
