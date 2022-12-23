# lvgl_for_esp32

此仓库是跟着B站up主[第九个下弦月](https://space.bilibili.com/34165842)的视频进行的移植，具体可以参看视频【ESP32-IDF从helloword工程移植lvgl（第一节）】 https://www.bilibili.com/video/BV1ie4y1h7eD/?share_source=copy_web&vd_source=eddec9f97ec3894f19c5b0731b080700



**项目环境：vsode  espidf v4.4.3，lvgl v8.3**



### 使用方法

**linux用户可以使用init.sh快速进行初始化设置，包括项目重命名，分辨率快捷设置，以及新建仓库**



**也可以手动进行初始化**

1. 更改主目录下CMakeLists.txt文件中project的内容更改项目名称

2. 克隆lvgl v8.3和lvgl_esp32_drivers到文件夹components，将components文件夹下的lvgl_helpers.c和lvgl_helpers.h文件替换lvgl_esp32_drivers的同名文件。
3. 更改lvgl_helpers.h文件中的 LV_HOR_RES_MAX和LV_VER_RES_MAX更改屏幕分辨率
4. 修改`/components/lv_port_disp.c`第122行，选择lvgl的缓冲方式，默认双缓冲
5. 删除`.git`文件夹删除仓库
6. 运行`git init`初始化仓库

