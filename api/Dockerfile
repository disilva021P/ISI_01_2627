# TEMPLATE: copia para esta pasta o teu script da API e o especificacoes.json
# Ajusta o nome do script no CMD. O script tem de escutar em 0.0.0.0:8000 (nao em localhost).
FROM python:3.12-slim
WORKDIR /app
COPY . .
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi
EXPOSE 8000
CMD ["python", "servidor.py"]
