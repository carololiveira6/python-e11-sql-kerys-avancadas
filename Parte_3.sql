-- Primeiro SELECT
SELECT *
FROM enderecos

-- Segundo SELECT
SELECT *
FROM 
	enderecos
JOIN 
	usuarios
	ON usuarios.endereco_id = enderecos.id
ORDER BY enderecos.id

-- Terceiro SELECT 
SELECT rs.id, rs.nome, u.id, u.nome, u.email, u.senha, u.endereco_id 
FROM 
	(SELECT * FROM usuario_rede_sociais) urs
JOIN 
	redes_sociais rs 
	ON urs.rede_social_id = rs.id
JOIN 
	usuarios u 
	ON urs.usuario_id = u.id 
	
--Quarto SELECT 
SELECT 
	rs.id, rs.nome, u.id, u.nome, u.email, u.senha, u.endereco_id, e.id, e.rua, e.pais, e.cidade 
FROM 
	(SELECT * FROM usuario_rede_sociais) urs
JOIN 
	redes_sociais rs 
	ON urs.rede_social_id = rs.id
JOIN 
	usuarios u 
	ON urs.usuario_id = u.id 
JOIN 
	enderecos e 
	ON u.endereco_id = e.id 
	
-- Quinto SELECT 
SELECT 
	rs.nome, u.nome, u.email, e.cidade 
FROM 
	(SELECT * FROM usuario_rede_sociais) urs
JOIN 
	redes_sociais rs 
	ON urs.rede_social_id = rs.id
JOIN 
	usuarios u 
	ON urs.usuario_id = u.id 
JOIN 
	enderecos e 
	ON u.endereco_id = e.id 
	
-- Sexto SELECT 
SELECT 
	rs.nome, u.nome, u.email, e.cidade 
FROM 
	(SELECT * FROM usuario_rede_sociais) urs
JOIN 
	usuarios u 
	ON urs.usuario_id = u.id 
JOIN 
	enderecos e 
	ON u.endereco_id = e.id 
JOIN 
	redes_sociais rs 
	ON urs.rede_social_id = rs.id
		WHERE rs.nome = 'Youtube'

-- Sétimo SELECT 
SELECT 
	rs.nome, u.nome, u.email, e.cidade 
FROM 
	(SELECT * FROM usuario_rede_sociais) urs
JOIN 
	usuarios u 
	ON urs.usuario_id = u.id 
JOIN 
	enderecos e 
	ON u.endereco_id = e.id 
JOIN 
	redes_sociais rs 
	ON urs.rede_social_id = rs.id
		WHERE rs.nome = 'Instagram'

-- Oitavo SELECT
SELECT 
	rs.nome, u.nome, u.email, e.cidade 
FROM 
	(SELECT * FROM usuario_rede_sociais) urs
JOIN 
	usuarios u 
	ON urs.usuario_id = u.id 
JOIN 
	enderecos e 
	ON u.endereco_id = e.id 
JOIN 
	redes_sociais rs 
	ON urs.rede_social_id = rs.id
		WHERE rs.nome = 'Facebook'
		
-- Nono SELECT
SELECT 
	rs.nome, u.nome, u.email, e.cidade 
FROM 
	(SELECT * FROM usuario_rede_sociais) urs
JOIN 
	usuarios u 
	ON urs.usuario_id = u.id 
JOIN 
	enderecos e 
	ON u.endereco_id = e.id 
JOIN 
	redes_sociais rs 
	ON urs.rede_social_id = rs.id
		WHERE rs.nome = 'TikTok'
		
-- Décimo SELECT
SELECT 
	rs.nome, u.nome, u.email, e.cidade 
FROM 
	(SELECT * FROM usuario_rede_sociais) urs
JOIN 
	usuarios u 
	ON urs.usuario_id = u.id 
JOIN 
	enderecos e 
	ON u.endereco_id = e.id 
JOIN 
	redes_sociais rs 
	ON urs.rede_social_id = rs.id
		WHERE rs.nome = 'Twitter'		