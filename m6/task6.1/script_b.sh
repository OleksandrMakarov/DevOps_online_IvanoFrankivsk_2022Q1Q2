#!/bin/bash
LOG_FILE=example_log.log

function most_requested_ip {
    for ip in `awk '{print $1}' $LOG_FILE | sort -u`
        do
            ip_count=`grep -c $ip $LOG_FILE`
            echo $ip $ip_count
    done | sort -rn +1 | head -1
}

function most_requested_page {
    awk '$7 ~ /.html/ {print $7}' $LOG_FILE | sort | uniq -c | sort -rn +1 | head -1
}

function count_requests {
    for ip in `awk '{print $1}' $LOG_FILE | sort -u`
        do
            ip_count=`grep -c $ip $LOG_FILE`
            echo $ip $ip_count
    done
}

function non_exist_pages {
    awk '$9 == "404" {print $7}' $LOG_FILE | sort | uniq -c | sort -rn +1 | cut -d ' ' -f8
}

function load_time {
    
    for ip in `awk -F '[][]' '{print $2}' $LOG_FILE | awk '{print $1}' | sort -u` 
        do
            ip_count=`grep -c $ip $LOG_FILE`
            echo $ip $ip_count
    done | sort -rn +1 | head -1
}

function bots {
    awk -F\" '($6 ~ /bot/){print $1,$6}' $LOG_FILE | awk -F\] 'split($1, array, /- -/){print array[1]$2}' | sort | uniq 
}
function show_help {
    echo $'--mrip \t displays from which ip were the most requests'
    echo $'--mrp \t displays the most requested page'
    echo $'--r \t displays requests from each ip'
    echo $'--nep \t displays non-existed pages were clients referred to'
    echo $'--lt \t displays what time did site get the most requests'
    echo $'--b \t displays the bots UA + IP'
}
if [ -z "$1" ]
    then
        show_help
        exit 0
fi

while [ -n "$1" ]
do
    case "$1" in
        --mrip) most_requested_ip;;
        --mrp) most_requested_page;;
        --r) count_requests;;
        --nep) non_exist_pages;;
        --lt) load_time;;
        --b) bots;;
    esac
shift;
done