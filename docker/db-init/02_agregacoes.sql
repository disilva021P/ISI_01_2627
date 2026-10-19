CREATE TABLE IF NOT EXISTS tb_agg_marca (
  marca_final VARCHAR(100), n_modelos BIGINT, unidades_total BIGINT, preco_medio_eur DOUBLE);
CREATE TABLE IF NOT EXISTS tb_agg_loja (
  loja VARCHAR(50), n_modelos BIGINT, unidades_total BIGINT, preco_medio_eur DECIMAL(10,2));
