-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1:3306
-- Timp de generare: dec. 12, 2023 la 05:51 PM
-- Versiune server: 8.2.0
-- Versiune PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `jewelry_shop`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `cumparaturi`
--

DROP TABLE IF EXISTS `cumparaturi`;
CREATE TABLE IF NOT EXISTS `cumparaturi` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_prod_id` int NOT NULL,
  `c_qty` int NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `istoric`
--

DROP TABLE IF EXISTS `istoric`;
CREATE TABLE IF NOT EXISTS `istoric` (
  `i_id` int NOT NULL AUTO_INCREMENT,
  `i_user_id` int NOT NULL,
  `i_prod_id` int NOT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `istoric`
--

INSERT INTO `istoric` (`i_id`, `i_user_id`, `i_prod_id`) VALUES
(1, 2, 4),
(2, 2, 3),
(3, 2, 4);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `produse`
--

DROP TABLE IF EXISTS `produse`;
CREATE TABLE IF NOT EXISTS `produse` (
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `prod_qty` int NOT NULL,
  `prod_material` varchar(100) NOT NULL,
  `prod_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `prod_price` int NOT NULL,
  `prod_desc` text NOT NULL,
  `prod_spec` text NOT NULL,
  `prod_image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `prod_category` varchar(100) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `produse`
--

INSERT INTO `produse` (`prod_id`, `prod_qty`, `prod_material`, `prod_name`, `prod_price`, `prod_desc`, `prod_spec`, `prod_image`, `prod_category`) VALUES
(8, 3, 'YELLOW SILVER', 'Silver Golden Moonstone Bracelet', 120, 'Material:925 sterling silver\r\nPlating: 18K 1 micron vermeil\r\nBracelet length: 20 + 5 cm\r\nStone: natural moonstone\r\nThe Moonstone is specific to the Gemini and Cancer.\r\n', 'Color:Multicolor \r\nDetail:Natural Stone \r\nApproximate weight:7.2 \r\nMaterial:Silver \r\nFor:For her \r\nStones:Semi-precious stones \r\nPlating:Vermeil 1 micron 18K \r\nType:Bracelet \r\nTheme:Glamour \r\nBracelet type:Chain\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27bratara-din-argint-golden-moonstone-bracelet.jpg', 'Bracelets'),
(7, 2, 'WHITE SILVER', 'Silver bracelet Sparkling Tennis clear', 150, 'Material: 925 sterling silver\r\nPlating: Rhodium\r\nBracelet thickness: 1,80 mm \r\nAdjustable\r\nWeight approx: 3,32 g     \r\nClasp: Silver ball with silicone \r\nStone: Zirconium \r\n', 'Colour:Silver \r\nMaterial:Silver \r\nFor:For her\r\nStones:Crystals \r\nPlating:Rhodium \r\nType:Bracelet \r\nTheme:Love \r\nBracelet type:Tennis\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27bratara-din-argint-sparkling-tennis-clear.jpg', 'Bracelets'),
(6, 3, 'YELLOW GOLD', '14 K Gold Bracelet with butterfly outline', 500, '14 K gold bracelet with 7x9.3 mm butterfly outline.\r\nMaterial: 14K gold (585)\r\nBracelet chain length: 15.9 cm + 3 cm (extension)\r\nElements size: 7x9.3 mm\r\nBracelet weight: 1.01 gr\r\n', 'Colour:Gold \r\nMaterial:Gold \r\nFor:For her \r\nStones:No stones \r\nType:Bracelet \r\nTheme:Nature \r\nBracelet type:Chain\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27bratara-din-aur-14-k-cu-fluturas-contur.jpg', 'Bracelets'),
(9, 5, 'YELLOW SILVER', 'Silver Golden Mystic Crystal Bangle', 150, 'Material:925 sterling silver\r\nBracelet length: 17.5 cm\r\nBracelet width: 3.2 mm\r\nClosure: Clips with safety system\r\nPlating: Vermeil 1 micron 18K\r\n', 'Colour:Gold \r\nApproximate weight: 9.6 \r\nMaterial:Silver \r\nFor:For her \r\nStones:Crystals \r\nPlating:Vermeil 1 micron 18K \r\nType:Bracelet \r\nTheme:Simple \r\nBracelet type:Tennis\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27bratara-din-argint-golden-mystic-crystal-bangle.jpg', 'Bracelets'),
(10, 4, 'WHITE SILVER', 'Silver Sparkling Heart Bracelet', 100, 'Material:925 sterling silver\r\nPlating: Rhodium\r\nCentre element size: 12,21 X 10,44 mm\r\nClosure: clips\r\nStone: Zirconium\r\nMeasurements 17 and 19 represent wrist circumference in centimeters!\r\n', 'Colour:Silver \r\nApproximate weight:8,42 \r\nMaterial:Silver \r\nFor:For her \r\nStones:Crystals \r\nPlating:Rhodium \r\nType:Bracelet\r\nTheme:Love \r\nBracelet type:Fixed\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27bratara-din-argint-sparkling-heart.jpg', 'Bracelets'),
(11, 1, 'YELLOW GOLD', '14k Crystal Dot gold and string bracelet', 200, 'Material:14k gold (585) / Textile bezel\r\nItem size: 6.5 x 6.5 mm\r\nElement weight: 0.51 g\r\nClosure: Adjustable knot\r\nStone: Crystal\r\n', 'Colour:Gold \r\nApproximate weight:0.87 \r\nMaterial:Gold \r\nFor:For her \r\nStones:Crystals \r\nType:Bracelet\r\nTheme:Simple \r\nBracelet type:String\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27bratara-snur-si-aur-14k-crystal-dot.jpg', 'Bracelets'),
(12, 10, 'WHITE SILVER', 'Silver Shiny Blue Eye Bracelet', 180, 'Material:925 sterling silver\r\nPlating: Rhodium\r\nBracelet length: 16cm\r\nAdjustable\r\nBracelet width: 2mm\r\nExtension element length: 7cm\r\nElement size: L x W = 10mm x 10mm \r\nWeight approx: 5.32g\r\nClosure: carbine\r\nStone: Zirconium \r\n', 'Colour:Blue \r\nMaterial:Silver \r\nFor:For her \r\nStones:Crystals \r\nPlating:Rhodium \r\nType:Bracelet \r\nTheme:Glamour \r\nBracelet type:Tennis\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27bratara-din-argint-shiny-blue-eye.jpg', 'Bracelets'),
(13, 9, 'PINK GOLD', 'Rose Gold Little Hearts Silver Bracelet', 250, 'Material:925 sterling silver\r\nPlating: 18 K Rose Gold\r\nBracelet length: L= 16,5cm\r\nAdjustable\r\nLength extension element: L=5cm\r\nElement size 1: L x W = 5mm x 5mm  \r\nElement size 2: L x W = 4mm X 4mm\r\nWeight approx: 1.95g\r\nClosure: carbine\r\nStone: Zirconium\r\n', 'Color:Pink \r\nMaterial:Silver \r\nFor:For her \r\nStones:Crystals \r\nPlating:18k rose gold \r\nType:Bracelet \r\nTheme:Love \r\nBracelet type:Chain\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27bratara-din-argint-rose-gold-little-hearts.jpg', 'Bracelets'),
(14, 3, 'PINK GOLD', 'Rose Gold Crystal Chain Silver Ankle Bracelet', 230, 'Material: sterling silver\r\nPlating: 18 K Rose Gold\r\nBracelet length: cm\r\nClosure: carbine\r\nStone: Zirconium\r\n', 'Colour:Pink \r\nMaterial:Silver \r\nFor:For her \r\nStones:Crystals \r\nPlating:18k rose gold \r\nType:Bracelet \r\nTheme:Simple\r\nBracelet type:Chain\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27bratara-de-glezna-din-argint-rose-gold-crystal-chain.jpg', 'Bracelets'),
(15, 7, 'PINK SILVER', 'Pink Safety fixed silver bracelet', 199, 'Material:925 sterling silver\r\nPlating: Rhodium\r\nItem size 1: L x W =10mm x 10mm \r\nItem size 2: L x W = 9mm x 9mm\r\nItem size 3: L x W =18mm x 6mm \r\nElement size closure : L x W = 11mm x 11mm\r\nChain size: 2.5cm\r\nWeight approx: 13.2g\r\nClosure: clips\r\nStone: Zirconium\r\nBracelet type: for talismans\r\n', 'Color:Pink \r\nMaterial:Silver \r\nFor:For her \r\nStones:Crystals \r\nPlating:Rhodium \r\nType:Bracelet \r\nTheme:Love \r\nBracelet type:  For talismans\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27bratara-din-argint-fixa-pink-safety.jpg', 'Bracelets'),
(16, 9, 'WHITE SILVER', 'Little Crystals Heart silver earrings', 110, 'Material: Silver 925\r\nPlywood: Rhodium \r\nClosure: Rod and flyer\r\nEarring size: 4.70 mm x 5.20 mm x 1.20 mm \r\nWeight: 0.76 g\r\n', 'Color: Silver\r\nClosure: Rod and screw\r\nEarring type: On lobe \r\nMaterial: Silver \r\nFor: For kids \r\nStones: crystals\r\nPlywood: Rhodium\r\nType: Earrings \r\nTheme: Love\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27cercei-din-argint-little-crystals-heart.jpg', 'Earrings'),
(17, 8, 'PINK GOLD', 'Rose Gold silver earrings with Earring and Crystals', 240, 'Material: Silver 925\r\nPlywood: 18K Rose Gold\r\nClosure: Rod and flyer\r\nEarring size: cm\r\nStones: Zirconium\r\n', 'Color:Pink\r\n Approximate weight: 1.78\r\n Closure:Rod and screw \r\nEarring type:On lobe\r\n Material:Silver\r\n Stones:No stones\r\nPlywood:Rose gold18k \r\nType: Earrings\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27cercei-din-argint-rose-gold-cu-cerculeti-si-cristale.jpg', 'Earrings'),
(18, 22, 'YELLOW GOLD', '14K Blue Drop Gold Earrings', 300, '\"14K Blue Drop Gold Earrings\" are part of the precious Gold Woman collection.\r\nImpeccable details make earrings suitable for any occasion, both for ladies and ladies.\r\nMaterial: 14K Gold (585)\r\nDimensions: 8 x 18 mm\r\nWeight: 1.16 gr\r\n', 'Color:Gold\r\nApproximate gram: 1.16\r\n Closing:Tortita\r\n Earring Type:Long \r\nMaterial:Gold \r\nFor:For her \r\nStones:Crystals \r\nType:Earrings\r\n Theme:Simple\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27cercei-din-aur-14k-picatura-albastra.jpg', 'Earrings'),
(19, 10, 'YELLOW GOLD', 'Golden Garnet Drop silver earrings', 289, 'Material: Silver 925\r\nPlywood: Vermeil 1 micron 18K\r\nSize: 7.68 x 5.82 mm\r\nStone: Natural garnet\r\nGarnet is specific to Aries and Capricorn\r\n', 'Color:Multicolor \r\nDetail:Natural stone \r\nApproximate gram:1.18 \r\nClosure:Rod and screw \r\nEarring type:On lobe \r\nMaterial:Silver \r\nFor:For her \r\nStones:Semiprecious stones \r\nPlywood:Vermeil 1 micron 18K \r\nType:Earrings \r\nTheme:Glamour\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27cercei-din-argint-golden-garnet-drop.jpg', 'Earrings'),
(20, 4, 'YELLOW SILVER', 'Golden Dreamy Moonstone silver earrings', 198, 'Material: Silver 925\r\nPlywood: Vermeil 1 micron 18K\r\nSize: 7.65 mm\r\nStone: Natural Moon Stone\r\nMoonstone is specific to Gemini and Cancer.\r\n', 'Color: Multicolor\r\n Detail: Natural stone \r\nApproximate gram: 1.6 \r\nClosure: Rod and screw\r\n Earring type: On lobe\r\n Material: Silver\r\n For: For her \r\nStones: Semiprecious stones\r\n Plywood: Vermeil 1 micron 18K\r\n Type: Earrings \r\nTheme: Glamour\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27cercei-din-argint-golden-dreamy-moonstone.jpg', 'Earrings'),
(21, 3, 'YELLOW GOLD', 'Gold Earrings 14k Crystals Circle', 200, '14k Gold Earrings \"Circle Crystals\" are part of the precious Gold Woman collection.\r\nBeautiful details make earrings suitable for any occasion, both for ladies and ladies.\r\nMaterial: 14K Gold(585)\r\nDimensions: 14 x 2.5 mm\r\nLocking system: Rod and screw\r\nWeight: 1.13 gr\r\nThe jewelry we sell is not sold per gram. They have a fixed price, per model.\r\n', 'Color:Gold \r\nApproximate gram:1.13  \r\nType of earrings:Simple\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27cercei-din-aur-14k-cristale-cerc.jpg', 'Earrings'),
(22, 2, 'WHITE SILVER', 'Silver Green Tear silver earrings', 145, 'Material: Silver 925\r\nPlywood: Rhodium\r\nClosing: Tortita\r\nEarring size: cm\r\nStone: Zirconium\r\n', 'Color:Green \r\nApproximate gram:1.64 \r\nEarring Type:Long \r\nMaterial:Silver \r\nStones:Crystals \r\nPlywood:Rhodium \r\nType:Earrings\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27cercei-din-argint-silver-green-tear.jpg', 'Earrings'),
(23, 4, 'YELLOW GOLD', '14k Pearl Large Gold Earrings', 296, '\"14k Pearl Great Gold Earrings\" are part of the precious Gold Woman collection.\r\nBeautiful details make earrings suitable for any occasion, both for ladies and ladies.\r\nMaterial: 14K Gold(585)\r\nDimensions: 24 x 9 mm\r\nRod length: 8mm\r\nWeight: 2.76 gr (weight may vary)\r\nDetail: Cultured pearls \r\n', 'Color:Gold \r\nApproximate Gram:2.76 \r\nEarring Type:Long \r\nMaterial:Gold \r\nFor:For her\r\nStones:Pearls \r\nType:Earrings \r\nTheme:Simple\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27cercei-din-aur-14k-perla-mare.jpg', 'Earrings'),
(24, 2, 'YELLOW GOLD', '14K Square Large Crystal Gold Earrings', 310, '\"14K Square Large Crystal Gold Earrings\" are part of the precious Gold Woman collection.\r\nBeautiful details make earrings suitable for any occasion, both for ladies and ladies.\r\nMaterial: 14K Gold(585)\r\nDimensions: 8.5 mm\r\nRod length: 8 mm\r\nLocking system: Rod and screw\r\nWeight: 2.17 g\r\n', 'Color:Gold \r\nApproximate Gram:2.17 \r\nClosure:Rod and screw \r\nEarring type:On lobe \r\nMaterial:Gold \r\nFor:For her \r\nStones:Crystals \r\nType:Earrings\r\nTheme:Simple\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27cercei-din-aur-14k-patrat-cristal-mare.jpg', 'Earrings'),
(25, 5, 'YELLOW GOLD', '14K Gold Earrings Double Chain and Pearls', 320, '\"14K gold double chain earrings and pearls\" are part of the precious Gold Woman collection.\r\nBeautiful details make earrings suitable for any occasion, both for ladies and ladies.\r\nMaterial: 14K Gold (585)\r\nDimensions: 37x4mm\r\nRod length: 8 mm\r\nLocking System: Thread and Protection\r\nWeight: 0.86 gr\r\n', 'Color:Gold \r\nApproximate gram:0.86 g \r\nClosure:Rod and screw \r\nEarring Type:Long \r\nMaterial:Gold\r\nFor:For her \r\nStones:Pearls \r\nType:Earrings\r\nTheme:Simple\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27cercei-din-aur-14k-lant-dublu-si-perle.jpg', 'Earrings'),
(26, 4, 'WHITE SILVER', 'Silver necklace 925 Sparkling Moon and Stars', 199, 'Material:Silver 925\r\n\r\nPlywood: Rhodium\r\n\r\nChain length: 45 cm\r\n\r\nChain closure: Carbine\r\n\r\nStone: Zirconium\r\n', 'Color: Silver\r\nChain length: 45 cm\r\nMaterial: Silver\r\nFor: For her\r\nStones: crystals\r\nPlywood: Rhodium\r\nType: Necklace\r\nTheme: Celestial elements\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27colier-din-argint-925-sparkling-moon-and-stars.jpg', 'Necklaces'),
(27, 2, 'WHITE SILVER', 'Precious Pearl Look silver necklace', 140, 'Material:Silver 925\r\n\r\nPlywood: Rhodium\r\n\r\nChain length: 45 cm\r\n\r\nChain closure: Carbine\r\n\r\nCenter element size: 19.80 mm x 9.10 mm x 9.10 mm \r\n\r\nWeight: 3.19 g\r\n\r\nStone: Zirconium/ Pearl\r\n', 'Color: White\r\nChain length: 45 cm\r\nMaterial: Silver\r\nFor: For her\r\nStones: Synthetic pearl\r\nPlywood: Rhodium\r\nType: Necklace\r\nTheme: Simple\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27colier-din-argint-precious-pearl-look.jpg', 'Necklaces'),
(28, 6, 'YELLOW GOLD', '14k Gold Necklace Flower and Crystals', 200, 'Material: 14k gold (585)\r\n\r\nChain length: 45 cm\r\n\r\nChain closure: Carbine\r\n\r\nCenter element size: 7.5 mm\r\n\r\nStone: Zirconium\r\n\r\nWeight: 0.78 g\r\n\r\nThe jewelry we sell is not sold per gram. They have a fixed price, per model\r\n', 'Color: Gold\r\nChain length: 45 cm\r\nMaterial: Gold\r\nFor: For her\r\nStones: crystals\r\nType: Necklace\r\nTheme: Nature\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27colier-din-aur-14k-floare-si-cristale.jpg', 'Necklaces'),
(29, 10, 'YELLOW SILVER', 'Golden Piece of Moonstone silver necklace', 199, 'Material: Silver 925\r\n\r\nPlywood: Vermeil 1 micron 18K\r\n\r\nCenter element size: 23.4 x 13.3 mm\r\n\r\nChain length: 45 cm\r\nStone: Natural Moon Stone\r\n\r\nMoonstone is specific to Gemini and Cancer\r\n', 'Color: Multicolor\r\nDetail: Natural stone\r\nApproximate weight: 5.9\r\nChain length: 45 cm\r\nMaterial: Silver\r\nFor: For her\r\nStones: Semiprecious stones\r\nPlywood: Vermeil 1 micron 18K\r\nType: Necklace\r\nTheme: Glamour', 'product_image/962b71e38ba13e25cc51ab8fae700e27colier-din-argint-golden-piece-of-moonstone.jpg', 'Necklaces'),
(30, 7, 'PINK SILVER', 'Rose Gold Drop Citrine Silver Necklace', 220, 'Material: Silver 925\r\n\r\nPlywood: Vermeil 1 micron 18K\r\n\r\nCenter element size: 20 x 7.3 mm\r\n\r\nChain length: 45 cm\r\n\r\nStone: Natural Citrine\r\n\r\nCitrine is specific to the sign of Sagittarius.\r\n', 'Color: Multicolor\r\nDetail: Natural stone\r\nApproximate weight: 4.3\r\nChain length: 45 cm\r\nMaterial: Silver\r\nFor: For her\r\nStones: Semiprecious stones\r\nPlywood: Vermeil 1 micron 18K\r\nType: Necklace\r\nTheme: Glamour\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27colier-din-argint-rose-gold-drop-citrin.jpg', 'Necklaces'),
(31, 3, 'WHITE SILVER', 'Silver Moonstone Eye Silver Necklace', 145, 'Material: Silver 925\r\n\r\nCenter element size: 11.7 x 12 mm\r\n\r\nChain length: 40 + 5 cm\r\n\r\nStone: Natural Moon Stone\r\n\r\nMoonstone is specific to Gemini and Cancer.\r\n', 'Color: Blue\r\nDetail: Natural stone\r\nApproximate weight: 4.6\r\nMaterial: Silver\r\nFor: For her\r\nStones: Semiprecious stones\r\nType: Necklace\r\nTheme: Glamour\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27colier-din-argint-silver-moonstone-eye.jpg', 'Necklaces'),
(32, 5, 'WHITE SILVER', 'Massive Mystic Topaz Silver Necklace', 132, 'Material: Silver 925\r\n\r\nPlywood: Rhodium\r\n\r\nChain length: 45 cm\r\n\r\nChain closure: Carbine\r\n\r\nCenter element size: 24.00 mm x 13.40 mm x 10.40 mm\r\n\r\nWeight: 7.77 g\r\n\r\nStone: Natural Topaz\r\n\r\nOrigin: Brazil\r\n\r\nTopaz is specific to Sagittarius, Scorpio\r\n', 'Color: Multicolor\r\nDetail: Natural stone\r\nChain length: 45 cm\r\nMaterial: Silver\r\nFor: For her\r\nStones: Semiprecious stones\r\nPlywood: Rhodium\r\nType: Necklace\r\nTheme: Glamour\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27colier-din-argint-massive-mystic-topaz.jpg', 'Necklaces'),
(33, 1, 'WHITE SILVER', 'Beautiful Smoky Quartz Silver Necklace', 200, 'Material: Silver 925\r\n\r\nPlywood: Rhodium\r\n\r\nChain length: cm\r\n\r\nChain closure: Carbine\r\n\r\nCenter element size: cm\r\n\r\nStone: Natural quartz\r\n\r\nOrigin: Brazil\r\n', 'Color: Brown\r\nDetail: Natural stone\r\nChain length: 45 cm\r\nMaterial: Silver\r\nFor: For her\r\nStones: Semiprecious stones\r\nPlywood: Rhodium\r\nType: Necklace\r\nTheme: Glamour\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27colier-din-argint-beautiful-smoky-quartz.jpg', 'Necklaces'),
(34, 9, 'WHITE SILVER', 'Ruby Elegant Silver Necklace', 176, 'Material: Silver 925\r\n\r\nPlywood: Rhodium\r\n\r\nChain length: cm\r\n\r\nChain closure: Carbine\r\n\r\nCenter element size: cm\r\n\r\nStone: Ruby (Created in the laboratory*)\r\n\r\nOrigin: China\r\n\r\nRuby is specific to Pisces, Cancer.\r\n\r\n*The stone created in the laboratory represents a chemically identical reproduction of natural stone, but made in laboratory conditions\r\n', 'Color: Red\r\nDetail: Stone created in the laboratory\r\nChain length: 45 cm\r\nMaterial: Silver\r\nFor: For her\r\nStones: Semiprecious stones\r\nPlywood: Rhodium\r\nType: Necklace\r\nTheme: Glamour\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27colier-din-argint-elegant-ruby.jpg', 'Necklaces'),
(35, 4, 'YELLOW SILVER', 'Golden Moonstone Silver Necklace', 190, 'Material: Silver 925\r\n\r\nPlywood: Vermeil 1 micron 18K\r\n\r\nCenter element size: 28.5 x 12.3 mm\r\n\r\nChain length: 40 + 8 cm\r\n\r\nStone: Natural Moon Stone\r\n\r\nMoonstone is specific to Gemini and Cancer\r\n', 'Color: Multicolor\r\nDetail: Natural stone\r\nApproximate weight: 5.7\r\nMaterial: Silver\r\nFor: For her\r\nStones: Semiprecious stones\r\nPlywood: Vermeil 1 micron 18K\r\nType: Necklace\r\nTheme: Glamour\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27colier-din-argint-golden-magical-moonstone.jpg', 'Necklaces'),
(36, 3, 'WHITE SILVER', 'Beautiful Pink Heart silver ring', 200, 'Material: Silver 925\r\n\r\nPlywood: Rhodium\r\n\r\nRing thickness: 1mm\r\n\r\nRing width: 1.1mm\r\n\r\nCenter element size: 5.90 mm x 6.00 mm x 3.10 mm \r\n\r\nApprox. weight:1.18 g\r\n\r\nStone: Zirconium\r\n', 'Color: Pink\r\nMaterial: Silver\r\nStones: crystals\r\nPlywood: Rhodium\r\nType: Ring\r\nTheme: Love\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27inel-din-argint-beautiful-pink-heart.jpg', 'Rings'),
(37, 2, 'YELLOW SILVER', 'Golden V Shape adjustable silver ring', 100, 'Material: Silver 925\r\n\r\nPlywood: 14K Gold\r\n\r\nStone: No stones\r\n\r\nType: Adjustable\r\n\r\nDimensions: 3.60 mm \r\n\r\nWeight: 0.72 g\r\n', 'Color: Gold\r\nMaterial: Silver\r\nStones: No stones\r\nPlywood: 14k yellow gold\r\nType: Ring\r\nTheme: Simple\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27inel-reglabil-din-argint-golden-v-shape.jpg', 'Rings'),
(38, 1, 'WHITE SILVER', 'Pink Hearts Crystals silver ring', 200, 'Material: Silver 925\r\n\r\nPlywood: Rhodium\r\n\r\nThickness: mm\r\n\r\nWidth: mm\r\n\r\nStone: Zirconium\r\n', 'Color: Pink\r\nMaterial: Silver\r\nStones: crystals\r\nPlywood: Rhodium\r\nType: Ring\r\nTheme: Love\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27inel-din-argint-pink-hearts-crystals.jpg', 'Rings'),
(39, 3, 'YELLOW SILVER', 'Golden Amethyst Twilight silver ring', 150, 'Material: Silver 925\r\n\r\nPlywood: Vermeil 1 micron 18K\r\n\r\nCenter element size: 8.4 x 8.5 mm\r\n\r\nStone: Natural Amethyst\r\n\r\nAmethyst is specific to Aquarius, Pisces, Scorpio\r\n', 'Color: Multicolor\r\nDetail: Natural stone\r\nApproximate weight: 3.9\r\nMaterial: Silver\r\nFor: For her\r\nStones: Semiprecious stones\r\nPlywood: Vermeil 1 micron 18K\r\nType: Ring\r\nTheme: Glamour\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27inel-din-argint-golden-amethyst-twilight.jpg', 'Rings'),
(40, 5, 'WHITE SILVER', 'Lovely Rainbow silver ring', 99, 'Material: Silver 925\r\n\r\nPlywood: Rhodium\r\n\r\nRing thickness:1.1 mm\r\n\r\nRing width: 1,5mm\r\n\r\nCenter element size: 8.20 mm x 8.00 mm x 6.30 mm \r\n\r\nApprox. weight: 2.05g\r\n\r\nStone: Zirconium\r\n', 'Color: Multicolor\r\nApproximate gram: 1.90\r\nMaterial: Silver\r\nStones: crystals\r\nPlywood: Rhodium\r\nType: Ring\r\nTheme: Love\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27inel-din-argint-lovely-rainbow.jpg', 'Rings'),
(41, 2, 'WHITE SILVER', 'Rainbow Shape Silver Ring', 100, 'Material: Silver 925\r\n\r\nPlywood: Rhodium\r\n\r\nRing thickness: 1.3mm\r\n\r\nRing width: 1.2mm\r\n\r\nItem size: L x W = 2.4mm x 7.2mm\r\n\r\nApprox. weight: 0.89g\r\n\r\nStone: Zirconium\r\n', 'Color: Multicolor\r\nApproximate weight: 0.91\r\nMaterial: Silver\r\nStones: crystals\r\nPlywood: Rhodium\r\nType: Ring\r\nTheme: Simple\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27inel-din-argint-rainbow-shape.jpg', 'Rings'),
(42, 7, 'PINK SILVER', 'Rose Gold Captivating Moonstone Silver Ring', 250, 'Material: Silver 925\r\n\r\nPlywood: Vermeil 1 micron 18K\r\n\r\nCenter element size: 11.2 x 9.2 mm\r\n\r\nStone: Natural Moon Stone\r\n\r\nMoonstone is specific to Gemini and Cancer.\r\n', 'Color: Multicolor\r\nDetail: Natural stone\r\nApproximate weight: 2.1\r\nMaterial: Silver\r\nFor: For her\r\nStones: Semiprecious stones\r\nPlywood: Vermeil 1 micron 18K\r\nType: Ring\r\nTheme: Glamour\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27inel-din-argint-rose-gold-captivating-moonstone-dream.jpg', 'Rings'),
(43, 3, 'PINK SILVER', 'Rose Gold Aquamarine Heart Silver Ring', 200, 'Material: Silver 925\r\n\r\nPlywood: Vermeil 1 micron 18K\r\n\r\nCenter element size: 9.1 x 9.3 mm\r\n\r\nStone: Natural Aquamarine\r\n\r\nAquamarine is specific to Aquarius, Pisces, Scorpio and Aries.\r\n', 'Culoare:  Multicolor\r\nDetaliu:  Piatra Naturala\r\nGramaj aproximativ:  2.4\r\nMaterial:  Argint\r\nPentru:  Pentru ea\r\nPietre:  Pietre semipretioase\r\nPlacaj:  Vermeil 1 micron 18K\r\nTip:  Inel\r\nTema:  Glamour\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27inel-din-argint-rose-gold-aquamarine-heart.jpg', 'Rings'),
(44, 3, 'PINK SILVER', 'Vintage Rose Gold Band Silver Ring', 198, 'Material: Silver 925\r\n\r\nPlywood: 18K Rose Gold\r\n\r\nDimensions: 1.90mm x 1.20mm \r\n\r\nApprox. weight: 1,22g\r\n\r\nStone: Zirconium\r\n', 'Color: Pink\r\nMaterial: Silver\r\nStones: crystals\r\nPlywood: 18k rose gold\r\nType: Ring\r\nTheme: Simple\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27inel-din-argint-vintage-rose-gold-band.jpg', 'Rings'),
(45, 1, 'YELLOW SILVER', 'Golden Lightning silver ring', 130, 'Material: Silver 925\r\n\r\nCenter element size: 3.10 mm x 1.80 mm\r\n\r\nApprox. weight: 0.88 g\r\n\r\nPlywood: 14K Gold\r\n\r\nStone: Zirconium\r\n', 'Color: Gold\r\nApproximate gram: 0.80\r\nMaterial: Silver\r\nStones: crystals\r\nPlywood: 14k yellow gold\r\nType: Ring\r\nTheme: Simple\r\n', 'product_image/962b71e38ba13e25cc51ab8fae700e27inel-din-argint-golden-lightning.jpg', 'Rings');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `r_id` int NOT NULL AUTO_INCREMENT,
  `r_prod_id` int NOT NULL,
  `r_user_id` int NOT NULL,
  `r_rev` text NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `utilizatori`
--

DROP TABLE IF EXISTS `utilizatori`;
CREATE TABLE IF NOT EXISTS `utilizatori` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `u_surname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `u_username` varchar(20) NOT NULL,
  `u_password` varchar(100) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `u_phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `utilizatori`
--

INSERT INTO `utilizatori` (`u_id`, `u_name`, `u_surname`, `u_username`, `u_password`, `u_email`, `u_phone`) VALUES
(1, 'Mihoc', 'Rebeca', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'rebecamihoc@yahoo.com', '0757959095'),
(2, 'Mihoc', 'Rebeca', 'rebeca', '202cb962ac59075b964b07152d234b70', 'rebecamihoc@yahoo.com', '0757959095');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
