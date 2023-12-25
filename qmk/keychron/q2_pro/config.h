// line up host and battery with num row
#    if defined(RGB_MATRIX_ENABLE)

#        define LED_DRIVER_SHUTDOWN_PIN C14

#        define HOST_LED_MATRIX_LIST \
            { 1, 2, 3 }

#        define BAT_LEVEL_LED_LIST \
            { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 }

/* Backlit disable timeout when keyboard is disconnected(unit: second) */
#        define DISCONNECTED_BACKLIGHT_DISABLE_TIMEOUT 40

/* Backlit disable timeout when keyboard is connected(unit: second) */
#        define CONNECTED_BACKLIGHT_DISABLE_TIMEOUT 500
#    endif