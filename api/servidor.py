"""API REST do UniPhone: devolve as especificacoes tecnicas em JSON.
Sem dependencias externas. Correr:  python api_especificacoes.py
Endpoints:
  GET http://localhost:5000/api/especificacoes             -> todas
  GET http://localhost:5000/api/especificacoes?marca=Nokia -> filtra por marca
"""
import json
from http.server import BaseHTTPRequestHandler, HTTPServer
from urllib.parse import urlparse, parse_qs

with open("especificacoes.json", encoding="utf-8") as f:
    DADOS = json.load(f)

class Handler(BaseHTTPRequestHandler):
    def _enviar(self, codigo, corpo):
        dados = json.dumps(corpo, ensure_ascii=False, indent=2).encode("utf-8")
        self.send_response(codigo)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(dados)))
        self.end_headers()
        self.wfile.write(dados)

    def do_GET(self):
        url = urlparse(self.path)
        if url.path != "/api/especificacoes":
            return self._enviar(404, {"erro": "rota nao encontrada"})
        marca = parse_qs(url.query).get("marca", [None])[0]
        resultado = [d for d in DADOS if not marca or d["marca"].lower() == marca.lower()]
        self._enviar(200, resultado)

if __name__ == "__main__":
    print("API a correr em http://localhost:8000/api/especificacoes")
    HTTPServer(("0.0.0.0", 8000), Handler).serve_forever()