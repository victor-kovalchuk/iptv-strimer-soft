sat_type = "S"
sat_name = "ntv"
tp = "12341:L:27500"
tp_fr = "12341"
mac = "00:22:AB:91:CD:45"
lnb = "10750:10750:10750"

-- 12 channels:
channels = {
{name="Perviy-kanal",input={"dvb://adapter_1#pnr=1101&cam=reader_10009"},output={"udp://ens1f0@239.192.40.1:2121"},pnr="1101",udp_input={localaddr="172.17.168.11",addr="239.192.40.1",port="2121"}},
{name="Domashniy",input={"dvb://adapter_1#pnr=1102&cam=reader_10009"},output={"udp://ens1f0@239.192.40.2:2121"},pnr="1102",udp_input={localaddr="172.17.168.11",addr="239.192.40.2",port="2121"}},
{name="Lubimoe-Kino",input={"dvb://adapter_1#pnr=1103&cam=reader_10010"},output={"udp://ens1f0@239.192.40.3:2121"},pnr="1103",udp_input={localaddr="172.17.168.11",addr="239.192.40.3",port="2121"}},
{name="STS",input={"dvb://adapter_1#pnr=1105&cam=reader_10009"},output={"udp://ens1f0@239.192.40.5:2121"},pnr="1105",udp_input={localaddr="172.17.168.11",addr="239.192.40.5",port="2121"}},
{name="STS-Love",input={"dvb://adapter_1#pnr=1106&cam=reader_10010"},output={"udp://ens1f0@239.192.40.6:2121"},pnr="1106",udp_input={localaddr="172.17.168.11",addr="239.192.40.6",port="2121"}},
{name="Mir-Seriala",input={"dvb://adapter_1#pnr=1107&cam=reader_10009"},output={"udp://ens1f0@239.192.40.7:2121"},pnr="1107",udp_input={localaddr="172.17.168.11",addr="239.192.40.7",port="2121"}},
{name="TNV-Planeta",input={"dvb://adapter_1#pnr=1108&cam=reader_10009"},output={"udp://ens1f0@239.192.40.8:2121"},pnr="1108",udp_input={localaddr="172.17.168.11",addr="239.192.40.8",port="2121"}},
{name="Che!",input={"dvb://adapter_1#pnr=1109&cam=reader_10009"},output={"udp://ens1f0@239.192.40.9:2121"},pnr="1109",udp_input={localaddr="172.17.168.11",addr="239.192.40.9",port="2121"}},
{name="Kino-TV-(Russia)",input={"dvb://adapter_1#pnr=1114&cam=reader_6776"},output={"udp://ens1f0@239.192.40.14:2121"},pnr="1114",udp_input={localaddr="172.17.168.11",addr="239.192.40.14",port="2121"}},
{name="Komediya",input={"dvb://adapter_1#pnr=1115&cam=reader_6776"},output={"udp://ens1f0@239.192.40.15:2121"},pnr="1115",udp_input={localaddr="172.17.168.11",addr="239.192.40.15",port="2121"}},
{name="Shayan-TV",input={"dvb://adapter_1#pnr=1117&cam=reader_10010"},output={"udp://ens1f0@239.192.40.17:2121"},pnr="1117",udp_input={localaddr="172.17.168.11",addr="239.192.40.17",port="2121"}},
{name="Mosfilm",input={"dvb://adapter_1#pnr=1118&cam=reader_10010"},output={"udp://ens1f0@239.192.40.18:2121"},pnr="1118",udp_input={localaddr="172.17.168.11",addr="239.192.40.18",port="2121"}},
}

reader_10009 = newcamd({
 name = "Reader #10009",
 host = "172.17.166.18",
 port = 10009,
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
reader_6776 = newcamd({
 name = "Reader #6776",
 host = "172.17.166.18",
 port = 6776,
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
 reader_10009=reader_10009,
 reader_10010=reader_10010,
 reader_6776=reader_6776,
}
