#!/bin/bash
  zenity --entry \
  --title="Kullanıcı Adı" \
  --text="Kullanıcı Adınızı Giriniz:" > isim.txt
  
  bash main.sh
