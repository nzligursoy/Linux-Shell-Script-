# Linux-Shell-Script
Donanım ve Sistem Bilgilerini Kontrol Etmek İçin Temel Linux Komutları

## Videolu Anlatım Bağlantısı
Videoya [buradan](http:// ) erişebilirsiniz.

## Projenin Amacı
GUI arayüzünde Linux komutları ile donanım ve sistem bilgilerini görüntülemek. 

## Programı Çalıştırmak İçin Paket Kurulumu
Linux uçbirimi açınız. 
//Öncelikle yapacağımız bazı sorguların paketlerini kurmalıyız.
Komut satırına ;
1. sudo apt install lsscsi 
2. sudo apt install inxi 
3. sudo apt install hwinfo 

1, 2 ve 3'ü teker teker yazdıktan sonra sudo şifresini girerek paketleri kurabilirsiniz.
Paketleri kurduktan sonra programı çalıştırabilirsiniz.
 
## Program Nasıl Çalışır ?
Dizindeki zenity klasörünü bilgisayarınıza indirin.
Uçbirimi(terminali) açın ve komut satırına'cd ./zenity' yazarak dizine gidin.
Programı çalıştırmak için komut satırına 'bash giris.sh' yazın.
Ekranınıza aşağıdaki gibi bir zenity gelecek. Buraya adınızı girip 'TAMAM' butonuna basınız.



## Uygulamada Yapılan Hesaplamalar
Bu programda 18 tane hesaplama yapılmaktadır. Bunlar ;
- Makine Donanım Adı - Makinenizin donanım adını görüntüler.
- İşlemci" "İşlemci ve işlem birimleri  hakkında bilgileri listeler.
- PCI - Tüm pci veriyollarını ve bunlara bağlı cihazlarla ilgili ayrıntıları listeler. Vga bağdaştırıcısı, grafik kartı, ağ bağdaştırıcısı, usb bağlantı noktaları, sata denetleyicileri vb. hepsi bu kategoriye girer.
- SCSI - Sabit sürücüler ve optik sürücüler gibi scsi/sata aygıtlarını listeler.
- USB Denetleyicileri - USB denetleyicilerini ve bunlara bağlı aygıtlarla ilgili ayrıntıları gösterir. Her bir usb bağlantı noktası hakkında ayrıntılı bilgileri listeler.
- Blok Aygıtı Bilgileri - Sabit sürücüleriniz, flash sürücüleriniz ve bunların bölümleri gibi ayrıntılı blok aygıtı bilgilerini listeler.
- Dosya Sistemlerinin Disk Alanı - Dosya sistemlerinin bağlantı noktalarını ve her birinde kullanılan ve kullanılabilir alanı listeler.
- Takılı(Bağlı) Dosya Sistemleri - Takılı dosya sistemlerini listeler.
- Sata Cihazları Bilgileri - Sata cihazları hakkında bilgileri listeler.
- Donanım Ayrıntıları - Sistemdeki birden fazla farklı kaynaktan ve komuttan donanım ayrıntılarını getirerek listeler.
- Donanım Bileşenleri Bilgileri - Birden çok farklı donanım bileşeni hakkında ayrıntılı ve kısa bilgilerle raporlayabilen başka bir genel amaçlı donanım araştırma aracıdır.
- /proc - Donanım ve yapılandırmalar hakkında bilgi içerir.
'''
'''
- sudo
