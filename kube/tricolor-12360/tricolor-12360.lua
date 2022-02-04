sat_type = "S2"
sat_name = "tricolor"
tp = "12360:R:30000"
tp_fr = "12360"
mac = "00:22:AB:D1:65:D0"
lnb = "10750:10750:10750"

-- 4 channels:
channels = {
{name="Kino UHD",input={"dvb://adapter_1#pnr=34001&cas"},output={"udp://ens1f0@239.192.128.1:2121"},pnr="34001",udp_input={localaddr="172.17.168.11",addr="239.192.128.1",port="2121"}},
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
