sat_type = "S2"
sat_name = "tricolor"
tp = "11766:L:30000"
tp_fr = "11766"
mac = "00:22:AB:91:CD:46"
lnb = "10750:10750:10750"

-- 4 channels:
channels = {
{name="Shokiruyuschee",input={"dvb://adapter_1#pnr=3002&cas"},output={"udp://ens1f1@239.192.130.1:2121"},pnr="3002",udp_input={localaddr="172.17.169.11",addr="239.192.130.1",port="2121"}},
{name="Komediynoe",input={"dvb://adapter_1#pnr=3003&cas"},output={"udp://ens1f1@239.192.130.2:2121"},pnr="3003",udp_input={localaddr="172.17.169.11",addr="239.192.130.2",port="2121"}},
{name="Lyubimoe",input={"dvb://adapter_1#pnr=3007&cas"},output={"udp://ens1f1@239.192.130.3:2121"},pnr="3007",udp_input={localaddr="172.17.169.11",addr="239.192.130.3",port="2121"}},

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
