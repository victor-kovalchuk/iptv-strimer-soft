sat_type = "S2"
sat_name = "ntv"
tp = "12437:R:27500"
tp_fr = "12437"
mac = "00:22:AB:91:CC:FD"
lnb = "10750:10750:10750"

-- 14 channels:
channels = {
{name="Telekanal-FAN",input={"dvb://adapter_1#pnr=401&cam=reader_6776"},output={"udp://ens1f0@239.192.44.1:2121"},pnr="401",udp_input={localaddr="127.0.0.1",addr="239.192.44.1",port="2121"}},
{name="REN-TV-(+2h)",input={"dvb://adapter_1#pnr=402&cam=reader_6774"},output={"udp://ens1f0@239.192.44.2:2121"},pnr="402",udp_input={localaddr="127.0.0.1",addr="239.192.44.2",port="2121"}},
{name="Karusel-(+3h)",input={"dvb://adapter_1#pnr=403&cam=reader_6775"},output={"udp://ens1f0@239.192.44.3:2121"},pnr="403",udp_input={localaddr="127.0.0.1",addr="239.192.44.3",port="2121"}},
{name="Fashion-TV-Russia",input={"dvb://adapter_1#pnr=405&cam=reader_6775"},output={"udp://ens1f0@239.192.44.4:2121"},pnr="405",udp_input={localaddr="127.0.0.1",addr="239.192.44.4",port="2121"}},
{name="NTV-Serial",input={"dvb://adapter_1#pnr=408&cam=reader_6776"},output={"udp://ens1f0@239.192.44.7:2121"},pnr="408",udp_input={localaddr="127.0.0.1",addr="239.192.44.7",port="2121"}},
{name="Russkiy-Detektiv",input={"dvb://adapter_1#pnr=409&cam=reader_6776"},output={"udp://ens1f0@239.192.44.8:2121"},pnr="409",udp_input={localaddr="127.0.0.1",addr="239.192.44.8",port="2121"}},
{name="Telekanal-Zvezda-(+2h)",input={"dvb://adapter_1#pnr=410&cam=reader_6775"},output={"udp://ens1f0@239.192.44.9:2121"},pnr="410",udp_input={localaddr="127.0.0.1",addr="239.192.44.9",port="2121"}},
{name="Ani",input={"dvb://adapter_1#pnr=411&cam=reader_6775"},output={"udp://ens1f0@239.192.44.10:2121"},pnr="411",udp_input={localaddr="127.0.0.1",addr="239.192.44.10",port="2121"}},
{name="5-Kanal-(+2h)",input={"dvb://adapter_1#pnr=413&cam=reader_6775"},output={"udp://ens1f0@239.192.44.12:2121"},pnr="413",udp_input={localaddr="127.0.0.1",addr="239.192.44.12",port="2121"}},
{name="Food-Network-Russia",input={"dvb://adapter_1#pnr=416&cam=reader_6775"},output={"udp://ens1f0@239.192.44.15:2121"},pnr="416",udp_input={localaddr="127.0.0.1",addr="239.192.44.15",port="2121"}},
{name="Zhivi!",input={"dvb://adapter_1#pnr=418&cam=reader_6775"},output={"udp://ens1f0@239.192.44.17:2121"},pnr="418",udp_input={localaddr="127.0.0.1",addr="239.192.44.17",port="2121"}},
{name="Russkiy-Bestseller",input={"dvb://adapter_1#pnr=421&cam=reader_6767"},output={"udp://ens1f0@239.192.44.20:2121"},pnr="421",udp_input={localaddr="127.0.0.1",addr="239.192.44.20",port="2121"}},
{name="Russkiy-Roman",input={"dvb://adapter_1#pnr=424&cam=reader_6767"},output={"udp://ens1f0@239.192.44.23:2121"},pnr="424",udp_input={localaddr="127.0.0.1",addr="239.192.44.23",port="2121"}},
{name="Dorama",input={"dvb://adapter_1#pnr=430&cam=reader_6776"},output={"udp://ens1f0@239.192.44.29:2121"},pnr="430",udp_input={localaddr="127.0.0.1",addr="239.192.44.29",port="2121"}},
}

reader_6776 = newcamd({
 name = "Reader #6776",
 host = "172.17.166.18",
 port = 6776,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6774 = newcamd({
 name = "Reader #6774",
 host = "172.17.166.18",
 port = 6774,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6775 = newcamd({
 name = "Reader #6775",
 host = "172.17.166.18",
 port = 6775,
 user = "root",
 pass = "root",
 key = "0102030405060708091011121314",
})
reader_6767 = newcamd({
 name = "Reader #6767",
 host = "172.17.166.18",
 port = 6767,
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
 reader_6774=reader_6774,
 reader_6775=reader_6775,
 reader_6767=reader_6767,
}
