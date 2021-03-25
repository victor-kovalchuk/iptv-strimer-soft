sat_type = "S"
sat_name = "telekarta"
tp = "12560:V:30000"
tp_fr = "12560"
mac = "00:22:AB:92:8F:FE"
lnb = "9750:10600:11700"

-- 11 channels:
channels = {
{name="Da-Vinci",input={"dvb://adapter_1#pnr=1501&cam=reader_10011"},output={"udp://ens1f0@239.192.64.1:2121"},pnr="1501",udp_input={localaddr="127.0.0.1",addr="239.192.64.1",port="2121"}},
{name="TV-1000-Russkoe-Kino",input={"dvb://adapter_1#pnr=1502&cam=reader_10011"},output={"udp://ens1f0@239.192.64.2:2121"},pnr="1502",udp_input={localaddr="127.0.0.1",addr="239.192.64.2",port="2121"}},
{name="TV-1000-Action",input={"dvb://adapter_1#pnr=1503&cam=reader_10011"},output={"udp://ens1f0@239.192.64.3:2121"},pnr="1503",udp_input={localaddr="127.0.0.1",addr="239.192.64.3",port="2121"}},
{name="TV-1000-East",input={"dvb://adapter_1#pnr=1504&cam=reader_10011"},output={"udp://ens1f0@239.192.64.4:2121"},pnr="1504",udp_input={localaddr="127.0.0.1",addr="239.192.64.4",port="2121"}},
{name="Viasat-Explore-Russia",input={"dvb://adapter_1#pnr=1505&cam=reader_10011"},output={"udp://ens1f0@239.192.64.5:2121"},pnr="1505",udp_input={localaddr="127.0.0.1",addr="239.192.64.5",port="2121"}},
{name="Viasat-History",input={"dvb://adapter_1#pnr=1506&cam=reader_10011"},output={"udp://ens1f0@239.192.64.6:2121"},pnr="1506",udp_input={localaddr="127.0.0.1",addr="239.192.64.6",port="2121"}},
{name="Viasat-Nature-East",input={"dvb://adapter_1#pnr=1507&cam=reader_10011"},output={"udp://ens1f0@239.192.64.7:2121"},pnr="1507",udp_input={localaddr="127.0.0.1",addr="239.192.64.7",port="2121"}},
{name="Viasat-Sport-East",input={"dvb://adapter_1#pnr=1508&cam=reader_10011"},output={"udp://ens1f0@239.192.64.8:2121"},pnr="1508",udp_input={localaddr="127.0.0.1",addr="239.192.64.8",port="2121"}},
{name="5-Kanal",input={"dvb://adapter_1#pnr=1510&cam=reader_10011"},output={"udp://ens1f0@239.192.64.9:2121"},pnr="1510",udp_input={localaddr="127.0.0.1",addr="239.192.64.9",port="2121"}},
{name="Eurosport-1-Rossiya",input={"dvb://adapter_1#pnr=1511&cam=reader_10011"},output={"udp://ens1f0@239.192.64.10:2121"},pnr="1511",udp_input={localaddr="127.0.0.1",addr="239.192.64.10",port="2121"}},
{name="Eurosport-2-Rossiya",input={"dvb://adapter_1#pnr=1512&cam=reader_10011"},output={"udp://ens1f0@239.192.64.11:2121"},pnr="1512",udp_input={localaddr="127.0.0.1",addr="239.192.64.11",port="2121"}},
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
