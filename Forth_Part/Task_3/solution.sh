#grep -Eio "input_userauth_request: invalid user .+ " auth.log | awk '{print $4}' | sort | uniq -c > invalid_user.log

#or

cat auth.log | grep -i invalid | grep -i Failed| awk '{print $9 " " $10 " " $11}'|sort|uniq -c|nl| tee invalid_user.log

#or

#awk '/Invalid user/' auth.log | awk -F"]: " '{print $2}' | awk -F" " '{print $3}' | sort | uniq -c > invalid_user.log
