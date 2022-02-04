sat_type = "S2"
sat_name = "tricolor"
tp = "12034:L:30000"
tp_fr = "12034"
mac = "00:22:AB:91:CD:47"
lnb = "10750:10750:10750"

-- 4 channels:
channels = {
{name="Premialnoe",input={"dvb://adapter_1#pnr=17001&cas"},output={"udp://ens1f0@239.192.132.1:2121"},pnr="17001",udp_input={localaddr="172.17.168.11",addr="239.192.132.1",port="2121"}},
{name="Ostrosyuzhetnoye",input={"dvb://adapter_1#pnr=17002&cas"},output={"udp://ens1f0@239.192.132.2:2121"},pnr="17002",udp_input={localaddr="172.17.168.11",addr="239.192.132.2",port="2121"}},
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
