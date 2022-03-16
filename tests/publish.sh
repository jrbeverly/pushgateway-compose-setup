#!/bin/bash

send_metric() {
    local -r job="$1"
    local -r count="$2"
    cat <<EOF | curl --data-binary @- http://localhost:9091/metrics/job/${job}/instance/instance
# TYPE metric_one counter
metric_one{label="value1"} ${count}
# TYPE another_metric gauge
# HELP another_metric Just an example.
another_metric 2398.283
EOF
}

send_multiple_metrics() {
    local -r job="$1"

    START=1
    END=$(( ( RANDOM % 10 )  + 5 ))
    for (( c=$START; c<=$END; c++ ))
    do
        send_metric "${job}" "${c}"
    done
}


send_multiple_metrics "example1"
send_multiple_metrics "example2"
send_multiple_metrics "example3"