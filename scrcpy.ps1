$nmap = (& 'C:\Program Files (x86)\nmap-7.92\nmap' -Pn -p 30000-49999 192.168.1.10)
$num = 30000..49999
$port = $nmap.Split("{/}") | Select-String $num
adb connect 192.168.1.10:$port
& 'C:\Program Files\scrcpy\scrcpy' --max-size 768
adb kill-server
