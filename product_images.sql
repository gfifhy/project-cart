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
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image_link`, `product_id`, `created_at`, `updated_at`) VALUES
('068f475a-b31d-44cd-99d9-e671bcb6957a', 'https://s.alicdn.com/@sc04/kf/Heebb33c8dc7a481b96114cf54df0ed45y.jpg_960x960.jpg', '3d2d7fec-2927-4c2e-986f-e509feecc8fe', NULL, NULL),
('06ec11fa-914a-4804-935a-61a62632388c', 'https://s.alicdn.com/@sc04/kf/Hbd63a7813a004e8b8f5f60d8a592f0fdS.jpg_960x960.jpg', '1d85a3b5-65f9-47e3-af3c-0b2d0f22ef7c', NULL, NULL),
('0ac5bf66-8aa3-494e-b2bf-931b3b25c575', 'https://s.alicdn.com/@sc04/kf/Hc2278ff1e4d14507b53acbb0cb6324bb8.jpg_960x960.jpg', '743daa3d-c636-4f67-b21a-c01c9aa0a955', NULL, NULL),
('0c0e573e-9aa3-437e-a87e-9621342b0356', 'https://s.alicdn.com/@sc04/kf/H830d0a5801db469d891f28a76deb34c1a.jpg_960x960.jpg', '56b48af9-2c27-4ed3-b74b-e377aa46e0b4', NULL, NULL),
('0ce819e0-1547-4005-bc27-1007114cf00c', 'https://s.alicdn.com/@sc04/kf/H36217a56dc8645019bb523b61e7c5ee3p.jpg_960x960.jpg', '6a0aa08f-b9bb-4a33-b5ca-5cfbf891e614', NULL, NULL),
('13a49c6d-f864-42b6-956b-c337ee018f90', 'https://s.alicdn.com/@sc04/kf/H8ebe557631104da3bca09593672a96da9.jpg_960x960.jpg', 'e719d8c1-36fc-4826-b95f-4dcdd6be6630', NULL, NULL),
('144d9e20-5363-48f7-ab77-e71ffba96d5d', 'https://s.alicdn.com/@sc04/kf/H1f317ca5e1b5478c92268ed67f14806aL.jpg_960x960.jpg', 'cc306e97-0f79-4993-b8a2-f08bf56e5c100', NULL, NULL),
('14a64843-e821-4d2e-89b9-8a076a2a6eef', 'https://s.alicdn.com/@sc04/kf/H6eb34eca2fc64ed68f9dceed7e542d6fG.jpg_960x960.jpg', 'e976f078-6b9c-4d47-97a2-cb8cd24e7ada', NULL, NULL),
('14b488a1-bfca-4250-a87c-2592879493cc', 'https://s.alicdn.com/@sc04/kf/H9b86a2d222604569af114e0a465d6453T.jpg_960x960.jpg', '67500242-6a08-4250-afd1-b4212bf0456f', NULL, NULL),
('15f39c0e-1ac0-4cbf-bf47-ccae83302176', 'https://s.alicdn.com/@sc04/kf/H1e81412ee3ee40ab9c21a890975dc311j.jpg_960x960.jpg', '34ec9165-17af-46b7-8ea6-6ef42b3554fc', NULL, NULL),
('19c6b426-19a0-4acb-955f-74048b733109', 'https://s.alicdn.com/@sc04/kf/He11296e668654b00a79196f55439609d0.jpg_960x960.jpg', 'a9ad15cd-b8c6-469e-8a98-e3fe033aa94e', NULL, NULL),
('1a3c2c72-f9a0-4aef-a5a5-d339a2e6941a', 'https://s.alicdn.com/@sc04/kf/Hbc2e9c92b05c432bbef7ad6c27e72ffc3.jpg_960x960.jpg', 'be7e3134-fefc-409d-a3da-ab7ab1bb3f29', NULL, NULL),
('1a683a11-589f-423b-9802-2c2e684cba89', 'https://s.alicdn.com/@sc04/kf/H31f17fd07bb14600af22fa77cc7495e45.jpg_250x250.jpg', 'c4eeeaff-d1e4-40ae-9cd9-f2981b0f0bdb', NULL, NULL),
('1af46c1d-d0a1-4d59-9b8e-143f41884d66', 'https://s.alicdn.com/@sc04/kf/H5980771b745a443d8b0bacc580bfb9e3h.jpg_960x960.jpg', '31230cab-1811-4d9a-b33e-5216db6bdbf4', NULL, NULL),
('1b9fd9a7-da81-4f96-8618-2d740303dbe1', 'https://s.alicdn.com/@sc04/kf/H56a940704c2244f2976e78ee5f05b2d1R.jpg_960x960.jpg', '3d2d7fec-2927-4c2e-986f-e509feecc8fe', NULL, NULL),
('1f9b2341-9eb2-480c-a06d-de0654672cfa', 'https://s.alicdn.com/@sc04/kf/H634af81c1a5049d49d47cfb35eac34c1Z.jpg_960x960.jpg', '34d04565-0475-4fd0-a15c-f67cc70e852f', NULL, NULL),
('20a13473-e130-42ad-9b0b-5110c5ed0aac', 'https://s.alicdn.com/@sc04/kf/H96e7cab218d04ff292eb9e92c6bdb4811.jpg_960x960.jpg', '81bdf5ac-ee8b-44b3-b0da-dc65727b8c1f', NULL, NULL),
('20b0e144-48e2-490b-bcbe-e24e4c28a7b2', 'https://s.alicdn.com/@sc04/kf/H7d8d2d7a18ba4282890254094711af96i.jpg_960x960.jpg', '81bdf5ac-ee8b-44b3-b0da-dc65727b8c1f', NULL, NULL),
('20c33604-f22e-443d-bba4-43d527019e3b', 'https://s.alicdn.com/@sc04/kf/Hb9bf848e4313488db327aff9e297fc74s.jpg_960x960.jpg', '18a0989f-784b-4302-b53a-f1bbaaf040ce', NULL, NULL),
('2b0feda1-2201-4077-a9ec-53d9b72634a3', 'https://s.alicdn.com/@sc04/kf/H2c82ce42ddc9469c9fe4f1083770d041A.jpg_960x960.jpg', '6a0aa08f-b9bb-4a33-b5ca-5cfbf891e613', NULL, NULL),
('30f9e699-e370-4dee-8e06-440e93ebe7a6', 'https://s.alicdn.com/@sc04/kf/H590c97135c5541269b9e0e41bcb23578g.jpg_960x960.jpg', 'fe3c2cc8-5b98-45a8-8a99-75add17aac34', NULL, NULL),
('33b6cd7a-ec25-49f8-ba8f-920ca0467fc4', 'https://s.alicdn.com/@sc04/kf/H681725895e954ae6b21d6d5c0ae3ddb2H.jpg_960x960.jpg', 'cc306e97-0f79-4993-b8a2-f08bf56e5c99', NULL, NULL),
('3b4fdb59-81ca-4e76-a738-edfe0db7ddbc', 'https://s.alicdn.com/@sc04/kf/H590971185d8c4de8a816e4b840664f81v.jpg_960x960.jpg', '34ec9165-17af-46b7-8ea6-6ef42b3554fc', NULL, NULL),
('3d18419b-0d5e-460f-b9ed-f9caea8fa402', 'https://s.alicdn.com/@sc04/kf/H60e91b67dfea446faf8b4462d17f9726x.jpg_960x960.jpg', '81bdf5ac-ee8b-44b3-b0da-dc65727b8c1f', NULL, NULL),
('3f6d971d-f534-44fb-a938-dfd9857bbc64', 'https://s.alicdn.com/@sc04/kf/H6e883cc00dba44b4927781bbfc5ca3d7V.jpg_960x960.jpg', '7ba6d7ba-cf86-44c3-8295-6a534d24fe17', NULL, NULL),
('3fed1c9d-795c-47bb-ae91-a8deed64c75b', 'https://s.alicdn.com/@sc04/kf/He61a31063db54ef790e4acb40a5968f5e.jpg_960x960.jpg', 'e976f078-6b9c-4d47-97a2-cb8cd24e7ada', NULL, NULL),
('3ff37ac5-44b1-467b-b8ee-e8b027e48b3f', 'https://s.alicdn.com/@sc04/kf/H248ddbfe4d704a0b9fb2b403df14333fz.jpg_960x960.jpg', '34d04565-0475-4fd0-a15c-f67cc70e852f', NULL, NULL),
('4152d9c2-788c-4640-8afd-0fd96beb6e39', 'https://s.alicdn.com/@sc04/kf/H19366987871e453aaff8d2d2cf85ee6eB.jpg_960x960.jpg', 'be7e3134-fefc-409d-a3da-ab7ab1bb3f28', NULL, NULL),
('45dc48be-4089-450e-84fb-8e9378bac9d1', 'https://s.alicdn.com/@sc04/kf/H2e78318afcf04350898119e6e4d3f47aZ.jpg_960x960.jpg', '56b48af9-2c27-4ed3-b74b-e377aa46e0b6', NULL, NULL),
('45e9d43d-c451-42b3-94db-5dfa4842b019', 'https://s.alicdn.com/@sc04/kf/Hc8a9c1a47c13459c9881199fb7041740I.jpg_960x960.jpg', 'a9ad15cd-b8c6-469e-8a98-e3fe033aa94e', NULL, NULL),
('49192cc5-5a76-466a-bf0f-073afe26aa70', 'https://s.alicdn.com/@sc04/kf/H0973e7b8f51a4197887d401883ca32baT.jpg_960x960.jpg', '67500242-6a08-4250-afd1-b4212bf0456f', NULL, NULL),
('49225083-86c3-478c-8c6b-b7eb796a7bd9', 'https://s.alicdn.com/@sc04/kf/H1b9732a827504f8eb8534033d5b95d9aS.jpg_250x250.jpg', 'ec7271f5-36ad-4d00-b1da-7a6024ee2bd1', NULL, NULL),
('4d93296e-3c44-482e-bfcf-d683ea391104', 'https://s.alicdn.com/@sc04/kf/Heb1727b137f74a288c8f94c0acb429f6d.jpg_960x960.jpg', '31230cab-1811-4d9a-b33e-5216db6bdbf6', NULL, NULL),
('54559fb1-1531-4b92-b29a-01504680864e', 'https://s.alicdn.com/@sc04/kf/H00bb703e090f4309bf6abcf6112b81eaX.jpg_960x960.jpg', '1d85a3b5-65f9-47e3-af3c-0b2d0f22ef7c', NULL, NULL),
('55635399-1705-4049-b730-b83450f0cac2', 'https://s.alicdn.com/@sc04/kf/Hb7214c5b047640fd9a634238a828978eI.jpg_960x960.jpg', '1d85a3b5-65f9-47e3-af3c-0b2d0f22ef7c', NULL, NULL),
('566237c0-a2a1-4a1c-8d75-01a28259993d', 'https://s.alicdn.com/@sc04/kf/H49cb8df70f104f24be20f40d6065ec46E.jpg_960x960.jpg', 'b6543edf-2bd7-4def-8fd6-a5f5771fbf9f', NULL, NULL),
('5ab5569a-ebbb-4eb6-bc43-986c6bc5e4bd', 'https://s.alicdn.com/@sc04/kf/H67af6a871a384d96a7e46ee0aaae33aax.jpg_960x960.jpg', '6a0aa08f-b9bb-4a33-b5ca-5cfbf891e611', NULL, NULL),
('5b3b5335-afb2-4b53-981c-4a61bcd19e0d', 'https://s.alicdn.com/@sc04/kf/He276bd7f432a4b64a9c55556d25ab4deS.jpg_960x960.jpg', '7ba6d7ba-cf86-44c3-8295-6a534d24fe15', NULL, NULL),
('5f8d65a9-cf55-46fa-9643-a45162cccb50', 'https://s.alicdn.com/@sc04/kf/H097deda5703843ae8cf94f779c0384934.jpg_960x960.jpg', '6a0aa08f-b9bb-4a33-b5ca-5cfbf891e612', NULL, NULL),
('5fd3c618-763d-4c74-aa5f-cf592b67278f', 'https://s.alicdn.com/@sc04/kf/H1f7fc45924af4b378fc999fe403428b4M.jpg_960x960.jpg', 'e98a0820-8104-4e70-8b8e-90914c05ef1d', NULL, NULL),
('6447b9cb-2657-425a-a4ee-4cdfae0f7083', 'https://s.alicdn.com/@sc04/kf/H4f00f23a0e7941c88f141b43020217ecA.jpg_960x960.jpg', '67500242-6a08-4250-afd1-b4212bf0456f', NULL, NULL),
('6b64fa33-90ce-4898-a98d-b4e098448aa5', 'https://s.alicdn.com/@sc04/kf/Hf0f0053042bf4c61ae7ae350b11e39913.jpg_960x960.jpg', '2dff6630-8e2b-4e7b-9764-76d522d669ab', NULL, NULL),
('6e1f73f2-188f-455e-b6c6-123f4750fa94', 'https://s.alicdn.com/@sc04/kf/H34df78c7f9124a73ac8e82492221d17cL.jpg_960x960.jpg', '18a0989f-784b-4302-b53a-f1bbaaf040ce', NULL, NULL),
('6f91c40f-d869-4797-8127-d814a2d18aa0', 'https://s.alicdn.com/@sc04/kf/Hd7f3af91191d451582f9ad2e36e7ac0bS.jpg_960x960.jpg', '18a0989f-784b-4302-b53a-f1bbaaf040ce', NULL, NULL),
('6fae7a9e-8459-4042-bdad-5b693a87fd34', 'https://s.alicdn.com/@sc04/kf/H8a8aec3108bb43d7940a3c14b06ea18fW.jpg_960x960.jpg', '2dff6630-8e2b-4e7b-9764-76d522d669ab', NULL, NULL),
('7512bcb8-23d3-4e8a-8d04-2bbb0bc58a4b', 'https://s.alicdn.com/@sc04/kf/H55dc946115084127b780af5815cd0b7eZ.jpg_960x960.jpg', '31230cab-1811-4d9a-b33e-5216db6bdbf7', NULL, NULL),
('7b137aff-3b4b-4b6c-81c1-baee9a356d0b', 'https://s.alicdn.com/@sc04/kf/H20f103f05e2d449591650083a31f2c4bM.jpg_960x960.jpg', '7ba6d7ba-cf86-44c3-8295-6a534d24fe16', NULL, NULL),
('7b904939-e809-47e2-ac94-cf8a9e1cde47', 'https://s.alicdn.com/@sc04/kf/Hb18be2e4553c477aa814c5503fba2140E.jpg_960x960.jpg', '34ec9165-17af-46b7-8ea6-6ef42b3554fc', NULL, NULL),
('7e692b99-b76d-4324-8dbf-b140cd4bd278', 'https://s.alicdn.com/@sc04/kf/H6192fab6f28b4a1783eabd08c8adc139V.jpg_960x960.jpg', 'a9ad15cd-b8c6-469e-8a98-e3fe033aa94e', NULL, NULL),
('8172ff3f-d18c-4deb-b0b0-c660dd235192', 'https://s.alicdn.com/@sc04/kf/Hd11995679b93477b9415013cc00efed9D.jpg_250x250.jpg', '9bf681c1-4706-4d12-8fdc-ca3cca5c89a9', NULL, NULL),
('8486a5d7-5f95-490e-bd96-dd9cd6386be0', 'https://s.alicdn.com/@sc04/kf/H6b9befe39c1e4d609814b3a0bd5bbbe3g.jpg_960x960.jpg', 'fe3c2cc8-5b98-45a8-8a99-75add17aac37', NULL, NULL),
('848ed3d8-72ee-4d3e-9aae-fb133aaba492', 'https://s.alicdn.com/@sc04/kf/Hf68e5312c034462d8c7d094e75def680Z.jpg_960x960.jpg', 'ec7271f5-36ad-4d00-b1da-7a6024ee2bd3', NULL, NULL),
('85533814-28eb-40a8-a50e-e1816405a0fa', 'https://s.alicdn.com/@sc04/kf/Ha3b9f6fc73ca4d09a8f54aaf842becf7f.jpg_960x960.jpg', 'e719d8c1-36fc-4826-b95f-4dcdd6be6628', NULL, NULL),
('86dc15a5-0634-4aea-9395-7241ec1d4d4d', 'https://s.alicdn.com/@sc04/kf/Hc9b5c190bf04407f9afa4e4e1879a4abt.jpg_960x960.jpg', 'fe3c2cc8-5b98-45a8-8a99-75add17aac36', NULL, NULL),
('883086ab-d9d6-4fe9-9f3a-3d9d295e462e', 'https://s.alicdn.com/@sc04/kf/H1992f1d771274c0ca0bbb6d3ef7af309Z.jpg_960x960.jpg', 'b6543edf-2bd7-4def-8fd6-a5f5771fbf9f', NULL, NULL),
('894600b2-e0c9-4d65-bc5e-17310714d9c8', 'https://s.alicdn.com/@sc04/kf/Hac98803899464060b9d9bcb4f7bcaa38u.jpg_960x960.jpg', 'ec7271f5-36ad-4d00-b1da-7a6024ee2bd2', NULL, NULL),
('8954ad04-5582-4b5f-973f-1479c93e6fab', 'https://s.alicdn.com/@sc04/kf/H833f7118089c4e47a4b09697892b4c986.jpg_960x960.jpg', 'e719d8c1-36fc-4826-b95f-4dcdd6be6631', NULL, NULL),
('89b027f3-b060-4cb9-a662-b2166661cce1', 'https://s.alicdn.com/@sc04/kf/Hfb7c13b8d74c46c09ee2b183b6a95062g.jpg_960x960.jpg', 'e98a0820-8104-4e70-8b8e-90914c05ef1d', NULL, NULL),
('8ad43eb5-480c-4afa-a4b8-de8f73085822', 'https://s.alicdn.com/@sc04/kf/Ha46e3a5a8f7d4ed5bebfc4f4b791fe92H.jpg_960x960.jpg', 'b6543edf-2bd7-4def-8fd6-a5f5771fbf9f', NULL, NULL),
('8bd7a47d-5a81-44c8-b4ea-13b92e343645', 'https://s.alicdn.com/@sc04/kf/Hed222e934add47ffb9215b992439a76da.jpg_960x960.jpg', '81bdf5ac-ee8b-44b3-b0da-dc65727b8c1f', NULL, NULL),
('8f79fe89-e6a8-42c4-a3d1-fb9a726b52ef', 'https://s.alicdn.com/@sc04/kf/H9f8686daef95464ebf98b32c4f964b9dr.jpg_960x960.jpg', '53e5d9d9-86d0-4e9b-8847-628effff51a3', NULL, NULL),
('8fc62b18-4a1c-4cc4-91ce-8d8122585515', 'https://s.alicdn.com/@sc04/kf/He7405e2c421a4945b7d1233d201bcdbaK.jpg_960x960.jpg', '9bf681c1-4706-4d12-8fdc-ca3cca5c89a10', NULL, NULL),
('93cb3a69-0f13-4b8d-a551-b6501cc73a52', 'https://s.alicdn.com/@sc04/kf/H6eb787f1757441ec8ce548ca47108cb5B.jpg_960x960.jpg', 'cc306e97-0f79-4993-b8a2-f08bf56e5c101', NULL, NULL),
('9e9e7bf4-d404-4d4d-a9aa-27aae78e5645', 'https://s.alicdn.com/@sc04/kf/Hbd59badcf9b4433b89f14e76d1a8469cS.jpg_960x960.jpg', '3d2d7fec-2927-4c2e-986f-e509feecc8fe', NULL, NULL),
('a07b4e54-4f7b-48fb-aeb2-ecabf04e6cf7', 'https://s.alicdn.com/@sc04/kf/H346da96c8db243118ed1846bd19867aeo.jpg_960x960.jpg', 'c4eeeaff-d1e4-40ae-9cd9-f2981b0f0bdb', NULL, NULL),
('a0e76bb3-d7b6-43be-b25d-8282b3931230', 'https://s.alicdn.com/@sc04/kf/H2cefed92ebd643408d403fdf77945a34F.jpg_960x960.jpg', '56b48af9-2c27-4ed3-b74b-e377aa46e0b5', NULL, NULL),
('a587a517-8479-455f-9704-bbffc1daf378', 'https://s.alicdn.com/@sc04/kf/Ha3c9c20a81b642d39d4ffabd0518c0c5x.jpg_960x960.jpg', 'be7e3134-fefc-409d-a3da-ab7ab1bb3f30', NULL, NULL),
('aab026a3-81bf-4948-ab3f-c3db5ce26e8b', 'https://s.alicdn.com/@sc04/kf/Hfd094ff881b24b1d8f86e6058524e3071.jpg_960x960.jpg', 'a9ad15cd-b8c6-469e-8a98-e3fe033aa94e', NULL, NULL),
('abbae919-7990-4c60-8ccf-0fb68530e7c2', 'https://s.alicdn.com/@sc04/kf/He339fe39fe9d410dbfa47f551eaeb547W.jpg_960x960.jpg', '3d2d7fec-2927-4c2e-986f-e509feecc8fe', NULL, NULL),
('b623e51b-c6b1-4a2a-96ab-4e95f809319f', 'https://s.alicdn.com/@sc04/kf/H058df3eb54084703b26e432d55710ee66.jpg_960x960.jpg', '53e5d9d9-86d0-4e9b-8847-628effff51a2', NULL, NULL),
('b7230cd5-336f-4e73-bd1d-9b50db41d188', 'https://s.alicdn.com/@sc04/kf/Ha13cde32a0f54a6a92b32769d0c65483k.jpg_960x960.jpg', '67500242-6a08-4250-afd1-b4212bf0456f', NULL, NULL),
('bc41a5df-7761-4747-bd2c-602713d36d1b', 'https://s.alicdn.com/@sc04/kf/H5b59183997994ce982e26ec263c8c0daE.jpg_960x960.jpg', 'b6543edf-2bd7-4def-8fd6-a5f5771fbf9f', NULL, NULL),
('c2e4d8fd-1427-4646-8055-c03da8967e45', 'https://s.alicdn.com/@sc04/kf/H05744b40584e4e47ae43d5b8d7fcd93cd.jpg_960x960.jpg', '53e5d9d9-86d0-4e9b-8847-628effff51a1', NULL, NULL),
('c4668eec-4881-4ae3-b2ca-6b511f6a04db', 'https://s.alicdn.com/@sc04/kf/Hce0a95f335f846b9bccaab51cc4e80d6j.jpg_960x960.jpg', '743daa3d-c636-4f67-b21a-c01c9aa0a956', NULL, NULL),
('c47b923b-22b1-4094-9f22-05cc7d7db49f', 'https://s.alicdn.com/@sc04/kf/H3ce828c8b3664cfda7556e9f4917a8d9V.jpg_960x960.jpg', '2dff6630-8e2b-4e7b-9764-76d522d669ab', NULL, NULL),
('c8d3926a-facb-4b61-a5cb-0560c4873e90', 'https://s.alicdn.com/@sc04/kf/Hf6bd444b8c144a4d8b9052e51fd5cdfeX.jpg_960x960.jpg', '34d04565-0475-4fd0-a15c-f67cc70e852f', NULL, NULL),
('c9116330-3dee-4f28-8007-3ea3cc015517', 'https://s.alicdn.com/@sc04/kf/H3823f4cd9b3e4458b0d0c58130c0c17bg.jpg_960x960.jpg', '743daa3d-c636-4f67-b21a-c01c9aa0a958', NULL, NULL),
('ca25465b-c1e1-4e44-a187-6118ee711cd9', 'https://s.alicdn.com/@sc04/kf/H8d0a5a53b19a4743916b2f4f4863c16ao.jpg_960x960.jpg', '1d85a3b5-65f9-47e3-af3c-0b2d0f22ef7c', NULL, NULL),
('cb9e3aa9-2e0f-4fa0-be59-c492d9baad3d', 'https://s.alicdn.com/@sc04/kf/H609fa5f82c4f426dac05dad99b5470cf7.jpg_960x960.jpg', 'be7e3134-fefc-409d-a3da-ab7ab1bb3f31', NULL, NULL),
('d0409bd4-9ad0-443c-b188-c8bbf4d39686', 'https://s.alicdn.com/@sc04/kf/He7aeb514095b41288643e3f8969c1007k.jpg_960x960.jpg', 'e719d8c1-36fc-4826-b95f-4dcdd6be6629', NULL, NULL),
('d2a38c5f-22c9-4078-b40a-6af989971b63', 'https://s.alicdn.com/@sc04/kf/Hac36271d82a3447cbffcad3c252e0250q.jpg_960x960.jpg', '34d04565-0475-4fd0-a15c-f67cc70e852f', NULL, NULL),
('d655d5ae-31ee-49a9-999e-cdbebc15b57a', 'https://s.alicdn.com/@sc04/kf/H45a3a41e5f724c829aeb45542f825ee0a.jpg_960x960.jpg', '53e5d9d9-86d0-4e9b-8847-628effff51a4', NULL, NULL),
('d6b79e6a-6c8d-4d5b-b1bb-300121d3e66a', 'https://s.alicdn.com/@sc04/kf/H436d6d58de0e46e0b770d33efff5beabd.jpg_960x960.jpg', 'e98a0820-8104-4e70-8b8e-90914c05ef1d', NULL, NULL),
('d9b61790-b602-4656-be1d-44ff17101aca', 'https://s.alicdn.com/@sc04/kf/Hc9d97280a4fc4a3ba78bdd5c9504da0bv.jpg_960x960.jpg', '8c3247a1-6e4e-4a09-861a-f53e1808e840', NULL, NULL),
('db387d02-8aa7-41db-a1b4-21db25c271d0', 'https://s.alicdn.com/@sc04/kf/Hff5a152166d84d7083b48dbbc6839d1cJ.jpg_960x960.jpg', 'e976f078-6b9c-4d47-97a2-cb8cd24e7ada', NULL, NULL),
('db3888ce-da21-4eee-914c-fb451380c316', 'https://s.alicdn.com/@sc04/kf/H6b483c471e4a4e35a4517472f1233ffeq.jpg_960x960.jpg', 'cc306e97-0f79-4993-b8a2-f08bf56e5c98', NULL, NULL),
('dfad4735-9297-4927-8c6a-2caf7be9a351', 'https://s.alicdn.com/@sc04/kf/H2a9d003ab6f246eea5b313edb4cf2a6a1.jpg_960x960.jpg', '18a0989f-784b-4302-b53a-f1bbaaf040ce', NULL, NULL),
('e5514f0e-8dd8-49f1-b7dc-4bb87ea7d2fa', 'https://s.alicdn.com/@sc04/kf/H38286d69f71542c9aada5ea9c8034d3el.jpg_960x960.jpg', '743daa3d-c636-4f67-b21a-c01c9aa0a957', NULL, NULL),
('ee10acd1-ce77-48d2-b402-c82b4aaeb7c3', 'https://s.alicdn.com/@sc04/kf/H54007a379d99435cb586813b5dab01a2M.jpg_960x960.jpg', '8c3247a1-6e4e-4a09-861a-f53e1808e841', NULL, NULL),
('ee243030-7f09-4f35-b283-ba32f18f7b40', 'https://s.alicdn.com/@sc04/kf/H8246a08d039341539d859156ee781debd.jpg_960x960.jpg', 'e976f078-6b9c-4d47-97a2-cb8cd24e7ada', NULL, NULL),
('f1e7689f-5e1b-4bf7-82e8-eba90b8430ae', 'https://s.alicdn.com/@sc04/kf/Hefff1d96254e48bf8f1769d3cebe5548j.jpg_960x960.jpg', 'fe3c2cc8-5b98-45a8-8a99-75add17aac35', NULL, NULL),
('f4ac38ce-4784-4087-8b55-0a923fa196cc', 'https://s.alicdn.com/@sc04/kf/H339a4c69423045d5a39f5b7b7b08d368T.jpg_960x960.jpg', 'c4eeeaff-d1e4-40ae-9cd9-f2981b0f0bdb', NULL, NULL),
('fa69f00c-aa1e-42c9-a8bc-fb021951eff7', 'https://s.alicdn.com/@sc04/kf/H8f6f342812f8433f9d6a8305a3ac585dY.jpg_960x960.jpg', '7ba6d7ba-cf86-44c3-8295-6a534d24fe14', NULL, NULL),
('fbe575be-2a54-464c-9242-a0c43ebbb205', 'https://s.alicdn.com/@sc04/kf/H2591bfd281af474d828acce63256f2ffE.jpg_960x960.jpg', '31230cab-1811-4d9a-b33e-5216db6bdbf5', NULL, NULL),
('fd204be7-f03e-4a40-b74a-6023b070c0aa', 'https://s.alicdn.com/@sc04/kf/H2776a2859ed545aaad64c78224de99b4C.jpg_960x960.jpg', '8c3247a1-6e4e-4a09-861a-f53e1808e839', NULL, NULL),
('fd616dc9-b749-4f8a-87ad-2ccd69cc4dbc', 'https://s.alicdn.com/@sc04/kf/H6d44d75e4fe7465b86b425734f78b72c3.jpg_960x960.jpg', '34ec9165-17af-46b7-8ea6-6ef42b3554fc', NULL, NULL),
('ff7fa295-82b1-42dc-885f-f6a251925505', 'https://s.alicdn.com/@sc04/kf/Hc559fc43272048ffaeaa21f01bec2f31x.jpg_960x960.jpg', '2dff6630-8e2b-4e7b-9764-76d522d669ab', NULL, NULL),
('ffba017b-20e6-43ad-acd1-a50493d05240', 'https://s.alicdn.com/@sc04/kf/H42a85da0d1894eeca3d1a424bba23ef2e.jpg_960x960.jpg', 'c4eeeaff-d1e4-40ae-9cd9-f2981b0f0bdb', NULL, NULL),
('ffc0935d-fb16-4a9d-8079-ed2c4575faee', 'https://s.alicdn.com/@sc04/kf/Hd9ae5f1d71444ff49607379302abf7ffv.jpg_960x960.jpg', '9bf681c1-4706-4d12-8fdc-ca3cca5c89a11', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
