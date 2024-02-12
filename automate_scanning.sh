#!/usr/bin/env bash

echo "Generating report"
mkdir Report 2> /dev/null
python3 ~/project/final-year-sast-tool/scancodeshield.py --dir ~/project/final-year-sast-tool/atreya-online-e-commerce --plain > ~/project/final-year-sast-tool/Report/exported.txt
cat ~/project/final-year-sast-tool/Report/exported.txt | grep "Remote Co" -A4 > ~/project/final-year-sast-tool/Report/RemoteCodeExecution.txt
cat ~/project/final-year-sast-tool/Report/exported.txt | grep "File Inclusion" -A4 > ~/project/final-year-sast-tool/Report/File_Inclusion.txt
cat ~/project/final-year-sast-tool/Report/exported.txt | grep "SQL Injection" -A4 > ~/project/final-year-sast-tool/Report/SQL_Injection.txt
cat ~/project/final-year-sast-tool/Report/exported.txt | grep "File Upload" -A4 > ~/project/final-year-sast-tool/Report/File_Upload.txt
cat ~/project/final-year-sast-tool/Report/exported.txt | grep "Cross Site Scripting" -A4 > ~/project/final-year-sast-tool/Report/Cross_Site_Scripting.txt
cat ~/project/final-year-sast-tool/Report/exported.txt | grep "Weak Cryptographic Hash" -A4 > ~/project/final-year-sast-tool/Report/Weak_Cryptographic_Hash.txt
cat ~/project/final-year-sast-tool/Report/exported.txt | grep "PHP Object Injection" -A4 > ~/project/final-year-sast-tool/Report/PHP_Object_Injection.txt
cat ~/project/final-year-sast-tool/Report/exported.txt | grep "Header Injection" -A4 > ~/project/final-year-sast-tool/Report/Header_Injection.txt
cat ~/project/final-year-sast-tool/Report/exported.txt | grep "URL Redirection" -A4 > ~/project/final-year-sast-tool/Report/URL_Redirection.txt
cat ~/project/final-year-sast-tool/Report/exported.txt | grep "Hardcoded Credential" -A4 > ~/project/final-year-sast-tool/Report/Hardcoded_Credential.txt

echo "Generating PDF"
python3 ~/project/final-year-sast-tool/pdfgen.py && mv output.pdf ~/project/final-year-sast-tool/Report/
ls -ail ~/project/final-year-sast-tool/Report

