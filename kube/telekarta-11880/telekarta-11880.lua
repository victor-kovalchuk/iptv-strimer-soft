sat_type = "S2"
sat_name = "telekarta"
tp = "11880:H:28800"
tp_fr = "11880"
mac = "00:22:AB:92:8F:FC"
lnb = "9750:10600:11700"

-- 17 channels:
channels = {
{name="Dikaya-Rybalka-HD",input={"dvb://adapter_1#pnr=1601&cam=reader_10011"},output={"udp://ens1f0@239.192.74.1:2121"},pnr="1601",udp_input={localaddr="127.0.0.1",addr="239.192.74.1",port="2121"}},
{name="Dikaya-Okhota-HD",input={"dvb://adapter_1#pnr=1602&cam=reader_10011"},output={"udp://ens1f0@239.192.74.2:2121"},pnr="1602",udp_input={localaddr="127.0.0.1",addr="239.192.74.2",port="2121"}},
{name="--Bridge-TV-Deluxe",input={"dvb://adapter_1#pnr=1603&cam=reader_10011"},output={"udp://ens1f0@239.192.74.3:2121"},pnr="1603",udp_input={localaddr="127.0.0.1",addr="239.192.74.3",port="2121"}},
{name="TNT",input={"dvb://adapter_1#pnr=1604&cam=reader_10011"},output={"udp://ens1f0@239.192.74.4:2121"},pnr="1604",udp_input={localaddr="127.0.0.1",addr="239.192.74.4",port="2121"}},
{name="NTV",input={"dvb://adapter_1#pnr=1605&cam=reader_10011"},output={"udp://ens1f0@239.192.74.5:2121"},pnr="1605",udp_input={localaddr="127.0.0.1",addr="239.192.74.5",port="2121"}},
{name="NTV-Hit",input={"dvb://adapter_1#pnr=1606&cam=reader_10011"},output={"udp://ens1f0@239.192.74.6:2121"},pnr="1606",udp_input={localaddr="127.0.0.1",addr="239.192.74.6",port="2121"}},
{name="KVN-TV",input={"dvb://adapter_1#pnr=1607&cam=reader_10011"},output={"udp://ens1f0@239.192.74.7:2121"},pnr="1607",udp_input={localaddr="127.0.0.1",addr="239.192.74.7",port="2121"}},
{name="Tochka-Otryva",input={"dvb://adapter_1#pnr=1608&cam=reader_10011"},output={"udp://ens1f0@239.192.74.8:2121"},pnr="1608",udp_input={localaddr="127.0.0.1",addr="239.192.74.8",port="2121"}},
{name="Konniy-Mir",input={"dvb://adapter_1#pnr=1609&cam=reader_10011"},output={"udp://ens1f0@239.192.74.9:2121"},pnr="1609",udp_input={localaddr="127.0.0.1",addr="239.192.74.9",port="2121"}},
{name="Muzhskoe-Kino",input={"dvb://adapter_1#pnr=1610&cam=reader_10011"},output={"udp://ens1f0@239.192.74.10:2121"},pnr="1610",udp_input={localaddr="127.0.0.1",addr="239.192.74.10",port="2121"}},
{name="Nashe-Novoe-Kino",input={"dvb://adapter_1#pnr=1611&cam=reader_10011"},output={"udp://ens1f0@239.192.74.11:2121"},pnr="1611",udp_input={localaddr="127.0.0.1",addr="239.192.74.11",port="2121"}},
{name="V-Gostyakh-u-Skazki",input={"dvb://adapter_1#pnr=1612&cam=reader_10011"},output={"udp://ens1f0@239.192.74.12:2121"},pnr="1612",udp_input={localaddr="127.0.0.1",addr="239.192.74.12",port="2121"}},
{name="Kinomiks",input={"dvb://adapter_1#pnr=1613&cam=reader_10011"},output={"udp://ens1f0@239.192.74.13:2121"},pnr="1613",udp_input={localaddr="127.0.0.1",addr="239.192.74.13",port="2121"}},
{name="Indijskoe-Kino",input={"dvb://adapter_1#pnr=1614&cam=reader_10011"},output={"udp://ens1f0@239.192.74.14:2121"},pnr="1614",udp_input={localaddr="127.0.0.1",addr="239.192.74.14",port="2121"}},
{name="NTV-Styl",input={"dvb://adapter_1#pnr=1615&cam=reader_10011"},output={"udp://ens1f0@239.192.74.15:2121"},pnr="1615",udp_input={localaddr="127.0.0.1",addr="239.192.74.15",port="2121"}},
{name="NTV-Pravo",input={"dvb://adapter_1#pnr=1616&cam=reader_10011"},output={"udp://ens1f0@239.192.74.16:2121"},pnr="1616",udp_input={localaddr="127.0.0.1",addr="239.192.74.16",port="2121"}},
{name="NTV-Serial",input={"dvb://adapter_1#pnr=1617&cam=reader_10011"},output={"udp://ens1f0@239.192.74.17:2121"},pnr="1617",udp_input={localaddr="127.0.0.1",addr="239.192.74.17",port="2121"}},
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
