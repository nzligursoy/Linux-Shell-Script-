ISIM=`cat  isim.txt`
zenity  --list \
        --title=" Merhaba $ISIM! "\
        --width 800 \
        --height 400 \
        --text="Hangi /proc komutu görüntülemek istersiniz?" \
        --column=" " --column="Komut" --column=" " \
        "1" "CPU/Memory Information" " " \
        "2" "SCSI/Sata Devices" "" \
        "3" "Partitions" " " \
        "4" "Version" " "  > istek.txt
        SECIM=`cat  istek.txt`
        	case $SECIM in
        	1)
        	KOMUT="CPU-Memory Information" 
        	bash p_cpuinfo.sh
        	;;
        	2)
        	KOMUT="SCSI-Sata Devices"
        	bash p_scsi.sh
        	;;
        	3)
        	KOMUT="Partitions"
        	bash p_partitions.sh
        	;;
        	4)
        	KOMUT="Version"
        	bash p_version.sh
        	;;
        	*)
        	bash main.sh
        	;;
        	esac
        	        	
        	FILE=`dirname $0`/cevap.txt
        	zenity --text-info\
        	--width 800 \
        	--height 400 \
        	--title="$KOMUT"\
        	--filename=$FILE 
  case $? in
        0)
        bash proc.sh
        ;;
        *)
        exit 1
        ;;
        esac
