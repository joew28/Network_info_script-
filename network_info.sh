#!/bin/bash

# Display network interfaces
echo "Network Interfaces:"
ifconfig

# Display network routing table
echo "Routing Table:"
route -n

# Display DNS information
echo "DNS Information:"
cat /etc/resolv.conf

# Display open ports
echo "Open Ports:"
netstat -tulpn

# Save output to file with timestamp
filename="network_dump_$(date +%Y-%m-%d_%H-%M-%S).txt"
echo "Saving output to file: $filename"
{
    echo "Network Interfaces:"
    ifconfig
    echo ""
    echo "Routing Table:"
    route -n
    echo ""
    echo "DNS Information:"
    cat /etc/resolv.conf
    echo ""
    echo "Open Ports:"
    netstat -tulpn
} > "$filename"

echo "Done."
