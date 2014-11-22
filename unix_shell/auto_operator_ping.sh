#!/bin/bash
PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/local/games
export PATH

function ping_host {
    host=$1  # grab the host to ping from AGR1
    ping_count=3
    packet_size=54
    
    # This next case execute the correct ping
    # command based on the Unix flavor

    case $(uname) in

    AXI | Linux)
            ping -c${ping_count} $host 2> /dev/null
            ;;
    HP-UX)
            ping $host $packet_size $ping_count 2> /dev/null
            ;;
    SunOs)
            ping -s $host $packet_size $ping_count 2> /dev/null
            ;;
    *)
            echo "\nERROR: Unsupported Operating System - $(uname)"
            echo "\n\t...EXITING...\n"
            exit 1
    esac
}

