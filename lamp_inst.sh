#!bin/bash/
time=$(date +%s)
source /home/graf/deploy/lamp-instul/progress/progress_bar.sh

main() {
    # Make sure that the progress bar is cleaned up when user presses ctrl+c
    enable_trapping
    # Create progress bar
    setup_scroll_area
    for i in {1..99}
        draw_progress_bar $i
        sleep 5
    done
        destroy_scroll_area
}


sudo bash apach-inst.sh
sudo bash apach-actv.sh
sudo bash file-serv.sh
sudo bash mySQL-inst.sh
sudo bash mySQL-set.sh
sudo bash php-inst.sh
sudo bash certbot.sh
destroy_scroll_area
echo 'This operation took-' $(($(date +%s)-$time)) '-time!'
