import os
import subprocess
from time import sleep 

while True:
  os.system("/home/pi/companion/scripts/start_video.sh $(cat /home/pi/vidformat.param)") 
  sleep (5)
  
  while os.system("ls /dev/video* 2>/dev/null") != 0:
    sleep(5)
