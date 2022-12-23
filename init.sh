#!/bin/bash

_help(){
	echo $'\t'
	echo $'\t' '-n	更改项目名称'
	echo $'\t' '-r 更改分辨率，例如240x240'
	echo $'\t' '-c 更改缓冲方式，1：单缓冲；2：双缓冲；3：全屏缓冲'
	exit 1
}

set_resolution(){
	echo 'e'
}

choose_cushmod(){
	echo $1
	if [ $1 -eq 1 ]; then
		sed -i "122c disp_drv.draw_buf = &draw_buf_dsc_1; //draw_buf_dsc_1, draw_buf_dsc_2 or draw_buf_dsc_3" ./components/lvgl_helpers.c
	elif [ $1 -eq 2 ]; then
		sed -i "122c disp_drv.draw_buf = &draw_buf_dsc_2; //draw_buf_dsc_1, draw_buf_dsc_2 or draw_buf_dsc_3" ./components/lvgl_helpers.c
	elif [ $1 -eq 3 ]; then
		sed -i "122c disp_drv.draw_buf = &draw_buf_dsc_3; //draw_buf_dsc_1, draw_buf_dsc_2 or draw_buf_dsc_3" ./components/lvgl_helpers.c
	else
		_help
	fi
}

while getopts n:r:c: OPT;
do
	case ${OPT} in
		n) sed -i "6c project(${OPTARG})" ./CMakeLists.txt
			;;
		r) set_resolution ${OPTGET}
			;;
		c) choose_cushmod ${OPTARG}
			;;
		\?) _help
	esac
done
