#!/bin/sh

RETURN_CODE=0

# Exit on the first test failure and set RETURN_CODE = 1
echo "Starting tests...good luck:" \
&& echo "Arista" \
&& py.test -v test_netmiko_show.py --test_device arista_sw4 \
&& py.test -v test_netmiko_config.py --test_device arista_sw4 \
|| RETURN_CODE=1

exit $RETURN_CODE
