# Linux-Shell-Script
Donanım ve Sistem Bilgilerini Kontrol Etmek İçin Temel Linux Komutları

## Videolu Anlatım Bağlantısı
Videoya [buradan](http:// ) erişebilirsiniz.

## Projenin Amacı
GUI arayüzünde Linux komutları ile donanım ve sistem bilgilerini görüntülemek. 

## Programı Çalıştırmak İçin Paket Kurulumu
Öncelikle yapacağımız bazı sorguların paketlerini kurmalıyız.
Linux uçbirimi açınız. 
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

![This is an image](https://myoctocat.com/assets/images/base-octocat.svg)

## Uygulamada Yapılan Hesaplamalar
Bu programda donanım ve sistem bilgileri için 19 tane komut bulunmaktadır. Bunlar ;
1. Makine Donanım Adı - Makinenizin donanım adını görüntüler.
2. İşlemci - İşlemci ve işlem birimleri  hakkında bilgileri listeler.
3. PCI - Tüm pci veriyollarını ve bunlara bağlı cihazlarla ilgili ayrıntıları listeler. Vga bağdaştırıcısı, grafik kartı, ağ bağdaştırıcısı, usb bağlantı noktaları, sata denetleyicileri vb. hepsi bu kategoriye girer.
4. SCSI - Sabit sürücüler ve optik sürücüler gibi scsi/sata aygıtlarını listeler.
5. USB Denetleyicileri - USB denetleyicilerini ve bunlara bağlı aygıtlarla ilgili ayrıntıları gösterir. Her bir usb bağlantı noktası hakkında ayrıntılı bilgileri listeler.
6. Blok Aygıtı Bilgileri - Sabit sürücüleriniz, flash sürücüleriniz ve bunların bölümleri gibi ayrıntılı blok aygıtı bilgilerini listeler.
7. Dosya Sistemlerinin Disk Alanı - Dosya sistemlerinin bağlantı noktalarını ve her birinde kullanılan ve kullanılabilir alanı listeler.
8. Takılı(Bağlı) Dosya Sistemleri - Takılı dosya sistemlerini listeler.
9. Sata Cihazları Bilgileri - Sata cihazları hakkında bilgileri listeler.
10. Donanım Ayrıntıları - Sistemdeki birden fazla farklı kaynaktan ve komuttan donanım ayrıntılarını getirerek listeler.
11. Donanım Bileşenleri Bilgileri - Birden çok farklı donanım bileşeni hakkında ayrıntılı ve kısa bilgilerle raporlayabilen başka bir genel amaçlı donanım araştırma aracıdır.
12. /proc - Donanım ve yapılandırmalar hakkında bilgi içerir.
    - CPU/Memory Information
    - SCSI/Sata Devices
    - Partitions
    - Version
13. sudo (Sudo şifresi ile çalışırlar.)
    - Donanım Bilgileri - İşlemci, bellek, disk, usb denetleyicileri, ağ bağdaştırıcıları vb. gibi birden çok farklı donanım birimi hakkında ayrıntılı bilgiler listeler.
    - Sabit Sürücü Bilgileri - Sabit sürücülerdeki bölüm bilgilerini ve dosya sistemi bilgilerini listeler.
    - Bellek Bilgileri - SMBOIS veri yapılarından bellek bilgilerini listeler.
    - Temel Giriş-Çıkış Sitemi(BIOS) Bilgileri - SMBOIS veri yapılarından bios bilgilerini listeler.
