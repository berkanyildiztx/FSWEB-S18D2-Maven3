
-- 1) Biyografi türünü tür tablosuna ekleyiniz.
SELECT * FROM tur;
INSERT INTO tur (ad) VALUES ('Biyografi');

-- 2) Nurettin Belek isimli yazarı yazar tablosuna ekleyiniz.
SELECT * FROM yazar;
INSERT INTO yazar (ad, soyad) VALUES ('Nurettin', 'Belek');

-- 3) 10B sınıfındaki öğrencileri 10C sınıfına geçirin.
SELECT * FROM ogrenci;
UPDATE ogrenci SET sinif = '10C' WHERE sinif = '10B';

-- 4) Tüm kitapların puanını 5 puan arttırınız.
SELECT * FROM kitap;
UPDATE kitap SET puan = puan + 5;

-- 5) Adı Mehmet olan tüm yazarları silin.
DELETE FROM yazar WHERE ad = 'Mehmet';

-- 6) Kişisel Gelişim isimli bir tür oluşturun.
INSERT INTO tur (ad) VALUES ('Kişisel Gelişim');

-- 7) 'Benim Üniversitelerim' isimli kitabın türünü 'Kişisel Gelişim' yapın.
UPDATE kitap SET turno = 7 WHERE ad = 'Benim Üniversitelerim';

-- 8) Öğrenci tablosunu kontrol etmek amaçlı tüm öğrencileri görüntüleyen "ogrencilistesi" adında 
-- bir fonksiyon oluşturun.
CREATE OR REPLACE FUNCTION ogrencilistesi()
RETURNS SETOF ogrenci AS
$$
BEGIN
	RETURN QUERY
	SELECT * FROM ogrenci;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM ogrencilistesi();

-- 9) kitap tablosuna yeni kitap eklemek için "ekle" adında bir prosedür oluşturun.
CREATE OR REPLACE PROCEDURE ekle (
    IN p_ad character varying,
    IN p_puan integer,
    IN p_yazarno bigint,
    IN p_turno bigint
)
AS $$
BEGIN
    INSERT INTO kitap(ad, puan, yazarno, turno) 
    VALUES(p_ad, p_puan, p_yazarno, p_turno);
END;
$$ LANGUAGE plpgsql;
-- CALL ekle('Test', 100, 1, 1);

-- 10) Öğrenci noya göre öğrenci silebilmeyi sağlayan "sil" adında bir prosedür oluşturun.
CREATE OR REPLACE PROCEDURE ekle (
    IN silinecekOgrNo character varyin,
)
AS $$
BEGIN
    INSERT INTO kitap(ad, puan, yazarno, turno) 
    VALUES(p_ad, p_puan, p_yazarno, p_turno);
END;
$$ LANGUAGE plpgsql;

-- Inceleme sorgulari
SELECT * FROM yazar;
SELECT * FROM tur;
SELECT * FROM ogrenci;
SELECT * FROM kitap;

SELECT * FROM ogrencilistesi();
