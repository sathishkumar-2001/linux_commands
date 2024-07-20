#!/bin/bash
#before executing this script check whether mailutils is installed ,
# Variables
WEBSITE="http://example.com"
EMAIL="admin@example.com"

# Check website availability
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" $WEBSITE)

# Send alert if website is down
if [ $STATUS_CODE -ne 200 ]; then
    echo "Website $WEBSITE is down. Sending email alert to $EMAIL."
    echo "Website $WEBSITE is down with status code $STATUS_CODE" | mail -s "Website Down Alert" $EMAIL
else
    echo "Website $WEBSITE is up with status code $STATUS_CODE."
fi
