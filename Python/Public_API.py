import requests
import time
import pandas as pd

url = "https://api.openbrewerydb.org/breweries/"
response = requests.get(url)
result = response.json()

result[0]['name']

names = []
brewery_types = []
citys = []
states = []

for i in range(1, 2):
  url = f"https://api.openbrewerydb.org/breweries/?page={i}&per_page=11"
  resp = requests.get(url)
  result = resp.json()
  for x in range(0, 11):
    names.append(result[x]['name'])
    brewery_types.append(result[x]['brewery_type'])
    citys.append(result[x]['city'])
    states.append(result[x]['state'])
    time.sleep(1) #seconds
#print(names, brewery_types, citys, states)

df = pd.DataFrame({
  "name": names, "brewery_type": brewery_types, "city": citys, "state": states
})

df
