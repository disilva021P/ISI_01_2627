#!/bin/sh
set -e
# trabalha numa copia dos .ktr/.kjb para nao alterar os originais
mkdir -p /work /project/data /project/output/erros /project/logs
cp /project/*.ktr /project/*.kjb /work/
for d in data output logs; do ln -sfn /project/$d /work/$d; done
# dentro do Docker, "localhost" passa a ser o nome dos servicos
sed -i 's#<server>localhost</server>#<server>db</server>#g' /work/*.ktr
sed -i 's#http://localhost:8000#http://api:8000#g' /work/*.ktr
exec /opt/pdi/kitchen.sh -file=/work/Job_Principal.kjb -level=Basic \
  -param:SMTP_SERVER="$SMTP_SERVER" -param:SMTP_PORT="$SMTP_PORT" \
  -param:EMAIL_USER="$EMAIL_USER" -param:EMAIL_ORIGEM="$EMAIL_ORIGEM" \
  -param:EMAIL_DESTINO="$EMAIL_DESTINO" -param:EMAIL_PASSWORD="$EMAIL_PASSWORD"
