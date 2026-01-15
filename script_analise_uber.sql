CREATE DATABASE projeto_uber;

USE projeto_uber;

CREATE TABLE corridas_uber (
    id_corrida INT AUTO_INCREMENT PRIMARY KEY,
    data_corrida DATE,
    valor_total DECIMAL(10,2),
    tempo_espera_minutos INT,
    tempo_viagem_minutos INT,
    distancia_km DECIMAL(10,2)
);

INSERT INTO corridas_uber (data_corrida, valor_total, tempo_espera_minutos, tempo_viagem_minutos, distancia_km)
VALUES 
('2026-01-07', 9.40, 2, 14, 4.30),
('2026-01-07', 6.99, 2, 7, 2.82),
('2026-01-07', 7.00, NULL, 12, 3.70),
('2026-01-07', 29.90, NULL, 73, 13.00),
('2026-01-07', 6.99, 0, 8, 1.41),
('2026-01-07', 9.27, NULL, 7, 2.10),
('2026-01-07', 10.40, NULL, 11, 3.40),
('2026-01-07', 6.99, NULL, 6, 3.05),
('2026-01-11', 11.00, NULL, 14, 5.50),
('2026-01-11', 9.10, NULL, 14, 5.20),
('2026-01-11', 6.66, NULL, 10, 3.70),
('2026-01-11', 9.50, NULL, 11, 3.10),
('2026-01-11', 8.70, NULL, 8, 3.10),
('2026-01-11', 14.63, 3, 25, 11.76),
('2026-01-11', 21.70, NULL, 21, 10.30),
('2026-01-11', 17.33, NULL, 21, 10.50),
('2026-01-11', 21.25, NULL, 4, 1.84),
('2026-01-11', 12.80, NULL, 14, 5.65),
('2026-01-11', 24.21, NULL, 24, 10.83),
('2026-01-11', 18.90, NULL, 20, 9.24),
('2026-01-15', 7.00, NULL, 9, 2.60),
('2026-01-15', 11.70, NULL, 16, 6.10),
('2026-01-15', 12.00, NULL, 16, 6.20),
('2026-01-15', 6.99, NULL, 9, 2.56),
('2026-01-15', 9.39, 2, 15, 3.70),
('2026-01-15', 6.99, NULL, 9, 2.28),
('2026-01-15', 6.99, NULL, 10, 2.57),
('2026-01-15', 10.83, 4, 18, 3.97),
('2026-01-15', 9.53, 1, 16, 3.51),
('2026-01-15', 7.53, 1, 15, 2.58),
('2026-01-15', 7.26, NULL, 10, 3.92),
('2026-01-15', 8.47, NULL, 11, 3.28),
('2026-01-15', 11.83, NULL, 15, 4.30),
('2026-01-15', 7.81, NULL, 7, 3.39);

SELECT 
    COUNT(*) AS total_corridas,
    SUM(valor_total) AS faturamento_bruto,
    SUM(distancia_km) AS km_total,
    ROUND(SUM(valor_total) / SUM(distancia_km), 2) AS lucro_por_km
FROM corridas_uber;

SELECT 
    data_corrida,
    COUNT(*) AS total_corridas,
    SUM(valor_total) AS faturamento_dia,
    ROUND(AVG(valor_total), 2) AS ticket_medio,
    ROUND(SUM(valor_total) / SUM(distancia_km), 2) AS lucro_por_km
FROM corridas_uber
GROUP BY data_corrida;
