!pip install gazpacho

from gazpacho import Soup
from requests import get

url = "https://10times.com/thailand"

resp = get(url)
resp.status_code

event = Soup(resp.text)

blogs = []
dates = []
locations = []
interesteds = []
tags = []
ratings = []

trs = event.find("tr", {'class':'event-card'})
for tr in trs:
  tds = tr.find("td")
  date = tds[0].strip()
  title = tds[1].find("h2", mode='first').strip()
  location = tds[2].strip()
  _tags = [tag.strip() for tag in tds[4].find("span")]
  interested = tds[5].find("a", mode='first').strip()
  try:
    rating = tds[5].find("a")[1].strip()
  except:
    rating = None
  blogs.append(title)
  dates.append(date)
  locations.append(location)
  interesteds.append(interested)
  tags.append(_tags)
  ratings.append(rating)
  
import pandas as pd
thailand_event = pd.DataFrame({
    "event": blogs,
    "date": dates,
    "location": locations,
    "tag" : tags,
    "rating": ratings,
    "interested": interesteds
})

thailand_event.head(15)
