proxybroker find --types HTTP HTTPS SOCKS4 SOCKS5 -l 40 -c ID -o get.txt
cat get.txt | awk -F "] " '{print $2}' | awk -F ">" '{print $1}' > result.txt
proxybroker find --types HTTP HTTPS SOCKS4 SOCKS5 -l 700 -o get.txt
cat get.txt | awk -F "] " '{print $2}' | awk -F ">" '{print $1}' >> result.txt