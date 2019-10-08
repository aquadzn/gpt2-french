import requests


req = requests.post(CLOUDRUN_URL, json={'length': 200, 'temperature': 0.7, 'top_k': 40, 'prefix': 'Actualités > '})
text = req.json()['text']

print(text)