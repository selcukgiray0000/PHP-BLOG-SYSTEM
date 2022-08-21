-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Ağu 2022, 17:27:40
-- Sunucu sürümü: 10.4.24-MariaDB
-- PHP Sürümü: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `blogid` int(255) NOT NULL,
  `blogtitle` varchar(80) NOT NULL,
  `blogtext` mediumtext NOT NULL,
  `user` varchar(255) NOT NULL,
  `time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`blogid`, `blogtitle`, `blogtext`, `user`, `time`) VALUES
(19, ' Cristiano Ronaldo kimdir? - Tüm Spor Haber SPOR - TÜMSPOR', 'Cristiano Ronaldo dos Santos Aveiro, 5 Şubat 1985 tarihinde Portekiz’in Madeira şehrinde dünyaya gelmiştir.\r\n\r\nPortekiz milli takımının da formasını giyen Ronaldo, 2009 yılından beri, Real Madrid adını mücadele etmektedir. Çok küçük yaşlarda futbol oynamaya başlayan Ronaldo’ya babası, bir Ronald Reagan hayranı olmasından ötürü ”Ronaldo” ismini vermiştir. Ronaldo’nun Hugo, Elma ve Liliana Caita adında 1’i erkek toplam 3 kardeşi bulunmaktadır. Ronaldo’nun kökeni, Portekiz açıklarında yer alan Cape de Verde’ye kadar uzanmaktadır.\r\n\r\nKoyu bir Katolik aile içinde dünyaya gelen Ronaldo, oldukça duygusal ve dinine bağlı bir kişiliktir. Henüz 8 yaşında iken futbola olan ilgisi annesi tarafından keşfedilen Ronaldo, küçük yaşta futbol oynamaya başlamıştır. 8 yaşında iken Andorinha’da amatör olarak oynamaya başlayan Ronaldo, 1995 yılında 10 yaşında iken Nacional takımına imza atmıştır.\r\n\r\nBurada gösterdiği performans sebebiyle, Sporting Lizbon altyapısına üç günlüğüne denenmek için gönderilen Ronaldo bu fırsatı iyi değerlendirmiş ve bu sayede Sportin Lizbon’a imza atmıştır. Ronalda Sporting Lizbon altyapısında mücadele ederken kalp sorunu ortaya çıkmış kalp atışlarının aşırı hızlı olması nedeniyle futbolu oynamayı bırakması bile söz konusu olmuştur. Ancak Sporting Lizbon doktorlarının verdiği olumlu rapor sayesinde futbol oynamaya herhangi bir engeli olmadığı tespit edilebilmiştir.\r\n\r\nSporting Lizbon’un altyapısına katılan Ronaldo, burada birçok kademede görev almıştır. 2002 yılında A takıma yükselen Cristiano Ronaldo, henüz ilk maçında Moreirense ağlarını iki kez sarsarak gelecek vadeden bir futbolcu olduğunu tüm Portekiz’e ispatlamıştır. Bu dönemde Portekiz U17 milli takımının da formasını giymeye başlayan Ronaldo, Barcelona ve Manchester United’in gözlemcileri tarafından izlenme listesine dahil edilmiştir.\r\n\r\n2002 yılında Arsene Wenger’e önerilen Ronaldo’yu Wenger, ”o mevkiye ihtiyacımız yok” diyerek geri çevirmiştir. Bu dönemde adı Liverpool ve Barcelona ile de anılan Ronaldo, Quaresma’nın Barcelona’ya transfer olması sonucu gerekli nakdin tükenmesinden ötürü transfer edilememiştir. Liverpool’da 15 milyon euroluk teklifi aşırı bulunca Ronaldo, Sporting Lizbon’da kalmıştır.\r\n\r\n2002 yılında adı birçok kulüple anılan Ronaldo, çeşitli nedenlerden ötürü herhangi bir kulübe transfer olamamış ve bir yıl daha Sporting Lizbon’da forma giymeye devam etmiştir. 2003 yılının Temmuz ayında Sportin Lizbon ile Manchester United, Estadio Jose Alvalade Stadı’nın açılışı için karşı karşıya gelmişler ve Sporting maçtan 3-1’lik galibiyetle ayrılmştır. Bu maçta oynadığı futbol ile Alex Ferguson’u etkilemeyi başaran Cristiano Ronaldo, o ay, Manchester United’a 12,24 milyon sterlin karşılığında transfer olmuştur. Beckham’ı Real Madrid’e gönderen Manchester United, Cristiano Ronaldo’nun 28 numaralı formayı giymek istediğini söylemesine rağmen O’na daha iyi motive olması için, 7 numaralı formayı vermiştir.\r\n\r\nRonaldo ilk sezonunda 29 Premier Lig maçında çıkmış ve 4 gol atabilmiştir. Bir sonraki sezon ise 33 lig maçında görev alan Cristiano Ronaldo 5 gol atabilmiştir. 2005/06 sezonuyla beraber oyununu geliştiren Ronalda bu sezonda 9 kez fileleri havalandırma başarısı göstermiştir. Sonraki 3 sezonda ise, 66 gol atarak bütün dünyanın dikkatini çeken Cristiano Ronaldo, 2008 yılında Manchester United ile UEFA Şampiyonlar Ligi şampiyonluğu yaşamıştır. Bir sonraki yıl ise, Barcelona ile Roma’da oynana final 2-0 kaybedilmiş ve Ronaldo, Real Madrid’ten gelen 94 milyon euroluk teklife kayıtsız kalamamıştır.\r\n\r\n2009’un yazında Real Madrid’e resmen transferi gerçekleşen Ronaldo, burada ilk sezonunda 9 numaralı formayı giyen Ronaldo, 29 lig maçına çıkmış ve 26 gol atma başarısı göstermiştir. 2010/11 sezonunda Jose Mourinho’nun Real Madrid’in başına geçmesiyle beraber başka bir futbol yeteneğine dönüşen Ronaldo La Liga toplam 40 atarak, o sezon 50 gole ulaşan Messi’den sonra en çok gol atan futbolcu olmuştur. Real Madrid forması altında toplamda 197 La Liga maçına çıkan Cristiano Ronaldo, 219 gol atarak olağanüstü bir gol ortalaması yakalamıştır.\r\n\r\nAyrıca bu dönemde 60 Avrupa kupası maçına çıkan Ronaldo toplam 60 golde Avrupa’da atarak, UEFA Şampiyonlar Ligi’nde tüm zamanların en çok gol atan iki futbolcusundan biri olmuştur. Real Madrid’te forma giydiği dönemde sadece 1 kez lig şampiyonluğu yaşayan Ronaldo 1 kez UEFA Şampiyonlar Ligi’ni kazanma başarısı göstermiştir. Aynı zamanda 2008 yılında kazandığı Avrupa’nın en iyi futbolcusu ödülünün yanına iki kez daha bu ödülden ekleyerek en büyük rakibi Messi ile kıyasıya olan rekabeti sürdürmüştür.\r\n\r\nCristiano Ronaldo, Portekiz milli takımıyla da 52 gole ulaşarak Portekiz futbol tarihine geçmeyi başarmıştır. Ancak Portekiz milli takımıyla herhangi bir kupa kazanamayan Ronaldo, bunun neredeyse imkansız olduğunu da vurgulayarak arkadaşlarının da tepkisini çekmiştir. Ronaldo kulüp kariyeri boyunca çıktığı 418 lig maçında toplam 306 gole ulaşarak kırılması güç bir rekora da imza atmıştır. UEFA Şampiyonlar Ligi’nde ise çıktığı 119 lig maçında toplam 76 gol atmayı başarmış ve Real Madrid efsanesi olan Raul’u geride bırakmayı başarmıştır. Ronaldo, Real Madrid, ile 2013 yılında sözleşme yenilemiş ve 5 yıllık yeni sözleşmenin yıllık getirisi vergilerle beraber toplam 21 milyon euro olmuştur. İspanya devletine ödenecek vergiler düşüldüğü zaman yıllık sponsor gelirleri hariç 10 milyon euronun üzerinde bir garanti paraya oynamaktadır.', 'girayselcuk02', '2022-08-21 02:51:49.000000'),
(20, 'PHP\'de substr fonksiyonu', 'Php kütüphanesindeki önemli fonksiyonlardan bir tanesi de substr() fonksiyonudur. Karakter grubu üzerindeki belirlenen bölgeyi almaya yarar. Yani bir isim veya bir cümle üzerindeki belli bir parçayı kopyalayıp belirlediğimiz değişkene atamaya yarar.\r\n\r\nsubstr() Fonksiyonu Kullanımı:\r\nsubstr ($degisken, $baslangic, $sayi) şeklinde 3 adet bölüme sahiptir bunları inceleyecek olursak;\r\n- $degisken: Bu kısım işlemi yapacağımız cümle veya karakter grubunun bulunduğu değişkeni içerir.\r\n- $baslangic: Değişken içinde hangi karakterden kopyalama işlemine başlanacağını bu belirler. (-) negatif değerler alabilir.\r\n- $sayi: Başlangıç karakterinden itibaren kaç karakterin kopyalanacağını belirler.\r\n\r\nsubstr() Fonksiyon Örneği:\r\nÖrneğimizde \"beyaznet\" adlı kelimenin ilk 5 karakteri belirlediğimiz değişkene atamaya yarayan bir php kod hazırlayalım.\r\n\r\n<? php\r\n$degisken = \'beyaznet\';\r\n$sonhali = substr($degisken,0,5); // \"beyaz\"\r\n?>\r\nSonuç olarak yeni değişkenimize \"beyaz\" değeri atanacaktır.\r\n\r\nKategorideki Güncel Makaleler\r\n\r\ndeneme', 'girayselcuk02', '2022-08-21 04:01:51.000000');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registerdate` date NOT NULL,
  `authority` varchar(255) NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `registerdate`, `authority`) VALUES
(8, 'admin', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-08-21', 'Admin');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogid`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `blogid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
