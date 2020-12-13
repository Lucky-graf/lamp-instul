#!/bin/bash

# Source progress bar
source ./progress_bar.sh


main() {
    # Make sure that the progress bar is cleaned up when user presses ctrl+c
    enable_trapping
    # Create progress bar
    setup_scroll_area
    for i in {1..99}
        sleep 
        draw_progress_bar $i
    done
    destroy_scroll_area
}

main
