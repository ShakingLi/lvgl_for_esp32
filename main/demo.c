#include <stdio.h>
#include "FreeRTOSConfig.h"
#include "core/lv_obj.h"
#include "esp_err.h"
#include "esp_timer.h"
#include "hal/lv_hal_tick.h"
#include "lv_api_map.h"
#include "music/lv_demo_music.h"
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_spi_flash.h"
#include "lvgl/lvgl.h"
#include "porting/lv_port_disp.h"
#include "lvgl/demos/lv_demos.h"

static void lv_tick_task(void *arg)
{
    (void)arg;
    lv_tick_inc(10);
}

void app_main(void)
{
    printf("Hello world!\n");
    lv_init();
    lv_port_disp_init();

    const esp_timer_create_args_t periodic_timer_args = {
        .callback = &lv_tick_task,
        .name = "periodic_gui"
    };
    esp_timer_handle_t periodic_timer;
    ESP_ERROR_CHECK(esp_timer_create(&periodic_timer_args, &periodic_timer));
    ESP_ERROR_CHECK(esp_timer_start_periodic(periodic_timer, 10 * 1000));

    //**********put your code here ***********
    //****************example****************
    lv_demo_music();
    //***************************************

    while (1) {
        lv_task_handler();
        vTaskDelay(pdMS_TO_TICKS(10));
    }
}
