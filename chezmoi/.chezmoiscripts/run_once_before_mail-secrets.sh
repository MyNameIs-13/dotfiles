#!/bin/bash

echo "Please enter password for your Serious mails"
echo "it will be saved to gnome password manager (can be changed in gui)"
secret-tool store --label="Serious mails unread count" e-source-uid 8c90a92d679f435e87dbfa60627483d01c2efa4f

echo "Please enter password for your Trustworthy mails"
echo "it will be saved to gnome password manager (can be changed in gui)"
secret-tool store --label="Trustworthy mails unread count" e-source-uid b522dc980adc0dea6ff3ac8a765f6ca44a586f5a
