#!/bin/bash

# Utility helper to move things around on the internal repo

# get the latest 'master'
git checkout master && git pull

# get onto a branch named 'public'
git checkout public && git pull

while read line
do
    # check out a specific directory from the master branch
    rm -rf ../$line
    git checkout master ../$line

    #array=( ${array[@]} $line )
    #echo ${array[@]}
done <<EOM
.github
.gitignore
.icons
.travis.yml
CONTRIBUTING.md
LICENSE
README.md
fn_aws_utilities
fn_bigfix
fn_calendar_invite
fn_cisco_enforcement
fn_cisco_umbrella_inv
fn_cloud_foundry
fn_create_webex_meeting
fn_create_zoom_meeting
fn_elasticsearch
fn_email_header_validation
fn_exchange
fn_floss
fn_geocoding
fn_google_cloud_functions
fn_google_maps_directions
fn_grr_search
fn_hibp
fn_html2pdf
fn_ioc_parser
fn_jira
fn_ldap_utilities
fn_mcafee_atd
fn_mcafee_epo
fn_mcafee_opendxl
fn_mcafee_tie
fn_mxtoolbox
fn_odbc_query
fn_pagerduty
fn_pastebin
fn_pipl
fn_qradar_advisor
fn_qradar_integration
fn_splunk_integration
fn_thug
fn_urlscanio
fn_utilities
fn_virustotal
fn_watson_translate
fn_xforce
older
rc-cts-abuseipdb
rc-cts-googlesafebrowsing
rc-cts-haveibeenpwned
rc-cts-mcafeetie
rc-cts-misp
rc-cts-passivetotal
rc-cts-shadowserver
rc-cts-urlscanio
rc-cts-yeti
EOM