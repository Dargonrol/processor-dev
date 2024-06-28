import requests


for pic in range(0, 265):
    url = f'https://files.faproulette.co/images/chat/big/trap_{pic}.jpg'
    page = requests.get(url)

    f_name = url.split('/')[-1]
    with open(f"pics/trap/{f_name}", 'wb') as f:
        print(f"downloading pic: {f_name}")
        f.write(page.content)
