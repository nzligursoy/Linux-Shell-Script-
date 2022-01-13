#!/bin/bash
ISIM=`cat isim.txt`
zenity  --list \
        --title=" Merhaba $ISIM! " \
        --width 800 \
        --height 500 \
        --text="Hangi (sistem ve donanım) komutu görüntülemek istersiniz?"\
        --column=" " --column="Komut" --column="Açıklama" \
        "1" "Makine Donanım Adı" "Makinenizin donanım adını görüntüler." \
        "2" "İşlemci" "İşlemci ve işlem birimleri  hakkında bilgileri listeler."  \
        "3" "PCI" "Tüm pci veriyollarını ve bunlara bağlı cihazlarla ilgili ayrıntıları listeler. Vga bağdaştırıcısı, grafik kartı, ağ bağdaştırıcısı, usb bağlantı noktaları, sata denetleyicileri vb. hepsi bu kategoriye girer." \
        "4" "SCSI" "Sabit sürücüler ve optik sürücüler gibi scsi/sata aygıtlarını listeler." \
        "5" "USB Denetleyicileri" "USB denetleyicilerini ve bunlara bağlı aygıtlarla ilgili ayrıntıları gösterir. Her bir usb bağlantı noktası hakkında ayrıntılı bilgileri listeler." \
        "6" "Blok Aygıtı Bilgileri" "Sabit sürücüleriniz, flash sürücüleriniz ve bunların bölümleri gibi ayrıntılı blok aygıtı bilgilerini listeler." \
        "7" "Dosya Sistemlerinin Disk Alanı" "Dosya sistemlerinin bağlantı noktalarını ve her birinde kullanılan ve kullanılabilir alanı listeler. " \
        "8" "Takılı(Bağlı) Dosya Sistemleri" "Takılı dosya sistemlerini listeler." \
        "9" "Sata Cihazları Bilgileri" "Sata cihazları hakkında bilgileri listeler." \
        "10" "Donanım Ayrıntıları" "Sistemdeki birden fazla farklı kaynaktan ve komuttan donanım ayrıntılarını getirerek listeler." \
        "11" "Donanım Bileşenleri Bilgileri" "Birden çok farklı donanım bileşeni hakkında ayrıntılı ve kısa bilgilerle raporlayabilen başka bir genel amaçlı donanım araştırma aracıdır. " \
        "12" "/proc" "Donanım ve yapılandırmalar hakkında bilgi içerir." \
        "13" "sudo" " " > istek.txt
        SECIM=`cat istek.txt`
        
        case $SECIM in
        1)
        KOMUT="Makine Donanım Adı" 
        bash uname.sh
        ;;
        2)
        KOMUT="İşlemci"
        bash cpu.sh
        ;;
        3)
        KOMUT="PCI"
        bash pci.sh
        ;;
        4)
        KOMUT="SCSI"
        bash scsi.sh
        ;;
        5)
        KOMUT="USB Denetleyicileri" 
        bash usb.sh
        ;;
        6)
        KOMUT="Blok Aygıtı Bilgileri"
        bash blk.sh
        ;;
        7)
        KOMUT="Dosya Sistemlerinin Disk Alanı"
        bash df.sh
        ;;
        8)
        KOMUT="Takılı(Bağlı) Dosya Sistemleri"
        bash mount.sh
        ;;
        9)
        KOMUT="Sata Cihazları Bilgileri"
        bash hdparm.sh
        ;;
        10)
        KOMUT="Donanım Ayrıntıları"
        bash inxi.sh
        ;;
        11)
        KOMUT="Donanım Bileşenleri Bilgileri"
        bash hwinfo.sh
        ;;
        12)
        bash proc.sh
        ;;
        13)
        bash sudo.sh
        ;;
        *)
        exit 1
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
        bash main.sh
        ;;
    	1)
        exit 1
        ;;
        esac
