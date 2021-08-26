sat_type = "S2"
sat_name = "tricolor"
tp = "12360:R:30000"
tp_fr = "12360"
mac = "00:22:AB:D1:65:D0"
lnb = "10750:10750:10750"

-- 4 channels:
channels = {
{name="Insight-UHD-4K",input={"dvb://adapter_1#pnr=34000&cam"},output={"udp://ens1f0@239.192.128.1:2121"},pnr="34000",udp_input={localaddr="172.17.168.11",addr="239.192.128.1",port="2121"}},
{name="Kino-UHD-4K",input={"dvb://adapter_1#pnr=34001"},output={"udp://ens1f0@239.192.128.2:2121"},pnr="34001",udp_input={localaddr="172.17.168.11",addr="239.192.128.2",port="2121"}},
{name="Love-Nature-4K",input={"dvb://adapter_1#pnr=34003"},output={"udp://ens1f0@239.192.128.3:2121"},pnr="34003",udp_input={localaddr="172.17.168.11",addr="239.192.128.3",port="2121"}},
{name="Insight-HD",input={"dvb://adapter_1#pnr=34004"},output={"udp://ens1f0@239.192.128.4:2121"},pnr="34004",udp_input={localaddr="172.17.168.11",addr="239.192.128.4",port="2121"}},
}

return {
 sat_type=sat_type,
 sat_name=sat_name,
 tp=tp,
 tp_fr=tp_fr,
 mac=mac,
 lnb=lnb,
 channels=channels,
}
