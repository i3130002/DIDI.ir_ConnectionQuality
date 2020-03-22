
import mysql.connector
import json
import sys
sys.stdout.reconfigure(encoding='utf-8')
with open('data.json', encoding="utf-8'") as f:
  data = json.load(f)


def startindex():
  # this can be improved so that automatically detects start of connection log.
  return 8

def getRecord(index):
  i = startindex()+index
  import mock
  res = mock.Mock()
  res.index = index
  res.service = data[i]["تاریخ"]
  res.ip = data[i]["مبلغ"]
  mac = data[i]["سبد خرید"]
  text = "class=\"ng-binding ng-scope\"> "
  res.mac = mac[mac.find(text)+len(text):mac.find(text)+len(text)+17]
  res.upload = data[i][""]
  res.download = data[i]["#"]
  res.credit = data[i]["SERVICE"]
  res.duration = data[i]["IP"]
  res.logout = data[i]["MAC"]
  res.login = data[i]["UPLOAD"]
  return res

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="my.didi_connectionLog"
)

mycursor = mydb.cursor()

sql = "INSERT INTO connectionLog (id,service,ip,mac,upload,download,credit,duration,logout,login) VALUES (%s,%s, %s,%s,%s,%s,%s,%s,%s,%s)"
val = []
for i in range(0,len(data)-startindex()):
  record = getRecord(i)
  val.append([record.index+0, record.service, record.ip, record.mac, record.upload,
        record.download, record.credit, record.duration, record.logout, record.login])

mycursor.executemany(sql, val)

mydb.commit()

print(mycursor.rowcount, "records inserted.")
