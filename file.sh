#!/bin/bash

# NetScaler ADC 配置文件路径
config_file="/nsconfig/ns.conf"

# 要进行的配置更改
new_config=add system user tty nsroot"

# 使用 root 权限编辑配置文件
sudo -i
echo "$new_config" >> "$config_file"

# 保存配置更改
save config

# 退出 root 权限
exit
