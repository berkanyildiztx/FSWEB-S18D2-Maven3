-- Biyografi türünü tür tablosuna ekleyin:
INSERT INTO public.tur(ad) VALUES('Biyografi');

-- Nurettin Belek isimli yazarı yazar tablosuna ekleyin:
INSERT INTO public.yazar(ad, soyad) VALUES('Nurettin', 'Belek');

INSERT INTO public.ogrenci(ad, soyad, cinsiyet, sinif, puan, dtarih)
VALUES ('Tayfun', 'Yildiz', 'E', '10G', 0, '1991-07-12 00:00:00');

UPDATE public.ogrenci
SET sinif = '10G'
WHERE ad = 'Tayfun' AND soyad = 'Yildiz';


-- 10B sınıfındaki öğrencileri 10C sınıfına geçirin:
UPDATE public.ogrenci SET sinif = '10C' WHERE sinif = '10B';

-- Tüm kitapların puanını 5 puan arttırın:
UPDATE public.kitap SET puan = puan + 5;

-- Adı Mehmet olan tüm yazarları silin:
DELETE FROM public.yazar WHERE ad = 'Mehmet';


-- Kişisel Gelişim isimli bir tür oluşturun:
INSERT INTO public.tur(ad) VALUES('Kişisel Gelişim');

-- 'Benim Üniversitelerim' isimli kitabın türünü 'Kişisel Gelişim' yapın:
UPDATE public.kitap SET turno = (SELECT turno FROM public.tur WHERE ad = 'Kişisel Gelişim')
WHERE ad = 'Benim Üniversitelerim';

-- Öğrenci tablosunu kontrol etmek amaçlı tüm öğrencileri görüntüleyen "ogrencilistesi" adında bir fonksiyon oluşturun:



-- kitap tablosuna yeni kitap eklemek için "ekle" adında bir prosedür oluşturun:


-- Öğrenci noya göre öğrenci silebilmeyi sağlayan "sil" adında bir prosedür oluşturun:
