# proxybroker find --types HTTP HTTPS SOCKS4 SOCKS5 -l 50 -c ID -o get.txt
proxybroker grab -l 150 -c ID -o get.txt
cat get.txt | awk -F "] " '{print $2}' | awk -F ">" '{print $1}' > result.txt
# proxybroker find --types HTTP HTTPS SOCKS4 SOCKS5 -l 700 -o get.txt
proxybroker grab -l 3500 -o get.txt
cat get.txt | awk -F "] " '{print $2}' | awk -F ">" '{print $1}' >> result.txt
echo "get another proxy list"
python3 get_proxy.py
python3 get_proxy_again.py
curl https://spys.me/socks.txt | awk -F 'Free SOCKS5 proxy' '{print $1}' | awk -F ' ' '{print $1}' | tr -d 'ProxyHtpSuBTCI' >> result_v2.txt