#!/usr/bin/env bash

INTEL_DIR=/home/$USER/feeds/external

if [ ! -d $INTEL_DIR ]; then
    printf "Creating the intel directory...\n"
    mkdir -p $INTEL_DIR
fi

wget -q --show-progress -c "https://zeustracker.abuse.ch/blocklist.php?download=ipblocklist" -O $INTEL_DIR/001_zeustracker-abuse-ipblocklist.csv
wget -q --show-progress -c "https://zeustracker.abuse.ch/blocklist.php?download=compromised" -O $INTEL_DIR/002_zeustracker-abuse-compromised.csv

wget -q --show-progress -c "http://rules.emergingthreats.net/blockrules/compromised-ips.txt" -O $INTEL_DIR/003_emergingthreats-compromised.csv
wget -q --show-progress -c "https://panwdbl.appspot.com/lists/mdl.txt" -O $INTEL_DIR/004_appspot-malwaredomainlist.csv

wget -q --show-progress -c "http://cybercrime-tracker.net/all.php" -O $INTEL_DIR/005_cybercrime-tracker.csv
wget -q --show-progress -c "http://cybercrime-tracker.net/ccamlist.php" -O $INTEL_DIR/005_cybercrime-tracker-ccamlist.csv
wget -q --show-progress -c "http://cybercrime-tracker.net/ccamgate.php" -O $INTEL_DIR/005_cybercrime-tracker-ccamgate.csv

wget -q --show-progress -c "http://data.phishtank.com/data/online-valid.csv" -O $INTEL_DIR/006_phishtank.csv
wget -q --show-progress -c "http://dns-bh.sagadc.org/dynamic_dns.txt" -O $INTEL_DIR/007_listdynamic-dns-blocklist.csv
wget -q --show-progress -c "http://labs.snort.org/feeds/ip-filter.blf" -O $INTEL_DIR/008_snort-ip-filter.csv
wget -q --show-progress -c "https://raw.githubusercontent.com/pan-unit42/iocs/master/diamondfox/diamondfox_panels.txt" -O $INTEL_DIR/009_pan-unit42-diamondfox-panels.csv
wget -q --show-progress -c "https://home.nuug.no/~peter/pop3gropers.txt" -O $INTEL_DIR/010_pop3-gropers-ipblocklist.csv
wget -q --show-progress -c "https://ransomwaretracker.abuse.ch/feeds/csv/" -O $INTEL_DIR/011_ransomwaretracker-abuse.csv
wget -q --show-progress -c "https://feodotracker.abuse.ch/downloads/ipblocklist.csv" -O $INTEL_DIR/012_feodotracker-abuse-ipblocklist.csv

wget -q --show-progress -c "https://hosts-file.net/psh.txt" -O $INTEL_DIR/temp-hphosts-file-psh.csv
wget -q --show-progress -c "https://hosts-file.net/emd.txt" -O $INTEL_DIR/temp-hphosts-file-emd.csv
wget -q --show-progress -c "https://hosts-file.net/grm.txt" -O $INTEL_DIR/temp-hphosts-domains.csv

wget -q --show-progress -c "https://openphish.com/feed.txt" -O $INTEL_DIR/013_openphish-free.csv
wget -q --show-progress -c "https://raw.githubusercontent.com/ktsaou/blocklist-ipsets/master/firehol_level1.netset" -O $INTEL_DIR/014_firehol-level1.csv

wget -q --show-progress -c "http://osint.bambenekconsulting.com/feeds/c2-ipmasterlist-high.txt" -O $INTEL_DIR/015_bambek-c2-iplist.csv
wget -q --show-progress -c  "http://osint.bambenekconsulting.com/feeds/c2-dommasterlist-high.txt" -O $INTEL_DIR/015_bambek-malicious-c2-domains.csv
wget -q --show-progress -c  "http://osint.bambenekconsulting.com/feeds/dga-feed-high.csv" -O $INTEL_DIR/015_bambek-malicious-dga-domains.csv

wget -q --show-progress -c  "http://cinsscore.com/list/ci-badguys.txt" -O $INTEL_DIR/016_cinsscore-ci-badguys.csv
wget -q --show-progress -c  "http://reputation.alienvault.com/reputation.generic" -O $INTEL_DIR/017_alienvault-generic.csv
wget -q --show-progress -c  "https://lists.blocklist.de/lists/all.txt" -O $INTEL_DIR/018_blocklist-de-all.csv

wget -q --show-progress -c  "https://dataplane.org/vncrfb.txt" -O $INTEL_DIR/019_dataplane-vnc.csv
wget -q --show-progress -c  "https://dataplane.org/sshpwauth.txt" -O $INTEL_DIR/019_dataplane-ssh-attackers.csv
wget -q --show-progress -c  "https://dataplane.org/sipregistration.txt" -O $INTEL_DIR/019_dataplane-sip-register.csv
wget -q --show-progress -c  "https://dataplane.org/sipquery.txt" -O $INTEL_DIR/019_dataplane-sip-query.csv
wget -q --show-progress -c  "https://dataplane.org/sipinvitation.txt" -O $INTEL_DIR/019_dataplane-sip-invitation.csv

wget -q --show-progress -c  "http://vxvault.net/URL_List.php" -O $INTEL_DIR/temp-vxvault.csv

wget -q --show-progress -c  "https://sslbl.abuse.ch/blacklist/sslipblacklist.csv" -O $INTEL_DIR/021_sslbl-abuse-ipblacklist.csv
wget -q --show-progress -c  "https://sslbl.abuse.ch/blacklist/sslblacklist.csv" -O $INTEL_DIR/021_sslbl-abuse-blacklist.csv
wget -q --show-progress -c  "https://urlhaus.abuse.ch/downloads/csv/" -O $INTEL_DIR/021_urlhaus-abuse-malwaredomainlist.csv

#wget -q --show-progress -c  "https://sslbl.abuse.ch/blacklist/dyre_sslipblacklist.csv" -O $INTEL_DIR/dyressl-abuse-ipblacklist.csv

wget -q --show-progress -c  "https://blocklist.greensnow.co/greensnow.txt" -O $INTEL_DIR/024_greensnow-ipblocklist.csv
wget -q --show-progress -c  "http://www.cert.at/static/downloads/data/conficker/all_domains.txt" -O $INTEL_DIR/025_conficker-domains.csv

wget -q --show-progress -c  "https://gitlab.com/ZeroDot1/CoinBlockerLists/raw/master/list.txt?inline=false" -O $INTEL_DIR/026_coinblockers-domains-all.csv
wget -q --show-progress -c  "https://gitlab.com/ZeroDot1/CoinBlockerLists/raw/master/list_optional.txt?inline=false" -O $INTEL_DIR/026_coinblockers-domains-optional.csv
wget -q --show-progress -c  "https://gitlab.com/ZeroDot1/CoinBlockerLists/raw/master/list_browser.txt?inline=false" -O $INTEL_DIR/026_coinblockers-domains-browser.csv

wget -q --show-progress -c  "http://api.cybercure.ai/feed/get_ips?type=csv" -O $INTEL_DIR/temp-cybercure-ipblocklist.csv
wget -q --show-progress -c  "http://api.cybercure.ai/feed/get_url?type=csv" -O $INTEL_DIR/temp-cybercure-blocked-urls.csv
wget -q --show-progress -c  "http://api.cybercure.ai/feed/get_hash?type=csv" -O $INTEL_DIR/temp-cybercure-hashes.csv

wget -q --show-progress -c  "http://www.ipspamlist.com/public_feeds.csv" -O $INTEL_DIR/028_ipspamlist.csv
wget -q --show-progress -c  "https://mirai.security.gives/data/ip_list.txt" -O $INTEL_DIR/029_security-gives.csv

wget -q --show-progress -c  "https://malsilo.gitlab.io/feeds/dumps/url_list.txt" -O $INTEL_DIR/030_mal-silo-urls.csv
wget -q --show-progress -c  "https://malsilo.gitlab.io/feeds/dumps/ip_list.txt" -O $INTEL_DIR/030_mal-silo-ips.csv

wget -q --show-progress -c  "https://malshare.com/daily/malshare.current.all.txt" -O $INTEL_DIR/temp-malshare-hashes.csv
wget -q --show-progress -c  "http://benkow.cc/export_rat.php" -O $INTEL_DIR/032_benkow-rat.csv
#wget -q --show-progress -c  "https://www.dan.me.uk/torlist/?exit" -O $INTEL_DIR/tor-exit-nodes.csv
#wget -q --show-progress -c  "https://www.dan.me.uk/torlist/" -O $INTEL_DIR/tor-all-nodes.csv

# File Cleanups
sed -i -e '$a\' $INTEL_DIR/004_appspot-malwaredomainlist.csv
sed -i -e 's/\\"//g' $INTEL_DIR/011_ransomwaretracker-abuse.csv
sed '1,7 {s/^/#/}' $INTEL_DIR/temp-hphosts-file-psh.csv > $INTEL_DIR/temp-hphosts-file-psh2.csv
sed '1,7 {s/^/#/}' $INTEL_DIR/temp-hphosts-file-emd.csv > $INTEL_DIR/temp-hphosts-file-emd2.csv
sed '1,7 {s/^/#/}' $INTEL_DIR/temp-hphosts-domains.csv > $INTEL_DIR/temp-hphosts-domains2.csv
tr '\t' ',' < $INTEL_DIR/temp-hphosts-file-psh2.csv > $INTEL_DIR/hphosts-psh.csv
tr '\t' ',' < $INTEL_DIR/temp-hphosts-file-emd2.csv > $INTEL_DIR/hphosts-emd.csv
tr '\t' ',' < $INTEL_DIR/temp-hphosts-domains2.csv > $INTEL_DIR/hphosts-domains.csv
sed '1,4 {s/^/#/}' $INTEL_DIR/temp-vxvault.csv > $INTEL_DIR/temp-vxvault2.csv
tr -d '\r' < $INTEL_DIR/temp-vxvault2.csv > $INTEL_DIR/020_vxvault-url-list.csv

tr ',' '\n' < $INTEL_DIR/temp-cybercure-ipblocklist.csv > $INTEL_DIR/027_cybercure-ipblocklist.csv
tr ',' '\n' < $INTEL_DIR/temp-cybercure-blocked-urls.csv > $INTEL_DIR/027_cybercure-blocked-urls.csv
tr ',' '\n' < $INTEL_DIR/temp-cybercure-hashes.csv > $INTEL_DIR/027_cybercure-hashes.csv
sed -i -e '$a\' $INTEL_DIR/027_cybercure-ipblocklist.csv
sed -i -e '$a\' $INTEL_DIR/027_cybercure-blocked-urls.csv
sed -i -e '$a\' $INTEL_DIR/027_cybercure-hashes.csv
tr '\t' ',' < $INTEL_DIR/temp-malshare-hashes.csv > $INTEL_DIR/031_malshare-hashes.csv

rm -rvf $INTEL_DIR/temp*
