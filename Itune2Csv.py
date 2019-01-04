# This program selects all the music of an artist (Daddy Lumba)
# on itunes and converts them into a CSV file.

import requests
import json
import csv

#***************************************************************
#import and select key elements in file from itunes
url='https://itunes.apple.com/search?term=daddy+lumba'
webdata=requests.get(url)
j_data=json.loads(webdata.text)
songs=j_data['results']
print(type(songs))
songKeys=songs[1].keys()
newkey=[]
for k in songKeys:
    newkey.append(k)
print(newkey)

#***************************************************************
#create csv file
with open('names22.csv','w',encoding = 'utf-8' ) as csvfile:
    writer = csv.DictWriter(csvfile, fieldnames=newkey)
    writer.writeheader()
    for data1 in songs:
            writer.writerow(data1)
    