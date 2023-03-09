import requests
import re
import os

## get 8k proxy
fp_unchecked = '{0}/{1}.txt'.format(os.getcwd(), 'result_v2')
with open(fp_unchecked, 'w+') as f:
    for number in range(1,4):
        r = requests.get('https://proxylist.geonode.com/api/proxy-list?limit=500&page='+str(number)+'&sort_by=lastChecked&sort_type=desc')
        data = r.json()
        for i in data['data']:
            proxy = i['ip'] + ':' + i ['port']
            f.write(proxy + '\n')
            print(proxy)
