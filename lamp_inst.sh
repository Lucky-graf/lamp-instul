#!bin/bash/
pwd
sleep 3
time=$(date +%s)
source ./progress/progress_bar.sh

generate_some_output_and_sleep() {
    sudo bash apach-inst.sh
    sudo bash apach-actv.sh
    sudo bash file-serv.sh
    sudo bash mySQL-inst.sh
    sudo bash mySQL-set.sh
    sudo bash php-inst.sh
    sudo bash certbot.sh

}


main() {
    # Make sure that the progress bar is cleaned up when user presses ctrl+c
    enable_trapping
    # Create progress bar
    setup_scroll_area
    for i in {1..99}
    do
    generate_some_output_and_sleep
    draw_progress_bar $i
    done
    destroy_scroll_area
}

echo 'This operation took-' $(($(date +%s)-$time)) '-time!'
