import requests

data = {
    "email": "3@3.ru",
    "birthday": "2004-09-06",
    "description": "",
    # "avatar": "/home/diman/PyCharmProjects/LMS5_Project/static/avatar.png",
    "name": "Петр Петров",
    "password": "qedwewer%23jhb"
}

response = requests.post(url='http://127.0.0.1:8000/api/users/', data=data,
                         files={'avatar': open('/home/diman/PyCharmProjects/LMS5_Project/static/avatar.png', 'rb')})

print(response.text, response.status_code)