#!/usr/bin/env sh

term=$(cat $HOME/.config/hypr/keybindings.conf | grep ^'$term' | cut -d '=' -f2)

# 定义数组
list=(
    "watch -n1 \"date '+%D%n%T' | figlet -k\""
    "while true; do echo \"\$(date '+%D %T' | toilet -f term -F border --gay)\"; sleep 1; done"
    "while true; do echo \"\$(date '+%D %T' | toilet -f term -F border --gay)\"; sleep 1; done | lolcat -a -p -F 10"
)

str="watch -n1 \"date '+%D%n%T' | figlet -k\""

# 执行命令字符串
eval "$term -e \"$str\""


# len=${#list[@]}

# # 生成随机数
# rand=$((1+ RANDOM % len))
# echo "${list[$rand]}";
# $term -e "${list[$rand]}"


# if command -v "${list[$rand]}" &> /dev/null; then
#     $term -e "${list[$rand]}"
# fi