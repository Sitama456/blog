
# 获取系统时间 并格式化
time="now is "
time+=$(date "+%Y-%m-%d %H:%M:%S")

echo $time

# 获取当前的小时
hour=$(date "+%H")

#判断是哪个时段
# if 判断 注意 []和表达式之间要留一个空格
if [ $hour -ge "0" ] && [ "$hour" -le "12" ]; then
    echo "Good morning!"
elif [ $hour -ge "13" ] && [ $hour -le "18" ]; then
    echo "Good Afternoon!"
elif [ $hour -ge "19" ] && [ $hour -le "24" ]; then
    echo "Good Evening!"
else 
    echo "Bad hour"
    exit 1
fi

exit 0