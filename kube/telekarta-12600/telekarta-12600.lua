sat_type = "S2"
sat_name = "telekarta"
tp = "12600:V:30000"
tp_fr = "12600"
mac = "00:22:AB:92:8F:FF"
lnb = "9750:10600:11700"

-- 14 channels:
channels = {
{name="Pobeda",input={"dvb://adapter_1#pnr=203&cam=reader_10011"},output={"udp://ens1f0@239.192.66.1:2121"},pnr="203",udp_input={localaddr="127.0.0.1",addr="239.192.66.1",port="2121"}},
{name="Travel-Channel-Europe",input={"dvb://adapter_1#pnr=204&cam=reader_10011"},output={"udp://ens1f0@239.192.66.2:2121"},pnr="204",udp_input={localaddr="127.0.0.1",addr="239.192.66.2",port="2121"}},
{name="Eurosport-1-Rossiya",input={"dvb://adapter_1#pnr=205&cam=reader_10011"},output={"udp://ens1f0@239.192.66.3:2121"},pnr="205",udp_input={localaddr="127.0.0.1",addr="239.192.66.3",port="2121"}},
{name="Eurosport-2-Rossiya",input={"dvb://adapter_1#pnr=206&cam=reader_10011"},output={"udp://ens1f0@239.192.66.4:2121"},pnr="206",udp_input={localaddr="127.0.0.1",addr="239.192.66.4",port="2121"}},
{name="Tiji-Russia",input={"dvb://adapter_1#pnr=207&cam=reader_10011"},output={"udp://ens1f0@239.192.66.5:2121"},pnr="207",udp_input={localaddr="127.0.0.1",addr="239.192.66.5",port="2121"}},
{name="DocuBox-HD",input={"dvb://adapter_1#pnr=208&cam=reader_10011"},output={"udp://ens1f0@239.192.66.6:2121"},pnr="208",udp_input={localaddr="127.0.0.1",addr="239.192.66.6",port="2121"}},
{name="FashionBox-HD",input={"dvb://adapter_1#pnr=210&cam=reader_10011"},output={"udp://ens1f0@239.192.66.8:2121"},pnr="210",udp_input={localaddr="127.0.0.1",addr="239.192.66.8",port="2121"}},
{name="Fast-&-FunBox-HD",input={"dvb://adapter_1#pnr=211&cam=reader_10011"},output={"udp://ens1f0@239.192.66.9:2121"},pnr="211",udp_input={localaddr="127.0.0.1",addr="239.192.66.9",port="2121"}},
{name="FightBox-HD",input={"dvb://adapter_1#pnr=212&cam=reader_10011"},output={"udp://ens1f0@239.192.66.10:2121"},pnr="212",udp_input={localaddr="127.0.0.1",addr="239.192.66.10",port="2121"}},
{name="FilmBox-Baltic",input={"dvb://adapter_1#pnr=213&cam=reader_10011"},output={"udp://ens1f0@239.192.66.11:2121"},pnr="213",udp_input={localaddr="127.0.0.1",addr="239.192.66.11",port="2121"}},
{name="FilmBox-Arthouse-Worldwide",input={"dvb://adapter_1#pnr=214&cam=reader_10011"},output={"udp://ens1f0@239.192.66.12:2121"},pnr="214",udp_input={localaddr="127.0.0.1",addr="239.192.66.12",port="2121"}},
{name="Gulli-Girl",input={"dvb://adapter_1#pnr=215&cam=reader_10011"},output={"udp://ens1f0@239.192.66.13:2121"},pnr="215",udp_input={localaddr="127.0.0.1",addr="239.192.66.13",port="2121"}},
{name="TNT",input={"dvb://adapter_1#pnr=216&cam=reader_10011"},output={"udp://ens1f0@239.192.66.14:2121"},pnr="216",udp_input={localaddr="127.0.0.1",addr="239.192.66.14",port="2121"}},
{name="Zee-TV-Russia",input={"dvb://adapter_1#pnr=217&cam=reader_10011"},output={"udp://ens1f0@239.192.66.15:2121"},pnr="217",udp_input={localaddr="127.0.0.1",addr="239.192.66.15",port="2121"}},
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
