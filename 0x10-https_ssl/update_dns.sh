#!/bin/bash

update_subdomain_ip() {
    local domain="$1"
    local subdomain="$2"
    local new_ip="$3"

    # Update DNS record using appropriate command for your DNS provider
    # For example, for AWS Route 53:
    # aws route53 change-resource-record-sets --hosted-zone-id <ZONE_ID> --change-batch "{ \"Changes\": [ { \"Action\": \"UPSERT\", \"ResourceRecordSet\": { \"Name\": \"$subdomain.$domain.\", \"Type\": \"A\", \"TTL\": 300, \"ResourceRecords\": [ { \"Value\": \"$new_ip\" } ] } } ] }"

    # Print confirmation message
    echo "Updated IP address for subdomain $subdomain to $new_ip"
}

# Update IP address for web-01
update_subdomain_ip "holberton.online" "web-01" "100.26.166.192"

# Update IP address for web-02
update_subdomain_ip "holberton.online" "web-02" "54.165.237.202"

# Update IP address for lb-01
update_subdomain_ip "holberton.online" "lb-01" "107.21.55.44"

