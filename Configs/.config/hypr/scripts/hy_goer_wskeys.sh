#!/bin/bash

# 检查 wshowkeys 是否在运行
if pgrep -f "wshowkeys -a bottom -a right" >/dev/null 2>&1; then
  # 如果在运行，则关闭它
  pkill -f "wshowkeys -a bottom -a right" >/dev/null 2>&1

  notify-send -i $HOME/.config/cava/cava.png -t 2000 -u normal "Wshowkeys 已关闭"

else
  # 如果没有运行，则启动它
  wshowkeys -a bottom -a right -b '#00000000' -f "#FFF" -s "#6FA27D" -F 'monospace 24' &

  notify-send -i $HOME/.config/cava/cava.png -t 2000 -u normal "Wshowkeys 已打开"

fi
