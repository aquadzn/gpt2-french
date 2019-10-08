### Pour envoyer une requête:

```bash
curl -d '{"length": 300, "temperature": 0.7, "top_k": 40, "prefix": "Le monde de la finance"}' -X POST http://0.0.0.0:8080 | jq -r .text
```

ou

```bash
python gpt2_requests.py
```
