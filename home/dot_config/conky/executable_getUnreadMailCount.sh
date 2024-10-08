#!/bin/bash

username=$1
SECRET_TOOL_LABEL=$2
imap_server=$3

# Retrieve password from GNOME Keyring
password="$(secret-tool lookup e-source-uid "$SECRET_TOOL_LABEL")"

# Use Python to fetch the unread mail count
unread_count=$(python3 - <<END
import imaplib

username = "$username"
password = '$password'
imap_server = "$imap_server"

try:
    mail = imaplib.IMAP4_SSL(imap_server)
    mail.login(username, password)
    mail.select("inbox")
    status, data = mail.search(None, 'UNSEEN')
    unread_count = len(data[0].split())
    print(unread_count)
except Exception as e:
    print("Error:", str(e))
END
)

echo "$unread_count"
