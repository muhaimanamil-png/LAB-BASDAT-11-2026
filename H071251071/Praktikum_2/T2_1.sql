--Soal 1
INSERT INTO mahasiswa (nim,nama,email,id_prodi)
VALUES
	('H071251071', 'Aiman Amil', 'muh.aimanamil@gmail.com', 1),
	('G072653029', 'Nabilah Rahmawati', 'bilarrubik@gmail.com', 3),
	('K087137086', 'Nazhifah Dhiya', NULL, 2)
RETURNING *;