
#!/bin/bash
API_TOKEN=""
CHAT_ID=""
for (( i=1; i<= $1; i++))
do
  NUMLOCK=$(numlockx status)
  if [ "$NUMLOCK" == "Numlock is off" ]; then  
    xdotool mousemove 1891 575 click 1 & sleep 1.5
    echo "Step $i"
  else
    break
  fi
done

echo "*****DONE******"
#Send Request
curl -s -X POST https://api.telegram.org/bot$API_TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="Auto Click is done"
