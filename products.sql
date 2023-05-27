-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 10:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `stock`, `description`, `attributes`, `category_id`, `brand_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('18a0989f-784b-4302-b53a-f1bbaaf040ce', 'Matte Liquid Lip Tint', 'matte-liquid-lip-tint', '104', 167, '12 Colors Matte Liquid Lipstick Waterproof Moisturizer Lipgloss Long-lasting Lip Tint Lip Glaze Cosmetic', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235204', NULL, NULL, NULL),
('1d85a3b5-65f9-47e3-af3c-0b2d0f22ef7c', 'Matte Liquid Lipstick Sexy Red Waterproof', 'matte-liquid-lipstick-sexy-red-waterproof', '142', 119, 'Matte Liquid Lipstick Sexy Red Waterproof Soft Velvet Lip Stick Long Lasting Lip Makeup', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235205', NULL, NULL, NULL),
('2dff6630-8e2b-4e7b-9764-76d522d669ab', 'Water Tint Lipstick', 'water-tint-lipstick', '123', 178, 'Water Tint lipstick 7 Colors Waterproof Moisturizing Lip Glaze Tint Long Lasting Non-Stick Cup Lip Stick Makeup Cosmetics', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235197', NULL, NULL, NULL),
('31230cab-1811-4d9a-b33e-5216db6bdbf4', 'Foundation Cream Matte Base', 'foundation-cream-matte-base', '158', 124, '10 Colors Foundation Cream Matte Base Makeup Full Cover Face Corrector Liquid Concealer Scars Pore Acne Cover Cosmetics', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235201', NULL, NULL, NULL),
('34d04565-0475-4fd0-a15c-f67cc70e852f', '6colors lip gloss set', '6colors-lip-gloss-set', '142', 108, '6-color matte lip glaze velvet non-stick cup holding makeup air lip gloss lip mud student style white lipstick', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235208', NULL, NULL, NULL),
('34ec9165-17af-46b7-8ea6-6ef42b3554fc', 'Crystal Collagen Lip Eye Mask', 'crystal-collagen-lip-eye-mask', '101', 193, 'New Arrival Collagen Natural KIMUSE Eye Mask Sticker Eye Bag Lift 20pcs/bag Moisturizing Lip Mask Lip Care', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235212', NULL, NULL, NULL),
('3d2d7fec-2927-4c2e-986f-e509feecc8fe', 'Three shade Eyeshadow', 'three-shade-eyeshadow', '145', 149, 'New Arrival High Quality Cosmetics Makeup KIMUSE Waterproof Three Shade Eyebrow Powder Kit', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235203', NULL, NULL, NULL),
('53e5d9d9-86d0-4e9b-8847-628effff51a1', 'Liquid Blush', '-liquid-blush', '107', 104, '4-color liquid blush moisturizes and enhances the appearance of natural moisturizing nude makeup rouge', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235198', NULL, NULL, NULL),
('56b48af9-2c27-4ed3-b74b-e377aa46e0b4', 'Lip Cheek Cream', 'lip-cheek-cream', '122', 197, 'Lip Cheek Cream 2021 Best Selling Makeup Private Label Long Lasting Vegan Cosmetics Lips Tint Cheeks cream', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235202', NULL, NULL, NULL),
('67500242-6a08-4250-afd1-b4212bf0456f', 'Private Label Heart-shaped Air Cushion Blush', 'private-label-heart-shaped-air-cushion-blush', '128', 197, 'Custom Brand Air Cushion Blush Heart Shape Liquid Blush Brighten Natural Pink Red Orange Face Cheek Make Up Blusher', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235215', NULL, NULL, NULL),
('6a0aa08f-b9bb-4a33-b5ca-5cfbf891e611', '2 in 1 Eyelash mascara', '2-in-1-eyelash-mascara', '105', 148, '4D Waterproof Long Lasting Volume Lashes Big Eyes Not Smudge 2 in 1 Eye Makeup Fiber Eyelash Mascara And Eye Liner Pencil', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235199', NULL, NULL, NULL),
('743daa3d-c636-4f67-b21a-c01c9aa0a955', 'Create Eyebrows Hair', 'create-eyebrows-hair', '134', 104, 'O.TWO.O Eyebrow Gel Create Eyebrows Hair 3D Make Up Fiber Waterproof Long-Lasting Eye Brow With Brush Cosmetics', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235216', NULL, NULL, NULL),
('7ba6d7ba-cf86-44c3-8295-6a534d24fe14', 'Concealer Foundation | Water proof', 'concealer-foundation-|-water-proof', '163', 108, 'Perfect Full Coverage Liquid Concealer Foundation Facial Corrector Waterproof Base Makeup Eye Dark Circles Acne Cosmetic', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235200', NULL, NULL, NULL),
('81bdf5ac-ee8b-44b3-b0da-dc65727b8c1f', '4D Voluminous Lash Primer', '4d-voluminous-lash-primer', '143', 115, 'Makeup Thick and Lengthy Eyelashes Primer Styling curling long-lasting makeup no easy to blooming mascara', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235196', NULL, NULL, NULL),
('8c3247a1-6e4e-4a09-861a-f53e1808e839', 'Eyebrow Pencil', 'eyebrow-pencil', '161', 134, '4-color rotating automatic double-headed eyebrow pencil waterproof sweat-proof lasting three-dimensional no blooming', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235195', NULL, NULL, NULL),
('9bf681c1-4706-4d12-8fdc-ca3cca5c89a9', 'Eyebrow Tint Gel', 'eyebrow-tint-gel', '198', 150, 'Waterproof Makeup Eyebrow Cosmetics Long-lasting Fiber Brow Gel Eyebrow Tint Gel Dark Brown KIMUSE Eyebrow Pomade', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235192', NULL, NULL, NULL),
('a9ad15cd-b8c6-469e-8a98-e3fe033aa94e', 'Lip Cheek Cream', 'lip-cheek-cream', '182', 147, 'New Design Good Pigment Cream 4 Color Natural Lip Cheek Makeup Blush Cream', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235207', NULL, NULL, NULL),
('b6543edf-2bd7-4def-8fd6-a5f5771fbf9f', 'Long-wear Waterproof Eyeliner Gel', 'long-wear-waterproof-eyeliner-gel', '143', 110, 'Stamp Eyeliner Set Combination Double-Headed Tattoo Stamp Holds Makeup and Does Not Smudge Eyeliner 2pcs/box', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235214', NULL, NULL, NULL),
('be7e3134-fefc-409d-a3da-ab7ab1bb3f28', 'Liquid eyeliner Tattoo All Day Waterproof', 'liquid-eyeliner-tattoo-all-day-waterproof', '113', 168, 'Professional Waterproof Liquid Eyeliner Pen 24 Hours Long Lasting Water-Proof Eye Liner Pencil Tattoo Makeup Cosmetics', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235206', NULL, NULL, NULL),
('c4eeeaff-d1e4-40ae-9cd9-f2981b0f0bdb', 'Mouse Blush Liptint', 'mouse-blush-liptint', '162', 124, 'Canned lip balm 5 colors Waterproof, Velvet Matte Lipstick Mousse Blush Lip Tint', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235194', NULL, NULL, NULL),
('cc306e97-0f79-4993-b8a2-f08bf56e5c98', '9 color eyeshadow palette', '9-color-eyeshadow-palette', '190', 168, '9 color matte glitter eyeshadow palette pigmented eyeshadow palette long lasting', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235210', NULL, NULL, NULL),
('e719d8c1-36fc-4826-b95f-4dcdd6be6628', 'Lip Mask', 'lip-mask', '122', 130, 'New Style Wholesale Multi Use Long Lasting Moisturizing Lip Care KIMUSE Sleeping Care Lip Mask', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235213', NULL, NULL, NULL),
('e976f078-6b9c-4d47-97a2-cb8cd24e7ada', 'Blackhead Removal Nose Patch', 'blackhead-removal-nose-patch', '158', 110, 'Blackhead Removal Nose Patch Pack Pull-Off Nose Patch Clean Pore Nose Sticker Improve Roughness Brighten Skin Tone', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235217', NULL, NULL, NULL),
('e98a0820-8104-4e70-8b8e-90914c05ef1d', 'Eyebrow Color Makeup Pen', 'eyebrow-color-makeup-pen', '188', 173, 'Eyebrow Fixer Anti-Sweat Fixer Transparent Moisturizing Eyebrow Hold Makeup Setting Gel Brow Raincoat', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235209', NULL, NULL, NULL),
('ec7271f5-36ad-4d00-b1da-7a6024ee2bd1', 'Brow Styling Soap', 'brow-styling-soap', '132', 163, 'brow wax prevents sweat and maintains makeup waterproof long lasting eyes makeup', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235193', NULL, NULL, NULL),
('fe3c2cc8-5b98-45a8-8a99-75add17aac34', 'Professional Eyeliner', 'professional-eyeliner', '135', 168, 'black matte Liquid Eyeliner Pencil Super Waterproof Black Eye Liner Eye Cosmetic Makeup Tool no blooming', NULL, '1', '8172ff3f-d18c-4deb-b0b0-c660dd235211', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
