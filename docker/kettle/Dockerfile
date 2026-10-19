# Usa o PDI que ja tens instalado (copiado para a pasta pdi/), logo e a mesma versao do Spoon
# e ja traz o conector MySQL que usas la.
# Se o teu PDI for a versao 10.x, troca a imagem de base por eclipse-temurin:17-jre
FROM eclipse-temurin:11-jre
COPY pdi /opt/pdi
COPY entrypoint.sh /entrypoint.sh
RUN sed -i 's/\r$//' /entrypoint.sh /opt/pdi/*.sh \
 && chmod +x /entrypoint.sh /opt/pdi/*.sh
ENTRYPOINT ["/entrypoint.sh"]
