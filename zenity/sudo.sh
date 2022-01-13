ISIM=`cat  isim.txt`
zenity  --list \
        --title=" Merhaba $ISIM! "\
        --width 800 \
        --height 400 \
        --text="Bu komutları çalıştırabilmek için sudo şifresine ihtiyacınız var." \
        --column=" " --column="Komut" --column="Açıklama" \
        "1" "Donanım Bilgileri" "İşlemci, bellek, disk, usb denetleyicileri, ağ bağdaştırıcıları vb. gibi birden çok farklı donanım birimi hakkında ayrıntılı bilgiler listeler." \
        "2" "Sabit Sürücü Bilgileri" "Sabit sürücülerdeki bölüm bilgilerini ve dosya sistemi bilgilerini listeler." \
        "3" "Bellek Bilgileri" "SMBOIS veri yapılarından bellek bilgilerini listeler." \
        "4" "Temel Giriş-Çıkış Sitemi(BIOS) Bilgileri" "SMBOIS veri yapılarından bios bilgilerini listeler." > istek.txt
        SECIM=`cat  istek.txt`
        	case $SECIM in
        	1)
        	KOMUT="Donanım Bilgileri" 
        	bash hw.sh
        	;;
        	2)
        	KOMUT="Sabit Sürücü Bilgileri"
        	bash fdisk.sh
        	;;
        	3)
        	KOMUT="Bellek Bilgileri"
        	bash memory.sh
        	;;
        	4)
        	KOMUT="Temel Giriş-Çıkış Sitemi(BIOS) Bilgileri"
        	bash bios.sh
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
        bash sudo.sh
        ;;
        *)
        exit 1
        ;;
        esac
