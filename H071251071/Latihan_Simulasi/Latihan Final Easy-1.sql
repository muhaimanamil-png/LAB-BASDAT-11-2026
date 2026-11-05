--EASY SOAL 1
CREATE TABLE cabang_gudang(
	id_cabang INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	kota_cabang VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE paket_kiriman(
	no_resi VARCHAR(12) NOT NULL PRIMARY KEY,
	nama_penerima VARCHAR(100) NOT NULL,
	tgl_kirim DATE NOT NULL,
	ongkir NUMERIC(10,2) DEFAULT 10000.00 CHECK (ongkir > 0),
	id_cabang INT REFERENCES cabang_gudang(id_cabang)
);