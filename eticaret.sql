-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 18 Oca 2023, 14:41:28
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_title` varchar(250) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_description` varchar(250) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_author` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_tel` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_gsm` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_faks` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_mail` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_ilce` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_il` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_adres` varchar(250) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_maps` varchar(250) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_analystic` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_zopim` varchar(250) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_facebook` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_twitter` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_google` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_youtube` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_smtphost` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_smtppassword` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_smtpport` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_keywords` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `ayar_smtpuser` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_title`, `ayar_description`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_keywords`, `ayar_smtpuser`) VALUES
(0, NULL, 'e-ticaret sitesiii', 'e-ticaret sitesi ödeviii', 'E-ticaret sitesiii', '05059813926', '05059813926', '05059813926', 'infoyusufcyrr@hotmail.com.tr', 'Merkez', 'Kütahya', 'Kütahya Merkez', '7/24 ticaret sitesii', 'ayar_maps_apii', 'ayar_analystic_apiii', 'ayar_zopim_apii', 'www.facebook.com', 'https://twitter.com/Yusufcyrr', 'www.google.com', 'www.youtube.com', 'mail.alanadiniz.com', 'password', '587', 'eticaret,odev,sitee', 'Userr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `hakkimizda_icerik` longtext COLLATE utf8mb3_turkish_ci,
  `hakkimizda_video` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `hakkimizda_vizyon` longtext COLLATE utf8mb3_turkish_ci,
  `hakkimizda_misyon` longtext COLLATE utf8mb3_turkish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Yusuf Çayır E-ticaret baslikk', 'Yusuf Çayır E-ticaret icerikk', 'rjVwnkk7lx0', 'Yusuf Çayır E-ticaret vizyon', 'Yusuf Çayır E-ticaret misyon');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int NOT NULL,
  `kullanici_zaman` datetime DEFAULT NULL,
  `kullanici_resim` varchar(250) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `kullanici_tc` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `kullanici_ad` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `kullanici_mail` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `kullanici_gsm` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `kullanici_password` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `kullanici_adsoyad` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `kullanici_adres` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `kullanici_il` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `kullanici_ilce` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `kullanici_unvan` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `kullanici_yetki` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `kullanici_durum` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(1, '2023-01-10 00:00:00', NULL, '22115367120', 'Yusuf', 'yusufcyrr@hotmail.com', '05059813926', '123456', 'Yusuf Çayır', NULL, NULL, NULL, NULL, '5', NULL),
(2, '2023-01-11 00:00:00', NULL, '27362362535', 'Umut', 'umutcanglhr@hotmail.com', '05058564633', '123', 'Umut Gülher', NULL, NULL, NULL, NULL, '5', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int NOT NULL,
  `ad` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `sifre` varchar(45) COLLATE utf8mb3_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `ad`, `sifre`) VALUES
(1, 'yusuf', '202cb962ac59075b964b07152d234b70');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
