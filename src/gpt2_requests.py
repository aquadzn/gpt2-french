import requests


req = requests.post('http://0.0.0.0:8080', json={'length': 300,
                                                 'temperature': 0.7,
                                                 'top_k': 40,
                                                 'prefix': 'Tennis > '})
text = req.json()['text']

print(text)
