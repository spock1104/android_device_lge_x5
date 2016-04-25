#!/system/bin/sh
export PATH=/system/xbin:$PATH

setprop gsm.version.baseband `strings -n 25 /firmware/image/modem.b21 | grep -E -o 'MPSS.DI.*\w' | head -1| cut -d "_" -f-1`
