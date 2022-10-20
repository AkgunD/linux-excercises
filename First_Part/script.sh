cat event_history.csv | grep serdar | grep -i Terminate | grep -Eo "i-[a-zA-Z0-9]{17}" |sort | uniq > /tmp/result.txt

#cat event_history.csv | grep Terminate | grep serdar | grep -oE "i-*[a-zA-Z0-9]{17}" |sort | uniq > /tmp/result.txt

#cat event_history.csv | grep Terminate | grep serdar | grep -oE "i-.{17}" |sort | uniq > /tmp/result.txt

#cat event_history.csv | grep Terminate | grep serdar | grep -o "i-.\{17\}" |sort | uniq > /tmp/result.txt
