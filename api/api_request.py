import requests

data = {
    "email": "3@3.ru",
    "birthday": "2004-09-06",
    "description": "",
    # "avatar": "/home/diman/PyCharmProjects/LMS5_Project/static/avatar.png",
    "name": "Петр Петров",
    "password": "qedwewer%23jhb"
}

auth_data = dict(
    username='Avtor@avtor.ru',
    password='Test@135'
)


import base64
from requests.auth import HTTPBasicAuth
userpass="{0}:{1}".format(auth_data['username'], auth_data['password'])
userpass_encoded = base64.b64encode(userpass.encode()).decode()
print(userpass_encoded)

# response = requests.get(url='http://127.0.0.1:8000/api/courses/', headers={
  #  'Authorization': "Token b7788de56868d62ed1af639518072a6ab48efcbf"
  # })

response = requests.post(url='http://127.0.0.1:8000/api/generate-token/', data=auth_data)

print(response.text, response.status_code)