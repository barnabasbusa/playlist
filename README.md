# playlist
```
sudo apt install yt-dlp
yt-dlp https://www.youtube.com/shorts/aamMQV9zsA8 -o 1.mp4
ffmpeg -i 1.mp4.webm -vf "transpose=1" 1.mp4
mv 1.mp4 /home/bbusa/Videos/1.mp4
./playlist/slide.sh

~/.config/autostart/slide.desktop
[Desktop Entry]
Type=Application
Name=slide
Exec=/usr/bin/bash /home/bbusa/playlist/slide.sh
```

increase the swap maybe? 1024MB
```
sudo dphys-swapfile swapoff
sudo vim /etc/dphys-swapfile
sudo dphys-swapfile setup
sudo dphys-swapfile swapon
```
