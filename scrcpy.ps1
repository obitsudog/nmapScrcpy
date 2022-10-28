$nmap = (& 'C:\Program Files (x86)\nmap-7.92\nmap' -Pn -p 30000-49999 192.168.1.10)
$num = 30000..49999
$port = $nmap.Split("{/}") | Select-String $num
adb connect 10.10.10.3:$port
& 'C:\Program Files\scrcpy\scrcpy' --max-size 768
# <alt> + <r> to rotate
adb kill-server
