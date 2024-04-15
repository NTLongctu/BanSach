-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2024 at 10:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--
CREATE DATABASE IF NOT EXISTS `blogs` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `blogs`;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `subdescription` varchar(500) DEFAULT NULL,
  `content` varchar(8000) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `date_create` timestamp NULL DEFAULT current_timestamp(),
  `last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `subdescription`, `content`, `image`, `tag_id`, `user_id`, `status`, `date_create`, `last_update`) VALUES
(1, 'A Loving Heart is the Truest Wisdom', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis, enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta architecto tempora.\r\n\r\nMolestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat', 'test.jpg', 1, 1, 0, '2024-01-09 08:22:45', '2024-01-09 09:56:20'),
(7, 'DU LỊCH CORON VỚI LỊCH TRÌNH 6 NGÀY CỦA TUÂN', 'VỀ CHẶNG BAY THÍCH HỢP ĐI DU LỊCH CORON\r\nMình bay 2 chặng từ HCM qua Manila bay Cebu Pacific tới nơi', 'VỀ CHẶNG BAY THÍCH HỢP ĐI DU LỊCH CORON\nMình bay 2 chặng từ HCM qua Manila bay Cebu Pacific tới nơi thì tầm khoảng 6h sáng, ngồi nghỉ ngơi ăn sáng đợi tới tầm 10h thì bay chặng tiếp theo xuống Coron. Mình bay 2 chặng khác nhau chứ không book nối chuyến nhé.\n<h2> VỀ LỊCH TRÌNH DU LỊCH CORON CÓ GÌ</h2>\nNgày 1- Khám phá Coron\nSau khi đáp chuyến bay và đặt chân xuống Coron, mình dành khoảng 4 giờ đầu tiên để khám phá những nét độc đáo của nơi này. Chiều tới, mình lên thuyền ra Sunlight Ecotouris', '659d36d3417c1.jpg', 6, 1, 0, '2024-01-09 12:06:43', '2024-01-09 12:21:16'),
(8, 'DU LỊCH NEPAL 2023 KINH NGHIỆM ĐỂ TREK CÙNG MARDI HIMAL', 'Du lịch Nepal rất nổi tiếng với các cung trek, ở Việt Nam thì những cung phổ biến như ABC, EBC thườn', 'Du lịch Nepal rất nổi tiếng với các cung trek, ở Việt Nam thì những cung phổ biến như ABC, EBC thường được mọi người đi nhiều và nhắc tới nhiều. Trong đợt quay lại Nepal sau 7 năm mình muốn tìm 1 cung gì đó mới mới 1 xíu, và phải xuất phát từ Pokhara vì mình ngại phải đi xe. Pokhara thì mới khai trương sân bay mới chỉ cần bay vèo 25 phút từ thủ đô lên là được, thế là được gợi ý cung Mardi Himal. Thoả mãn đầy đủ các tiêu chí: dễ đi, và nhiều cây cối chứ không quá cằn cỗi. Dưới đây là 1 vài kinh n', '659d396481234.jpg', 6, 1, 0, '2024-01-09 12:17:40', '2024-01-09 12:17:40'),
(9, 'VÉ MÁY BAY ĐI THỤY SĨ 2023 CÓ GIÁ BAO NHIÊU?', 'Thụy Sĩ thực sự như một điểm đến mơ ước của bất kỳ ai. Những dãy núi cao tuyệt đẹp, những hồ nước mê', 'Thụy Sĩ thực sự như một điểm đến mơ ước của bất kỳ ai. Những dãy núi cao tuyệt đẹp, những hồ nước mê hoặc, những con đường rải sỏi quyến rũ, những viên sô cô la Thụy Sĩ ngon lành luôn khiến mình tự hỏi liệu vùng đất mê hoặc này có thực sự tồn tại hay không.  \r\n\r\nNếu bạn đang lên kế hoạch cho một chuyến du lịch ngắn ngày hay dài ngày tại đất nước xinh đẹp này và muốn tham khảo cách săn vé máy bay đi Thụy Sĩ tiết kiệm nhất, vậy thì bài viết dưới đây chính là dành cho bạn. \r\n\r\nHướng dẫn mua vé máy ', '659d39dff3158.jpg', 6, 1, 0, '2024-01-09 12:19:43', NULL),
(10, 'TOP 10 BÃI BIỂN ĐẸP NHẤT PHÚ QUỐC', 'Phú Quốc được ví như một thiên đường biển đảo đẹp nhất Việt Nam. ', 'Phú Quốc được ví như một thiên đường biển đảo đẹp nhất Việt Nam. Ngoài việc sở hữu vẻ đẹp của thiên nhiên, không khí của đất trời, Phú Quốc còn được mẹ thiên nhiên ưu ái trao tặng những bãi biển cực đẹp với làn nước trong veo, xanh ngát. Lưu lại top 10 bãi biển đẹp nhất Phú Quốc bên dưới để vi vu cùng gia đình, bạn bè.\r\nBãi Rạch Vẹm\r\nBãi Rạch Vẹm nằm ở phía Bắc của đảo ngọc Phú Quốc. Vị trí thuộc xã Gành Dầu, cách thị trấn Đông Dương 40km. Bãi Rạch Vẹm nổi tiếng với bãi cát trắng mịn màng với khung cảnh hoang sơ. Điểm nổi bật ở nay đây là sao biển, bạn sẽ phải bất ngờ với những chú sao biển tung tăng dưới mặt nước. Thời gian đẹp nhất là từ tháng 11 đến tháng 3 năm sau nên đừng bỏ lỡ nhé.\r\nBãi Gành Dầu\r\nBãi Gành Dầu thực chất là một mũi đất nhô thẳng ra biển. Ấy thế mà nơi này lại trở thành một điểm đến thú vị cho lữ khách tứ phương. Dáng vẻ thanh bình và hoang dã của bãi Gành Dầu đã thu hút nhiều du khách đến với vị trí phía Tây Bắc của đảo ngọc.\r\nHòn Đồi Mồi\r\nHòn Đồi Mồi là một món quà của tạo hóa chưa được khám phá. Đối diện với Vinpearl Phú Quốc, hòn Đồi Mồi ẩn mình với giản đơn vốn có. Nếu bạn là người yêu thiên nhiên và những gì thuộc về tạo hóa nguyên sơ, hãy đến đây. Buổi chiều hoàng hôn sẽ giúp tâm hồn bạn được vỗ vễ nhẹ nhàng.\r\nBãi Dài\r\nBãi Dài có chiều dài đúng như tên gọi của mình là trải dài 15km. Bắt đầu từ mũi Gành Dầu đến Cửa Cạn, sở hữu không khí trong lành nên bãi Dài luôn được biết đến là một trong những bãi biển đẹp nhất Phú Quốc. Vinpearl Phú Quốc và nhiều resort cũng tọa lạc trên bãi Dài nên du khách thoải mái khám phá.', '659d3aec1daab.jpg', 6, 1, 0, '2024-01-09 12:24:12', '2024-01-09 12:26:54'),
(11, 'TOP 10 RESORT 5 SAO Ở PHÚ QUỐC', 'Phú Quốc luôn là một trong những điểm đến nghỉ dưỡng được ưa chuộng hàng đầu mỗi năm.', '<p>Ph&uacute; Quốc lu&ocirc;n l&agrave; một trong những điểm đến nghỉ dưỡng được ưa chuộng h&agrave;ng đầu mỗi năm. Được v&iacute; như thi&ecirc;n đường biển đảo Việt Nam, Ph&uacute; Quốc vươn m&igrave;nh để ch&agrave;o đ&oacute;n du kh&aacute;ch tứ phương. Khung cảnh thơ mộng, hoạt động giải tr&iacute; đa dạng v&agrave; nơi dừng ch&acirc;n c&oacute; thể n&oacute;i l&agrave; &ldquo;đỉnh của ch&oacute;p&rdquo; sẽ mang đến cho bạn những gi&acirc;y ph&uacute;t cực kỳ thoải m&aacute;i.</p>\r\n<p>Điểm qua top 10 resort 5 sao ở Ph&uacute; Quốc &ndash; nơi c&oacute; thể l&agrave; sự lựa chọn của bạn. H&atilde;y tận hưởng kỳ nghỉ ngọt ng&agrave;o c&ugrave;ng gia đ&igrave;nh v&agrave; bạn b&egrave; trong thời gian tới nh&eacute;.</p>\r\n<h3>Salinda Phu Quoc Island Resort &amp; Spa</h3>\r\n<p>Ẩn m&igrave;nh b&ecirc;n bờ biển thị trấn Đ&ocirc;ng Dương, Salinda Phu Quoc Island Resort &amp; Spa mang đến sự đẳng cấp. Sự kết hợp giữa văn h&oacute;a địa phương v&agrave; kiến tr&uacute;c đương đại tạo ra một kh&ocirc;ng gian độc đ&aacute;o. Kiến tr&uacute;c lấy thi&ecirc;n nhi&ecirc;n l&agrave; trọng điểm mang đến những khoảng trời xanh cho du kh&aacute;ch.</p>\r\n<p>C&aacute;c hoạt động vui chơi tại đ&acirc;y phục vụ cho tất cả c&aacute;c độ tuổi kh&aacute;c nhau. Đối với c&aacute;c em nhỏ sẽ c&oacute; bể bơi ri&ecirc;ng nhỏ xinh với mực nước an to&agrave;n tuyệt đối. Ngo&agrave;i ra, những hoạt động như lặn ngắm san h&ocirc;, ch&egrave;o thuyền Kayak&hellip;sẽ mang đến cho du kh&aacute;ch những gi&acirc;y ph&uacute;t thư gi&atilde;n nhất.</p>\r\n<p>Địa chỉ: 1 Trần Hưng Đạo, Dương Tơ, Ph&uacute; Quốc, Ki&ecirc;n Giang</p>\r\n<p>Điện thoại: 0297 3390 011</p>\r\n<h3>Novotel Phu Quoc Resort</h3>\r\n<p>Tọa lạc ngay cạnh b&atilde;i Trường, Novotel Phu Quoc Resort mang đến những trải nghiệm cao cấp nhất. Hệ thống ph&ograve;ng nghỉ sang trọng v&agrave; tinh tế c&ugrave;ng sự phục vụ tận t&igrave;nh của nh&acirc;n vi&ecirc;n phục vụ.</p>\r\n<p>B&ecirc;n cạnh tiện nghi v&agrave; ph&ograve;ng nghỉ hiện đại l&agrave; c&aacute;c tiện &iacute;ch giải tr&iacute; chất lượng. Bạn chắc chắn kh&ocirc;ng thể bỏ qua ph&ograve;ng Gym xịn x&ograve;, khu Spa sang chảnh, 2 s&acirc;n Tennis v&agrave; c&aacute;c hoạt động kh&aacute;c.</p>\r\n<p>Địa chỉ: Đường B&agrave;o, Dương Tơ, Huyện Ph&uacute; Quốc, Ki&ecirc;n Giang</p>\r\n<p>Điện thoại: 0297 6260 999</p>', '659d4368e47e2.jpg', 6, 1, 0, '2024-01-09 13:00:24', NULL),
(12, 'Palace Hotel Tokyo', 'We dedicated the majority of our recent summer to Asia.', '<p><img src=\"img/_DSC4785.jpg\" alt=\"\" width=\"750\" height=\"1124\"></p>\n<p>We dedicated the majority of our recent summer to Asia. After our two-and-a-half-month stay in Seoul, we headed to Japan for business meetings related to <a href=\"https://superegg.nyc/\" target=\"_blank\" rel=\"noopener\">Superegg</a>. The first week of August coincided with a national holiday in Japan, affording us the opportunity to indulge in a personal vacation – highlights included visits to <a href=\"https://www.eggcanvas.com/blog/2023/naoshima-teshima\" target=\"_blank\" rel=\"noopener\">Naoshima</a>, Nagoya, and Kyoto! We eventually made our way to our ultimate destination: Tokyo. Among the exceptional accommodations we experienced was the <a href=\"https://en.palacehoteltokyo.com/\" target=\"_blank\" rel=\"noopener\">Palace Hotel Tokyo</a>, an esteemed member of <a href=\"https://www.lhw.com/\" target=\"_blank\" rel=\"noopener\">The Leading Hotels of The World</a>.</p>\n<p><img src=\"img/_DSC4794.jpg\" alt=\"\" width=\"1000\" height=\"1499\"></p>\n<p>Although the current iteration of the hotel debuted in 2012, it has a rich history dating back to 1961 when the original Palace Hotel Tokyo opened its doors. The present-day establishment represents a modern reconstruction of the original, preserving a cherished sense of tradition and sophistication. Within its confines, guests are treated to an array of premium guest rooms and suites thoughtfully crafted to blend contemporary Japanese aesthetics and modern amenities. Many of these rooms offer panoramic views of Tokyo and are equipped with high-end furnishings and technology.</p>', '_DSC4778.jpg', 1, 1, 0, '2024-01-09 15:22:03', '2024-01-09 16:22:10'),
(13, 'The Tokyo EDITION, Toranomon', 'Tokyo is a vibrant and ever-changing city, with a constant stream of new restaurants, shops, and hotels opening up.', '<p>Tokyo is a vibrant and ever-changing city, with a constant stream of new restaurants, shops, and hotels opening up. During our recent trip to Tokyo for the launch of <strong><a href=\"https://www.instagram.com/superegg_jp/\" target=\"_blank\" rel=\"noopener\">Superegg in Japan</a>, </strong>we had the opportunity to stay at one of the newest and most exciting additions to the city\'s hotel scene - <strong><a href=\"https://www.editionhotels.com/tokyo-toranomon/\" target=\"_blank\" rel=\"noopener\">The Tokyo EDITION, Toranomon</a>.</strong> This sleek and elegant hotel is situated in the bustling business district of Tokyo, making it an ideal choice for both business travelers and tourists looking to experience the city\'s energy and excitement.</p>\r\n<p><img src=\"img/_DSC9473.jpg\" alt=\"\" width=\"750\" height=\"1124\"></p>\r\n<p>The Tokyo EDITION, Toranomon, is the inaugural EDITION hotel in Japan, and it is the visionary creation of celebrated hotelier Ian Schrager. Renowned for his avant-garde approach to hotel design, Schrager has brought his signature style to this property, resulting in a modern and stylish interpretation of Japanese aesthetics. The hotel\'s design is characterized by clean lines, natural materials, and a restrained color scheme, all of which seamlessly blend contemporary design with traditional Japanese elements. The guest rooms are particularly noteworthy, featuring breathtaking views of Tokyo\'s skyline. For an unforgettable stay, be sure to reserve a room with a view of the iconic Tokyo Tower.</p>\r\n<p><img src=\"img/_DSC9493.jpg\" alt=\"\" width=\"1000\" height=\"1499\"></p>\r\n<p>On our first night, we had the pleasure of dining at <a href=\"https://www.editionhotels.com/tokyo-toranomon/restaurants-and-bars/the-jade-room-and-garden-terrace/\" target=\"_blank\" rel=\"noopener\">Jade Room</a>, an exquisite restaurant overseen by Michelin-starred chef Tom Aikens. Aikens, renowned for his creativity and talent in the culinary world, has designed a menu that draws inspiration from century-old cooking methods and features a blend of unique flavors and international influences, with a strong emphasis on seasonal ingredients. Whether you\'re a food connoisseur or simply looking for an exceptional dining experience, Jade Room is a restaurant that you won\'t want to miss during your time in Tokyo.</p>\r\n<p><img src=\"img/_DSC9514.jpg\" alt=\"\" width=\"1000\" height=\"1499\"></p>\r\n<p>Guests can enjoy a unique breakfast experience at <a href=\"https://www.editionhotels.com/tokyo-toranomon/restaurants-and-bars/the-blue-room/\" target=\"_blank\" rel=\"noopener\">The Blue Room</a>. During our stay, we couldn\'t resist trying the Japanese Breakfast Set, or \"asagohan,\" which is comprised of several small dishes served together for a wholesome and nourishing meal. A traditional asagohan typically includes a range of flavorful items, such as grilled fish, rice, miso soup, pickled vegetables, and tamagoyaki (Japanese omelet). It\'s an ideal way to start the day and a must-try for anyone looking to experience authentic Japanese cuisine.</p>', '_DSC9514.jpg', 1, 1, 0, '2024-01-09 16:08:47', '2024-01-09 16:08:47'),
(14, 'Tổng quan về Prompt Engineering', 'Trong tech blog số này, Got It sẽ cùng bạn tìm hiểu về Prompt Engineering cũng như một số kỹ thuật cơ bản giúp đầu ra của Large Language Models (LLMs) tối ưu nhất có thể!', '<h2><span id=\"ChatGPT_la_gi_Hoat_dong_nhu_the_nao\">ChatGPT là gì? Hoạt động như thế nào?</span></h2>\r\n<p><img src=\"img/alexandre-debieve-FO7JIlwjOtU-unsplash.jpg\" alt=\"\" width=\"529\" height=\"352\"></p>\r\n<p>Chúng ta đã quá quen thuộc với ChatGPT. Các model tương tự như GPT-3, GPT-4 của OpenAI hay PaLM của Google cũng không còn lạ lẫm. Nhưng cụ thể chúng là gì và hoạt động như thế nào, cùng tìm hiểu sâu hơn nhé!</p>\r\n<p>Những khái niệm vừa được nhắc đến bên trên đều là Large Language Model (LLM) – một loại model xử lý ngôn ngữ tự nhiên. Chúng sử dụng rất nhiều dữ liệu văn bản đầu vào để phân tích và suy luận mối quan hệ giữa các từ trong văn bản đó. Dựa trên những thông tin  “học” được và yêu cầu mà người dùng gửi lên, chúng sẽ đưa ra câu trả lời phù hợp nhất.</p>\r\n<p>Vậy nên, lượng dữ liệu đầu vào càng nhiều, chất lượng dữ liệu càng cao thì chất lượng của model càng tốt, câu trả lời càng chính xác và phù hợp.</p>\r\n<h2><span id=\"Prompt_Engineering_la_gi\">Prompt Engineering là gì?</span></h2>\r\n<p><img src=\"img/luca-bravo-XJXWbfSo2f0-unsplash.jpg\" alt=\"\" width=\"500\" height=\"333\"></p>\r\n<p>Để model có thể thực hiện một nhiệm vụ cụ thể nào đó, chúng ta cần cung cấp cho nó ngữ cảnh, thông tin và yêu cầu, hay còn gọi là <code>prompt</code>.</p>\r\n<p>Tuy nhiên, biết viết prompt là chưa đủ. Chúng ta cần phát triển và tối ưu hoá prompt để model trả về kết quả phù hợp nhất với mong muốn của chúng ta. Đây chính là Prompt Engineering.</p>\r\n<p>Nói chung, Prompt Engineering là một kỹ năng hữu dụng giúp chúng ta cải thiện chất lượng đầu ra của model và sử dụng nó một cách hiệu quả hơn.</p>\r\n<h3><span id=\"Mot_prompt_co_ban\">Một prompt cơ bản</span></h3>\r\n<p>Hãy tưởng tượng một giao diện mà bạn có thể dùng để tương tác với model. Bạn có thể cung cấp một prompt và model sẽ sinh ra câu trả lời. Ví dụ:</p>\r\n<ul>\r\n<li>Prompt: <code>Neoclassicism is</code></li>\r\n<li>Câu trả lời:</li>\r\n</ul>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_701898\">\r\n<table style=\"width: 1369.14px; height: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: auto; width: auto;\">\r\n<td style=\"height: auto; width: auto;\">\r\n<div>1</div>\r\n</td>\r\n<td style=\"width: 1333.94px; height: auto;\">\r\n<div>\r\n<div><code>a movement in art, architecture, and literature that emerged in the 18th century and reached its peak during the late 18th and early 19th centuries.</code></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Trong trường hợp này, prompt không phải một câu hỏi, cũng không phải là một yêu cầu gì phức tạp, mà chỉ đơn giản là một câu chưa hoàn chỉnh. Vì thế, câu trả lời của model sẽ là những từ phù hợp nhất để có thể hoàn thiện câu đó.</p>\r\n<h3><span id=\"Thanh_phan_cua_mot_prompt\">Thành phần của một prompt</span></h3>\r\n<p>Một prompt có thể chứa các thành phần sau:</p>\r\n<ul>\r\n<li>Ngữ cảnh (Context)</li>\r\n<li>Yêu cầu (Instruction)</li>\r\n<li>Thông tin đầu vào (Input data)</li>\r\n<li>Chỉ thị đầu ra (Output indicator)</li>\r\n</ul>\r\n<p>Bạn có chỉ ra được những thành phần trên trong ví dụ dưới đây không?</p>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_4624\">\r\n<table style=\"width: 920.5px; height: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: auto; width: auto;\">\r\n<td style=\"height: auto; width: auto;\">\r\n<div>1</div>\r\n<div>2</div>\r\n<div>3</div>\r\n<div>4</div>\r\n<div>5</div>\r\n</td>\r\n<td style=\"width: 885.3px; height: auto;\">\r\n<div>\r\n<div><code>You\'re a research assistant who always classifies things as the opposite of what they should be. </code></div>\r\n<div><code>Classify the following text into positive, neutral or negative.</code></div>\r\n<div><code>Don\'t say anything other than the sentiment:</code></div>\r\n<div><code>Text: The food at this restaurant sucks!</code></div>\r\n<div><code>Sentiment:</code></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Cùng phân tích thử nhé!</p>\r\n<ul>\r\n<li>Ngữ cảnh: “You’re a research assistant who always classifies things as the opposite of what they should be.”</li>\r\n<li>Yêu cầu: “Classify the following text into positive, neutral or negative. Don’t say anything other than the sentiment:”</li>\r\n<li>Thông tin đầu vào: “The food at this restaurant sucks!”</li>\r\n<li>Chỉ thị đầu ra: “Sentiment:”</li>\r\n</ul>\r\n<h3><span id=\"Mot_so_ky_thuat_Prompt_Engineering_co_ban\">Một số kỹ thuật Prompt Engineering cơ bản</span></h3>\r\n<h4><span id=\"Few-Shot\">Few-Shot</span></h4>\r\n<p>Ta có hai ví dụ sau:</p>\r\n<ul>\r\n<li><strong>Ví dụ 1:</strong></li>\r\n</ul>\r\n<p><strong><em>Prompt:</em></strong></p>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_148115\">\r\n<table style=\"width: 736px; height: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: auto; width: auto;\">\r\n<td style=\"height: auto; width: auto;\">\r\n<div>1</div>\r\n</td>\r\n<td style=\"width: 700.8px; height: auto;\">\r\n<div>\r\n<div><code>What is the sentiment of this sentence? I demand to see your manager!</code></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p><strong><em>Response:</em></strong></p>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_182170\">\r\n<table style=\"width: 736px; height: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: auto; width: auto;\">\r\n<td style=\"height: auto; width: auto;\">\r\n<div>1</div>\r\n</td>\r\n<td style=\"width: 700.8px; height: auto;\">\r\n<div>\r\n<div><code>Negative</code></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<ul>\r\n<li><strong>Ví dụ 2:</strong></li>\r\n</ul>\r\n<p><strong><em>Prompt:</em></strong></p>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_611197\">\r\n<table style=\"width: 736px; height: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: auto; width: auto;\">\r\n<td style=\"height: auto; width: auto;\">\r\n<div>1</div>\r\n</td>\r\n<td style=\"width: 700.8px; height: auto;\">\r\n<div>\r\n<div><code>Is the sum of the following numbers an odd number? 14, 93, 12, 35</code></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p><strong><em>Response:</em></strong></p>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_126684\">\r\n<table style=\"width: 736px; height: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: auto; width: auto;\">\r\n<td style=\"height: auto; width: auto;\">\r\n<div>1</div>\r\n</td>\r\n<td style=\"width: 700.8px; height: auto;\">\r\n<div>\r\n<div><code>Yes, the sum of these numbers is 154, which is an odd number.</code></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Khi prompt không đưa ví dụ nào cho model, ta gọi kỹ thuật này là Zero-Shot.</p>\r\n<p>Cũng là 2 ví dụ trên, nhưng nếu cung cấp một vài ví dụ trong prompt để model có thể học theo, thì ta đang áp dụng một kỹ thuật gọi là Few-Shot.</p>\r\n<p><img src=\"img/marvin-meyer-SYTO3xs06fU-unsplash.jpg\" alt=\"\" width=\"600\" height=\"400\"></p>\r\n<h2><span id=\"Ket_bai\">Kết bài</span></h2>\r\n<p>Hy vọng qua bài viết này, bạn đã biết được Prompt Engineering là gì cũng như cách áp dụng một số kỹ thuật Prompt Engineering để cải thiện chất lượng đầu ra của model.</p>\r\n<p>Nếu bạn thấy bài viết này hữu ích thì hãy lưu lại và chia sẻ tới bạn bè ngay nhé! Đừng quên theo dõi chuyên mục Tech Blog để cập nhật những kiến thức công nghệ, lập trình bổ ích được chia sẻ bởi chính những Software Engineers tại Got It!</p>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_410305\"></div>\r\n</div>\r\n</div>', 'marvin-meyer-SYTO3xs06fU-unsplash.jpg', 5, 2, 0, '2024-01-10 04:57:28', '2024-01-10 04:57:28'),
(15, 'Ridiculously Good Air Fryer Chicken Breast', 'My go-to everyday air fryer chicken! Thinly sliced chicken breast pieces, coated to the max in spices, plus a bit of brown sugar and cornstarch, and air fried to golden, juicy perfection.', '<h2>This Air Fryer Chicken Breast Is Ridiculously Good</h2>\r\n<p>But my life has changed in such a big way out here in the year 2024, and I’m now making this air fryer chicken <em>almost on the daily</em>. It’s so juicy, so delicious, and those crispity little browned bits! Ugh.</p>\r\n<p>How I got here: Bjork has been going hog wild on all things protein in the last few months. As resident cooker of all the food in our house, I decided it’s time for me to figure out a really foolproof way to make chicken – for him (#protein), and for <em>me</em>, so that I actually like it.</p>\r\n<p><img src=\"img/premium_photo-1663852297267-827c73e7529e.jpg\" alt=\"\" width=\"500\" height=\"333\"></p>\r\n<p>So even though I’ve resisted it for years… I bought an <a href=\"https://amzn.to/47qwPfd\" target=\"_blank\" rel=\"noreferrer noopener sponsored nofollow\">air fryer</a> <em>(affiliate link)</em>. Almost exclusively to make chicken. And guess what? The one recipe I keep coming back to is these thinly sliced chicken breast pieces, coated to the max in spices, plus a bit of brown sugar and cornstarch, and air fried to golden, juicy perfection. I LOVE THIS CHICKEN SO MUCH!</p>\r\n<p>There’s an excessive amount of seasoning and flavor, which we obviously love, but it’s the golden crisped exterior with little edge bits that you will die for. And all the while it stays nice and juicy on the inside.</p>\r\n<p>Takes 15 minutes to make and it’s such a family winner for us. I hope you love it!</p>\r\n<figure><img ></figure>\r\n<p><img src=\"img/photo-1504674900247-0877df9cc836.jpg\" alt=\"\" width=\"500\" height=\"333\"></p>\r\n<p> </p>', 'premium_photo-1663852297267-827c73e7529e.jpg', 7, 2, 0, '2024-01-10 06:42:34', '2024-01-10 06:42:34'),
(16, 'Technical Product Manager', 'Hanoi | Full-time | On-site |', '<p>Come join us as the<strong>&nbsp;Technical Product Manager&nbsp;</strong>in one of Silicon Valley&rsquo;s most innovative edTech companies, developing the world&rsquo;s first on-demand AI-based expert-managed marketplace for millions of learners in the English-speaking world and experts in over 100+ countries. Investors include those who backed SpaceX and Discord.</p>\r\n<p>Got It Inc. is looking for an outstanding Technology Leader to join our talented team of U.S.-based leaders and Silicon Valley-level software engineers, product managers, and test engineers in Vietnam and around the world. You&rsquo;ll work directly with the founder and a world-class team of technology industry veterans to build the next generation of the Got It platform, handling a massive number of real-time learning sessions between askers and experts in multiple subjects.</p>\r\n<p><img src=\"img/alexandre-debieve-FO7JIlwjOtU-unsplash.jpg\" alt=\"\" width=\"600\" height=\"400\"></p>\r\n<h3><span id=\"The_Core_Job\">The Core Job</span></h3>\r\n<ul>\r\n<li>Be able to work well with internal teams, including software engineers, architects, quality assurance, and operations. Ensure requirements are fully understood and that implementation plans match expectations.</li>\r\n<li>Ensure that all projects are delivered on time, within the scope, and within budget.</li>\r\n<li>Assist in the definition of project scope and objectives, involving all relevant internal stakeholders and ensuring technical feasibility.</li>\r\n<li>Ensure that user story content and prioritization are aligned with larger strategic objectives.</li>\r\n<li>Ensure resource availability and allocation.</li>\r\n<li>Work within a software development methodology like AGILE.</li>\r\n<li>Develop a detailed project plan to monitor and track progress.</li>\r\n<li>Manage changes to the project scope, project schedule, and project costs using appropriate verification techniques.</li>\r\n<li>Measure performance using appropriate project management tools and techniques.</li>\r\n<li>Report and escalate to management as needed.</li>\r\n<li>Perform risk management to minimize potential risks.</li>\r\n<li>Create and maintain comprehensive project documentation.</li>\r\n<li>Represent the technical product team in Vietnam and help engineers and QAs understand every single detail of each technical product feature.</li>\r\n<li>Perform other related duties as assigned.</li>\r\n</ul>\r\n<p><img src=\"img/luca-bravo-XJXWbfSo2f0-unsplash.jpg\" alt=\"\" width=\"600\" height=\"400\"></p>\r\n<h3><span id=\"You_Must_Have\">You Must Have</span></h3>\r\n<ul>\r\n<li>Proven working experience in project management.</li>\r\n<li>Excellent client-facing and internal communication skills.</li>\r\n<li>Excellent written and verbal communication skills in Vietnamese and English.</li>\r\n<li>Solid organizational skills including attention to detail and multitasking skills.</li>\r\n<li>Bachelor&rsquo;s Degree in Computer Science, Information Technology,&nbsp;or related fields.</li>\r\n<li>Experience with project management software tools such as Jira, Trello&hellip;</li>\r\n<li>Self-motivated, data-driven, responsible, detail-oriented, process-oriented, get things done.</li>\r\n<li>2+ years of experience delivering highly successful and innovative internet products with tons of users; including experience in an operational service delivery capacity.</li>\r\n</ul>\r\n<h3><span id=\"Extra_Bonus\">Extra Bonus</span></h3>\r\n<ul>\r\n<li>Startup experience.</li>\r\n<li>Experience working with distributed development teams.</li>\r\n<li>Prior experience as a Product Owner in a scrum team.</li>\r\n</ul>\r\n<h3><span id=\"Why_You8217ll_Love_Working_Here\">Why You&rsquo;ll Love Working Here</span></h3>\r\n<ul>\r\n<li><strong>21+ paid leave days per year:&nbsp;</strong>Besides national holidays, annual sick leaves, and&nbsp;paid leaves, we have a paid leave called Got It Day for every month that doesn&rsquo;t have any national holiday.</li>\r\n<li><strong>Amazing team:</strong>&nbsp;Work with the smartest and most hard-working people you&rsquo;ve ever met. Our team is from Google, Meta, Apple, Amazon, and other best companies in Vietnam.</li>\r\n<li><strong>Competitive compensation package:&nbsp;</strong>Attractive salary. There is no upper limit on how much you can earn. It&rsquo;s all based on your performance and contributions.</li>\r\n<li><strong>Best working environment:</strong>&nbsp;Coffee shop-like open office space, kitchen full of snacks and drinks, West Lake view bar, PlayStation, pool table, etc.</li>\r\n<li><strong>Latest gadgets for work:&nbsp;</strong>MacBook, external&nbsp;displays. Everything you need for your job is fully provided.</li>\r\n<li><strong>Training and personal development:</strong>&nbsp;Tuition and textbook reimbursement for approved work-related courses; free video training programs from Udacity, Udemy, and The Great Courses Plus; company library with the newest technology and business books.</li>\r\n<li><strong>Flexible working hours:&nbsp;</strong>There is no strict timekeeping. You are only required to show up at the office during Got It&rsquo;s core working hours (10 AM &ndash;&nbsp;5 PM, Mon &ndash;&nbsp;Fri).&nbsp;</li>\r\n<li><strong>Gyms, fitness, and sports:</strong>&nbsp;Gym memberships, soccer, or extra dollars in your pocket to spend on your own fitness, swimming, or dancing.</li>\r\n<li><strong>Free daily lunches and dinners:&nbsp;</strong>Enjoy fresh meals of your choice delivered straight to the office.</li>\r\n<li><strong>Others:&nbsp;</strong>Office happy hours, monthly team outings, participating in self-organized clubs like sports, games, algorithms, piano, etc.<br><img src=\"img/marvin-meyer-SYTO3xs06fU-unsplash.jpg\" alt=\"\" width=\"600\" height=\"400\"></li>\r\n</ul>', 'premium_photo-1663852297267-827c73e7529e.jpg', 12, 2, 0, '2024-01-10 06:50:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `home` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 0,
  `date_create` timestamp NULL DEFAULT current_timestamp(),
  `last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `image`, `home`, `status`, `date_create`, `last_update`) VALUES
(1, 'Fashion', 'fashion', NULL, 0, 0, '2024-01-06 06:27:02', '2024-01-06 06:27:02'),
(5, 'Technology', NULL, NULL, 0, 0, '2024-01-07 03:36:13', '2024-01-07 03:36:13'),
(6, 'Travel', NULL, NULL, 0, 0, '2024-01-07 03:36:23', '2024-01-07 03:36:23'),
(7, 'Food', NULL, NULL, 0, 0, '2024-01-07 03:36:31', '2024-01-07 03:36:31'),
(8, 'Photography', NULL, NULL, 0, 0, '2024-01-07 03:36:39', '2024-01-07 03:36:39'),
(9, 'test_auto_create', NULL, NULL, 0, 0, '2024-01-07 07:03:41', '2024-01-07 07:03:41'),
(10, 'Test', NULL, NULL, 0, 0, '2024-01-07 07:26:49', '2024-01-09 16:22:39'),
(11, 'test1', NULL, NULL, 0, 0, '2024-01-09 08:05:35', '2024-01-09 08:05:35'),
(12, 'Job', NULL, NULL, 0, 0, '2024-01-10 06:50:17', '2024-01-10 06:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `date_comment` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `blog_id`, `date_comment`) VALUES
(1, 'Good job! <3', 1, 13, '2024-01-09 17:35:12'),
(2, 'test', 1, 13, '2024-01-10 03:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `level` tinyint(4) DEFAULT 0,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `date_create` timestamp NULL DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `level`, `username`, `password`, `name`, `email`, `phone`, `address`, `avatar`, `status`, `date_create`, `last_update`) VALUES
(1, 0, 'long', 'e10adc3949ba59abbe56e057f20f883e', 'Long Nguyen', '123456@gmail.com', '0364091563', '123456', 'Screenshot 2024-01-06 193822.jpg', 0, NULL, NULL),
(2, 0, 'vivi', 'e10adc3949ba59abbe56e057f20f883e', 'Vi Vi', '123456@gmail.com', '0364091563', '123456', 'pexels-trinity-kubassek-445109.jpg', 0, NULL, '2024-01-10 05:17:45'),
(3, 0, 'tester', 'e10adc3949ba59abbe56e057f20f883e', 'tester tester', 'tester@gmail.com', '0364091563', 'tester', 'ian-dooley-d1UPkiFd04A-unsplash.jpg', 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `ct275_blog`
--
CREATE DATABASE IF NOT EXISTS `ct275_blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ct275_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `subdescription` varchar(500) DEFAULT NULL,
  `content` varchar(8000) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `date_create` timestamp NULL DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `subdescription`, `content`, `image`, `tag_id`, `user_id`, `status`, `date_create`, `last_update`) VALUES
(1, 'A Loving Heart is the Truest Wisdom', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis, enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta architecto tempora.\r\n\r\nMolestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat', 'test.jpg', 1, 1, 0, '2024-01-09 08:22:45', '2024-01-09 09:56:20'),
(7, 'DU LỊCH CORON VỚI LỊCH TRÌNH 6 NGÀY CỦA TUÂN', 'VỀ CHẶNG BAY THÍCH HỢP ĐI DU LỊCH CORON\r\nMình bay 2 chặng từ HCM qua Manila bay Cebu Pacific tới nơi', 'VỀ CHẶNG BAY THÍCH HỢP ĐI DU LỊCH CORON\nMình bay 2 chặng từ HCM qua Manila bay Cebu Pacific tới nơi thì tầm khoảng 6h sáng, ngồi nghỉ ngơi ăn sáng đợi tới tầm 10h thì bay chặng tiếp theo xuống Coron. Mình bay 2 chặng khác nhau chứ không book nối chuyến nhé.\n<h2> VỀ LỊCH TRÌNH DU LỊCH CORON CÓ GÌ</h2>\nNgày 1- Khám phá Coron\nSau khi đáp chuyến bay và đặt chân xuống Coron, mình dành khoảng 4 giờ đầu tiên để khám phá những nét độc đáo của nơi này. Chiều tới, mình lên thuyền ra Sunlight Ecotouris', '659d36d3417c1.jpg', 6, 1, 0, '2024-01-09 12:06:43', '2024-01-09 12:21:16'),
(8, 'DU LỊCH NEPAL 2023 KINH NGHIỆM ĐỂ TREK CÙNG MARDI HIMAL', 'Du lịch Nepal rất nổi tiếng với các cung trek, ở Việt Nam thì những cung phổ biến như ABC, EBC thườn', 'Du lịch Nepal rất nổi tiếng với các cung trek, ở Việt Nam thì những cung phổ biến như ABC, EBC thường được mọi người đi nhiều và nhắc tới nhiều. Trong đợt quay lại Nepal sau 7 năm mình muốn tìm 1 cung gì đó mới mới 1 xíu, và phải xuất phát từ Pokhara vì mình ngại phải đi xe. Pokhara thì mới khai trương sân bay mới chỉ cần bay vèo 25 phút từ thủ đô lên là được, thế là được gợi ý cung Mardi Himal. Thoả mãn đầy đủ các tiêu chí: dễ đi, và nhiều cây cối chứ không quá cằn cỗi. Dưới đây là 1 vài kinh n', '659d396481234.jpg', 6, 1, 0, '2024-01-09 12:17:40', '2024-01-09 12:17:40'),
(9, 'VÉ MÁY BAY ĐI THỤY SĨ 2023 CÓ GIÁ BAO NHIÊU?', 'Thụy Sĩ thực sự như một điểm đến mơ ước của bất kỳ ai. Những dãy núi cao tuyệt đẹp, những hồ nước mê', 'Thụy Sĩ thực sự như một điểm đến mơ ước của bất kỳ ai. Những dãy núi cao tuyệt đẹp, những hồ nước mê hoặc, những con đường rải sỏi quyến rũ, những viên sô cô la Thụy Sĩ ngon lành luôn khiến mình tự hỏi liệu vùng đất mê hoặc này có thực sự tồn tại hay không.  \r\n\r\nNếu bạn đang lên kế hoạch cho một chuyến du lịch ngắn ngày hay dài ngày tại đất nước xinh đẹp này và muốn tham khảo cách săn vé máy bay đi Thụy Sĩ tiết kiệm nhất, vậy thì bài viết dưới đây chính là dành cho bạn. \r\n\r\nHướng dẫn mua vé máy ', '659d39dff3158.jpg', 6, 1, 0, '2024-01-09 12:19:43', NULL),
(10, 'TOP 10 BÃI BIỂN ĐẸP NHẤT PHÚ QUỐC', 'Phú Quốc được ví như một thiên đường biển đảo đẹp nhất Việt Nam. ', 'Phú Quốc được ví như một thiên đường biển đảo đẹp nhất Việt Nam. Ngoài việc sở hữu vẻ đẹp của thiên nhiên, không khí của đất trời, Phú Quốc còn được mẹ thiên nhiên ưu ái trao tặng những bãi biển cực đẹp với làn nước trong veo, xanh ngát. Lưu lại top 10 bãi biển đẹp nhất Phú Quốc bên dưới để vi vu cùng gia đình, bạn bè.\r\nBãi Rạch Vẹm\r\nBãi Rạch Vẹm nằm ở phía Bắc của đảo ngọc Phú Quốc. Vị trí thuộc xã Gành Dầu, cách thị trấn Đông Dương 40km. Bãi Rạch Vẹm nổi tiếng với bãi cát trắng mịn màng với khung cảnh hoang sơ. Điểm nổi bật ở nay đây là sao biển, bạn sẽ phải bất ngờ với những chú sao biển tung tăng dưới mặt nước. Thời gian đẹp nhất là từ tháng 11 đến tháng 3 năm sau nên đừng bỏ lỡ nhé.\r\nBãi Gành Dầu\r\nBãi Gành Dầu thực chất là một mũi đất nhô thẳng ra biển. Ấy thế mà nơi này lại trở thành một điểm đến thú vị cho lữ khách tứ phương. Dáng vẻ thanh bình và hoang dã của bãi Gành Dầu đã thu hút nhiều du khách đến với vị trí phía Tây Bắc của đảo ngọc.\r\nHòn Đồi Mồi\r\nHòn Đồi Mồi là một món quà của tạo hóa chưa được khám phá. Đối diện với Vinpearl Phú Quốc, hòn Đồi Mồi ẩn mình với giản đơn vốn có. Nếu bạn là người yêu thiên nhiên và những gì thuộc về tạo hóa nguyên sơ, hãy đến đây. Buổi chiều hoàng hôn sẽ giúp tâm hồn bạn được vỗ vễ nhẹ nhàng.\r\nBãi Dài\r\nBãi Dài có chiều dài đúng như tên gọi của mình là trải dài 15km. Bắt đầu từ mũi Gành Dầu đến Cửa Cạn, sở hữu không khí trong lành nên bãi Dài luôn được biết đến là một trong những bãi biển đẹp nhất Phú Quốc. Vinpearl Phú Quốc và nhiều resort cũng tọa lạc trên bãi Dài nên du khách thoải mái khám phá.', '659d3aec1daab.jpg', 6, 1, 0, '2024-01-09 12:24:12', '2024-01-09 12:26:54'),
(11, 'TOP 10 RESORT 5 SAO Ở PHÚ QUỐC', 'Phú Quốc luôn là một trong những điểm đến nghỉ dưỡng được ưa chuộng hàng đầu mỗi năm.', '<p>Ph&uacute; Quốc lu&ocirc;n l&agrave; một trong những điểm đến nghỉ dưỡng được ưa chuộng h&agrave;ng đầu mỗi năm. Được v&iacute; như thi&ecirc;n đường biển đảo Việt Nam, Ph&uacute; Quốc vươn m&igrave;nh để ch&agrave;o đ&oacute;n du kh&aacute;ch tứ phương. Khung cảnh thơ mộng, hoạt động giải tr&iacute; đa dạng v&agrave; nơi dừng ch&acirc;n c&oacute; thể n&oacute;i l&agrave; &ldquo;đỉnh của ch&oacute;p&rdquo; sẽ mang đến cho bạn những gi&acirc;y ph&uacute;t cực kỳ thoải m&aacute;i.</p>\r\n<p>Điểm qua top 10 resort 5 sao ở Ph&uacute; Quốc &ndash; nơi c&oacute; thể l&agrave; sự lựa chọn của bạn. H&atilde;y tận hưởng kỳ nghỉ ngọt ng&agrave;o c&ugrave;ng gia đ&igrave;nh v&agrave; bạn b&egrave; trong thời gian tới nh&eacute;.</p>\r\n<h3>Salinda Phu Quoc Island Resort &amp; Spa</h3>\r\n<p>Ẩn m&igrave;nh b&ecirc;n bờ biển thị trấn Đ&ocirc;ng Dương, Salinda Phu Quoc Island Resort &amp; Spa mang đến sự đẳng cấp. Sự kết hợp giữa văn h&oacute;a địa phương v&agrave; kiến tr&uacute;c đương đại tạo ra một kh&ocirc;ng gian độc đ&aacute;o. Kiến tr&uacute;c lấy thi&ecirc;n nhi&ecirc;n l&agrave; trọng điểm mang đến những khoảng trời xanh cho du kh&aacute;ch.</p>\r\n<p>C&aacute;c hoạt động vui chơi tại đ&acirc;y phục vụ cho tất cả c&aacute;c độ tuổi kh&aacute;c nhau. Đối với c&aacute;c em nhỏ sẽ c&oacute; bể bơi ri&ecirc;ng nhỏ xinh với mực nước an to&agrave;n tuyệt đối. Ngo&agrave;i ra, những hoạt động như lặn ngắm san h&ocirc;, ch&egrave;o thuyền Kayak&hellip;sẽ mang đến cho du kh&aacute;ch những gi&acirc;y ph&uacute;t thư gi&atilde;n nhất.</p>\r\n<p>Địa chỉ: 1 Trần Hưng Đạo, Dương Tơ, Ph&uacute; Quốc, Ki&ecirc;n Giang</p>\r\n<p>Điện thoại: 0297 3390 011</p>\r\n<h3>Novotel Phu Quoc Resort</h3>\r\n<p>Tọa lạc ngay cạnh b&atilde;i Trường, Novotel Phu Quoc Resort mang đến những trải nghiệm cao cấp nhất. Hệ thống ph&ograve;ng nghỉ sang trọng v&agrave; tinh tế c&ugrave;ng sự phục vụ tận t&igrave;nh của nh&acirc;n vi&ecirc;n phục vụ.</p>\r\n<p>B&ecirc;n cạnh tiện nghi v&agrave; ph&ograve;ng nghỉ hiện đại l&agrave; c&aacute;c tiện &iacute;ch giải tr&iacute; chất lượng. Bạn chắc chắn kh&ocirc;ng thể bỏ qua ph&ograve;ng Gym xịn x&ograve;, khu Spa sang chảnh, 2 s&acirc;n Tennis v&agrave; c&aacute;c hoạt động kh&aacute;c.</p>\r\n<p>Địa chỉ: Đường B&agrave;o, Dương Tơ, Huyện Ph&uacute; Quốc, Ki&ecirc;n Giang</p>\r\n<p>Điện thoại: 0297 6260 999</p>', '659d4368e47e2.jpg', 6, 1, 0, '2024-01-09 13:00:24', NULL),
(12, 'Palace Hotel Tokyo', 'We dedicated the majority of our recent summer to Asia.', '<p><img src=\"img/_DSC4785.jpg\" alt=\"\" width=\"750\" height=\"1124\"></p>\n<p>We dedicated the majority of our recent summer to Asia. After our two-and-a-half-month stay in Seoul, we headed to Japan for business meetings related to <a href=\"https://superegg.nyc/\" target=\"_blank\" rel=\"noopener\">Superegg</a>. The first week of August coincided with a national holiday in Japan, affording us the opportunity to indulge in a personal vacation – highlights included visits to <a href=\"https://www.eggcanvas.com/blog/2023/naoshima-teshima\" target=\"_blank\" rel=\"noopener\">Naoshima</a>, Nagoya, and Kyoto! We eventually made our way to our ultimate destination: Tokyo. Among the exceptional accommodations we experienced was the <a href=\"https://en.palacehoteltokyo.com/\" target=\"_blank\" rel=\"noopener\">Palace Hotel Tokyo</a>, an esteemed member of <a href=\"https://www.lhw.com/\" target=\"_blank\" rel=\"noopener\">The Leading Hotels of The World</a>.</p>\n<p><img src=\"img/_DSC4794.jpg\" alt=\"\" width=\"1000\" height=\"1499\"></p>\n<p>Although the current iteration of the hotel debuted in 2012, it has a rich history dating back to 1961 when the original Palace Hotel Tokyo opened its doors. The present-day establishment represents a modern reconstruction of the original, preserving a cherished sense of tradition and sophistication. Within its confines, guests are treated to an array of premium guest rooms and suites thoughtfully crafted to blend contemporary Japanese aesthetics and modern amenities. Many of these rooms offer panoramic views of Tokyo and are equipped with high-end furnishings and technology.</p>', '_DSC4778.jpg', 1, 1, 0, '2024-01-09 15:22:03', '2024-01-09 16:22:10'),
(13, 'The Tokyo EDITION, Toranomon', 'Tokyo is a vibrant and ever-changing city, with a constant stream of new restaurants, shops, and hotels opening up.', '<p>Tokyo is a vibrant and ever-changing city, with a constant stream of new restaurants, shops, and hotels opening up. During our recent trip to Tokyo for the launch of <strong><a href=\"https://www.instagram.com/superegg_jp/\" target=\"_blank\" rel=\"noopener\">Superegg in Japan</a>, </strong>we had the opportunity to stay at one of the newest and most exciting additions to the city\'s hotel scene - <strong><a href=\"https://www.editionhotels.com/tokyo-toranomon/\" target=\"_blank\" rel=\"noopener\">The Tokyo EDITION, Toranomon</a>.</strong> This sleek and elegant hotel is situated in the bustling business district of Tokyo, making it an ideal choice for both business travelers and tourists looking to experience the city\'s energy and excitement.</p>\r\n<p><img src=\"img/_DSC9473.jpg\" alt=\"\" width=\"750\" height=\"1124\"></p>\r\n<p>The Tokyo EDITION, Toranomon, is the inaugural EDITION hotel in Japan, and it is the visionary creation of celebrated hotelier Ian Schrager. Renowned for his avant-garde approach to hotel design, Schrager has brought his signature style to this property, resulting in a modern and stylish interpretation of Japanese aesthetics. The hotel\'s design is characterized by clean lines, natural materials, and a restrained color scheme, all of which seamlessly blend contemporary design with traditional Japanese elements. The guest rooms are particularly noteworthy, featuring breathtaking views of Tokyo\'s skyline. For an unforgettable stay, be sure to reserve a room with a view of the iconic Tokyo Tower.</p>\r\n<p><img src=\"img/_DSC9493.jpg\" alt=\"\" width=\"1000\" height=\"1499\"></p>\r\n<p>On our first night, we had the pleasure of dining at <a href=\"https://www.editionhotels.com/tokyo-toranomon/restaurants-and-bars/the-jade-room-and-garden-terrace/\" target=\"_blank\" rel=\"noopener\">Jade Room</a>, an exquisite restaurant overseen by Michelin-starred chef Tom Aikens. Aikens, renowned for his creativity and talent in the culinary world, has designed a menu that draws inspiration from century-old cooking methods and features a blend of unique flavors and international influences, with a strong emphasis on seasonal ingredients. Whether you\'re a food connoisseur or simply looking for an exceptional dining experience, Jade Room is a restaurant that you won\'t want to miss during your time in Tokyo.</p>\r\n<p><img src=\"img/_DSC9514.jpg\" alt=\"\" width=\"1000\" height=\"1499\"></p>\r\n<p>Guests can enjoy a unique breakfast experience at <a href=\"https://www.editionhotels.com/tokyo-toranomon/restaurants-and-bars/the-blue-room/\" target=\"_blank\" rel=\"noopener\">The Blue Room</a>. During our stay, we couldn\'t resist trying the Japanese Breakfast Set, or \"asagohan,\" which is comprised of several small dishes served together for a wholesome and nourishing meal. A traditional asagohan typically includes a range of flavorful items, such as grilled fish, rice, miso soup, pickled vegetables, and tamagoyaki (Japanese omelet). It\'s an ideal way to start the day and a must-try for anyone looking to experience authentic Japanese cuisine.</p>', '_DSC9514.jpg', 1, 1, 0, '2024-01-09 16:08:47', '2024-01-09 16:08:47'),
(14, 'Tổng quan về Prompt Engineering', 'Trong tech blog số này, Got It sẽ cùng bạn tìm hiểu về Prompt Engineering cũng như một số kỹ thuật cơ bản giúp đầu ra của Large Language Models (LLMs) tối ưu nhất có thể!', '<h2><span id=\"ChatGPT_la_gi_Hoat_dong_nhu_the_nao\">ChatGPT là gì? Hoạt động như thế nào?</span></h2>\r\n<p><img src=\"img/alexandre-debieve-FO7JIlwjOtU-unsplash.jpg\" alt=\"\" width=\"529\" height=\"352\"></p>\r\n<p>Chúng ta đã quá quen thuộc với ChatGPT. Các model tương tự như GPT-3, GPT-4 của OpenAI hay PaLM của Google cũng không còn lạ lẫm. Nhưng cụ thể chúng là gì và hoạt động như thế nào, cùng tìm hiểu sâu hơn nhé!</p>\r\n<p>Những khái niệm vừa được nhắc đến bên trên đều là Large Language Model (LLM) – một loại model xử lý ngôn ngữ tự nhiên. Chúng sử dụng rất nhiều dữ liệu văn bản đầu vào để phân tích và suy luận mối quan hệ giữa các từ trong văn bản đó. Dựa trên những thông tin  “học” được và yêu cầu mà người dùng gửi lên, chúng sẽ đưa ra câu trả lời phù hợp nhất.</p>\r\n<p>Vậy nên, lượng dữ liệu đầu vào càng nhiều, chất lượng dữ liệu càng cao thì chất lượng của model càng tốt, câu trả lời càng chính xác và phù hợp.</p>\r\n<h2><span id=\"Prompt_Engineering_la_gi\">Prompt Engineering là gì?</span></h2>\r\n<p><img src=\"img/luca-bravo-XJXWbfSo2f0-unsplash.jpg\" alt=\"\" width=\"500\" height=\"333\"></p>\r\n<p>Để model có thể thực hiện một nhiệm vụ cụ thể nào đó, chúng ta cần cung cấp cho nó ngữ cảnh, thông tin và yêu cầu, hay còn gọi là <code>prompt</code>.</p>\r\n<p>Tuy nhiên, biết viết prompt là chưa đủ. Chúng ta cần phát triển và tối ưu hoá prompt để model trả về kết quả phù hợp nhất với mong muốn của chúng ta. Đây chính là Prompt Engineering.</p>\r\n<p>Nói chung, Prompt Engineering là một kỹ năng hữu dụng giúp chúng ta cải thiện chất lượng đầu ra của model và sử dụng nó một cách hiệu quả hơn.</p>\r\n<h3><span id=\"Mot_prompt_co_ban\">Một prompt cơ bản</span></h3>\r\n<p>Hãy tưởng tượng một giao diện mà bạn có thể dùng để tương tác với model. Bạn có thể cung cấp một prompt và model sẽ sinh ra câu trả lời. Ví dụ:</p>\r\n<ul>\r\n<li>Prompt: <code>Neoclassicism is</code></li>\r\n<li>Câu trả lời:</li>\r\n</ul>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_701898\">\r\n<table style=\"width: 1369.14px; height: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: auto; width: auto;\">\r\n<td style=\"height: auto; width: auto;\">\r\n<div>1</div>\r\n</td>\r\n<td style=\"width: 1333.94px; height: auto;\">\r\n<div>\r\n<div><code>a movement in art, architecture, and literature that emerged in the 18th century and reached its peak during the late 18th and early 19th centuries.</code></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Trong trường hợp này, prompt không phải một câu hỏi, cũng không phải là một yêu cầu gì phức tạp, mà chỉ đơn giản là một câu chưa hoàn chỉnh. Vì thế, câu trả lời của model sẽ là những từ phù hợp nhất để có thể hoàn thiện câu đó.</p>\r\n<h3><span id=\"Thanh_phan_cua_mot_prompt\">Thành phần của một prompt</span></h3>\r\n<p>Một prompt có thể chứa các thành phần sau:</p>\r\n<ul>\r\n<li>Ngữ cảnh (Context)</li>\r\n<li>Yêu cầu (Instruction)</li>\r\n<li>Thông tin đầu vào (Input data)</li>\r\n<li>Chỉ thị đầu ra (Output indicator)</li>\r\n</ul>\r\n<p>Bạn có chỉ ra được những thành phần trên trong ví dụ dưới đây không?</p>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_4624\">\r\n<table style=\"width: 920.5px; height: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: auto; width: auto;\">\r\n<td style=\"height: auto; width: auto;\">\r\n<div>1</div>\r\n<div>2</div>\r\n<div>3</div>\r\n<div>4</div>\r\n<div>5</div>\r\n</td>\r\n<td style=\"width: 885.3px; height: auto;\">\r\n<div>\r\n<div><code>You\'re a research assistant who always classifies things as the opposite of what they should be. </code></div>\r\n<div><code>Classify the following text into positive, neutral or negative.</code></div>\r\n<div><code>Don\'t say anything other than the sentiment:</code></div>\r\n<div><code>Text: The food at this restaurant sucks!</code></div>\r\n<div><code>Sentiment:</code></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Cùng phân tích thử nhé!</p>\r\n<ul>\r\n<li>Ngữ cảnh: “You’re a research assistant who always classifies things as the opposite of what they should be.”</li>\r\n<li>Yêu cầu: “Classify the following text into positive, neutral or negative. Don’t say anything other than the sentiment:”</li>\r\n<li>Thông tin đầu vào: “The food at this restaurant sucks!”</li>\r\n<li>Chỉ thị đầu ra: “Sentiment:”</li>\r\n</ul>\r\n<h3><span id=\"Mot_so_ky_thuat_Prompt_Engineering_co_ban\">Một số kỹ thuật Prompt Engineering cơ bản</span></h3>\r\n<h4><span id=\"Few-Shot\">Few-Shot</span></h4>\r\n<p>Ta có hai ví dụ sau:</p>\r\n<ul>\r\n<li><strong>Ví dụ 1:</strong></li>\r\n</ul>\r\n<p><strong><em>Prompt:</em></strong></p>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_148115\">\r\n<table style=\"width: 736px; height: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: auto; width: auto;\">\r\n<td style=\"height: auto; width: auto;\">\r\n<div>1</div>\r\n</td>\r\n<td style=\"width: 700.8px; height: auto;\">\r\n<div>\r\n<div><code>What is the sentiment of this sentence? I demand to see your manager!</code></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p><strong><em>Response:</em></strong></p>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_182170\">\r\n<table style=\"width: 736px; height: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: auto; width: auto;\">\r\n<td style=\"height: auto; width: auto;\">\r\n<div>1</div>\r\n</td>\r\n<td style=\"width: 700.8px; height: auto;\">\r\n<div>\r\n<div><code>Negative</code></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<ul>\r\n<li><strong>Ví dụ 2:</strong></li>\r\n</ul>\r\n<p><strong><em>Prompt:</em></strong></p>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_611197\">\r\n<table style=\"width: 736px; height: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: auto; width: auto;\">\r\n<td style=\"height: auto; width: auto;\">\r\n<div>1</div>\r\n</td>\r\n<td style=\"width: 700.8px; height: auto;\">\r\n<div>\r\n<div><code>Is the sum of the following numbers an odd number? 14, 93, 12, 35</code></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p><strong><em>Response:</em></strong></p>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_126684\">\r\n<table style=\"width: 736px; height: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: auto; width: auto;\">\r\n<td style=\"height: auto; width: auto;\">\r\n<div>1</div>\r\n</td>\r\n<td style=\"width: 700.8px; height: auto;\">\r\n<div>\r\n<div><code>Yes, the sum of these numbers is 154, which is an odd number.</code></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Khi prompt không đưa ví dụ nào cho model, ta gọi kỹ thuật này là Zero-Shot.</p>\r\n<p>Cũng là 2 ví dụ trên, nhưng nếu cung cấp một vài ví dụ trong prompt để model có thể học theo, thì ta đang áp dụng một kỹ thuật gọi là Few-Shot.</p>\r\n<p><img src=\"img/marvin-meyer-SYTO3xs06fU-unsplash.jpg\" alt=\"\" width=\"600\" height=\"400\"></p>\r\n<h2><span id=\"Ket_bai\">Kết bài</span></h2>\r\n<p>Hy vọng qua bài viết này, bạn đã biết được Prompt Engineering là gì cũng như cách áp dụng một số kỹ thuật Prompt Engineering để cải thiện chất lượng đầu ra của model.</p>\r\n<p>Nếu bạn thấy bài viết này hữu ích thì hãy lưu lại và chia sẻ tới bạn bè ngay nhé! Đừng quên theo dõi chuyên mục Tech Blog để cập nhật những kiến thức công nghệ, lập trình bổ ích được chia sẻ bởi chính những Software Engineers tại Got It!</p>\r\n<div>\r\n<div>\r\n<div id=\"highlighter_410305\"></div>\r\n</div>\r\n</div>', 'marvin-meyer-SYTO3xs06fU-unsplash.jpg', 5, 2, 0, '2024-01-10 04:57:28', '2024-01-10 04:57:28'),
(15, 'Ridiculously Good Air Fryer Chicken Breast', 'My go-to everyday air fryer chicken! Thinly sliced chicken breast pieces, coated to the max in spices, plus a bit of brown sugar and cornstarch, and air fried to golden, juicy perfection.', '<h2>This Air Fryer Chicken Breast Is Ridiculously Good</h2>\r\n<p>But my life has changed in such a big way out here in the year 2024, and I’m now making this air fryer chicken <em>almost on the daily</em>. It’s so juicy, so delicious, and those crispity little browned bits! Ugh.</p>\r\n<p>How I got here: Bjork has been going hog wild on all things protein in the last few months. As resident cooker of all the food in our house, I decided it’s time for me to figure out a really foolproof way to make chicken – for him (#protein), and for <em>me</em>, so that I actually like it.</p>\r\n<p><img src=\"img/premium_photo-1663852297267-827c73e7529e.jpg\" alt=\"\" width=\"500\" height=\"333\"></p>\r\n<p>So even though I’ve resisted it for years… I bought an <a href=\"https://amzn.to/47qwPfd\" target=\"_blank\" rel=\"noreferrer noopener sponsored nofollow\">air fryer</a> <em>(affiliate link)</em>. Almost exclusively to make chicken. And guess what? The one recipe I keep coming back to is these thinly sliced chicken breast pieces, coated to the max in spices, plus a bit of brown sugar and cornstarch, and air fried to golden, juicy perfection. I LOVE THIS CHICKEN SO MUCH!</p>\r\n<p>There’s an excessive amount of seasoning and flavor, which we obviously love, but it’s the golden crisped exterior with little edge bits that you will die for. And all the while it stays nice and juicy on the inside.</p>\r\n<p>Takes 15 minutes to make and it’s such a family winner for us. I hope you love it!</p>\r\n<figure><img ></figure>\r\n<p><img src=\"img/photo-1504674900247-0877df9cc836.jpg\" alt=\"\" width=\"500\" height=\"333\"></p>\r\n<p> </p>', 'premium_photo-1663852297267-827c73e7529e.jpg', 7, 2, 0, '2024-01-10 06:42:34', '2024-01-10 06:42:34'),
(16, 'Technical Product Manager', 'Hanoi | Full-time | On-site |', '<p>Come join us as the<strong>&nbsp;Technical Product Manager&nbsp;</strong>in one of Silicon Valley&rsquo;s most innovative edTech companies, developing the world&rsquo;s first on-demand AI-based expert-managed marketplace for millions of learners in the English-speaking world and experts in over 100+ countries. Investors include those who backed SpaceX and Discord.</p>\r\n<p>Got It Inc. is looking for an outstanding Technology Leader to join our talented team of U.S.-based leaders and Silicon Valley-level software engineers, product managers, and test engineers in Vietnam and around the world. You&rsquo;ll work directly with the founder and a world-class team of technology industry veterans to build the next generation of the Got It platform, handling a massive number of real-time learning sessions between askers and experts in multiple subjects.</p>\r\n<p><img src=\"img/alexandre-debieve-FO7JIlwjOtU-unsplash.jpg\" alt=\"\" width=\"600\" height=\"400\"></p>\r\n<h3><span id=\"The_Core_Job\">The Core Job</span></h3>\r\n<ul>\r\n<li>Be able to work well with internal teams, including software engineers, architects, quality assurance, and operations. Ensure requirements are fully understood and that implementation plans match expectations.</li>\r\n<li>Ensure that all projects are delivered on time, within the scope, and within budget.</li>\r\n<li>Assist in the definition of project scope and objectives, involving all relevant internal stakeholders and ensuring technical feasibility.</li>\r\n<li>Ensure that user story content and prioritization are aligned with larger strategic objectives.</li>\r\n<li>Ensure resource availability and allocation.</li>\r\n<li>Work within a software development methodology like AGILE.</li>\r\n<li>Develop a detailed project plan to monitor and track progress.</li>\r\n<li>Manage changes to the project scope, project schedule, and project costs using appropriate verification techniques.</li>\r\n<li>Measure performance using appropriate project management tools and techniques.</li>\r\n<li>Report and escalate to management as needed.</li>\r\n<li>Perform risk management to minimize potential risks.</li>\r\n<li>Create and maintain comprehensive project documentation.</li>\r\n<li>Represent the technical product team in Vietnam and help engineers and QAs understand every single detail of each technical product feature.</li>\r\n<li>Perform other related duties as assigned.</li>\r\n</ul>\r\n<p><img src=\"img/luca-bravo-XJXWbfSo2f0-unsplash.jpg\" alt=\"\" width=\"600\" height=\"400\"></p>\r\n<h3><span id=\"You_Must_Have\">You Must Have</span></h3>\r\n<ul>\r\n<li>Proven working experience in project management.</li>\r\n<li>Excellent client-facing and internal communication skills.</li>\r\n<li>Excellent written and verbal communication skills in Vietnamese and English.</li>\r\n<li>Solid organizational skills including attention to detail and multitasking skills.</li>\r\n<li>Bachelor&rsquo;s Degree in Computer Science, Information Technology,&nbsp;or related fields.</li>\r\n<li>Experience with project management software tools such as Jira, Trello&hellip;</li>\r\n<li>Self-motivated, data-driven, responsible, detail-oriented, process-oriented, get things done.</li>\r\n<li>2+ years of experience delivering highly successful and innovative internet products with tons of users; including experience in an operational service delivery capacity.</li>\r\n</ul>\r\n<h3><span id=\"Extra_Bonus\">Extra Bonus</span></h3>\r\n<ul>\r\n<li>Startup experience.</li>\r\n<li>Experience working with distributed development teams.</li>\r\n<li>Prior experience as a Product Owner in a scrum team.</li>\r\n</ul>\r\n<h3><span id=\"Why_You8217ll_Love_Working_Here\">Why You&rsquo;ll Love Working Here</span></h3>\r\n<ul>\r\n<li><strong>21+ paid leave days per year:&nbsp;</strong>Besides national holidays, annual sick leaves, and&nbsp;paid leaves, we have a paid leave called Got It Day for every month that doesn&rsquo;t have any national holiday.</li>\r\n<li><strong>Amazing team:</strong>&nbsp;Work with the smartest and most hard-working people you&rsquo;ve ever met. Our team is from Google, Meta, Apple, Amazon, and other best companies in Vietnam.</li>\r\n<li><strong>Competitive compensation package:&nbsp;</strong>Attractive salary. There is no upper limit on how much you can earn. It&rsquo;s all based on your performance and contributions.</li>\r\n<li><strong>Best working environment:</strong>&nbsp;Coffee shop-like open office space, kitchen full of snacks and drinks, West Lake view bar, PlayStation, pool table, etc.</li>\r\n<li><strong>Latest gadgets for work:&nbsp;</strong>MacBook, external&nbsp;displays. Everything you need for your job is fully provided.</li>\r\n<li><strong>Training and personal development:</strong>&nbsp;Tuition and textbook reimbursement for approved work-related courses; free video training programs from Udacity, Udemy, and The Great Courses Plus; company library with the newest technology and business books.</li>\r\n<li><strong>Flexible working hours:&nbsp;</strong>There is no strict timekeeping. You are only required to show up at the office during Got It&rsquo;s core working hours (10 AM &ndash;&nbsp;5 PM, Mon &ndash;&nbsp;Fri).&nbsp;</li>\r\n<li><strong>Gyms, fitness, and sports:</strong>&nbsp;Gym memberships, soccer, or extra dollars in your pocket to spend on your own fitness, swimming, or dancing.</li>\r\n<li><strong>Free daily lunches and dinners:&nbsp;</strong>Enjoy fresh meals of your choice delivered straight to the office.</li>\r\n<li><strong>Others:&nbsp;</strong>Office happy hours, monthly team outings, participating in self-organized clubs like sports, games, algorithms, piano, etc.<br><img src=\"img/marvin-meyer-SYTO3xs06fU-unsplash.jpg\" alt=\"\" width=\"600\" height=\"400\"></li>\r\n</ul>', 'premium_photo-1663852297267-827c73e7529e.jpg', 12, 2, 0, '2024-01-10 06:50:17', NULL),
(29, 'tét dsad', 'tétđá', '<p>t&eacute;tadad</p>', '661659ec6c4a0_downloaddsfsfsfs-d-ss.jpg', 1, 4, 1, '2024-04-10 04:27:48', '2024-04-11 02:58:23'),
(32, 'The Ritz-Carlton Maui hosts 32nd annual Celebration of the Arts, March 29-30', 'The Ritz-Carlton Maui, Kapalua is proud to  announce the 32nd annual Celebration of the Arts taking place Easter weekend, March 29-30.  ', '<header>\r\n<div>\r\n<h1>The Ritz-Carlton Maui hosts 32nd annual Celebration of the Arts, March 29-30</h1>\r\n</div>\r\n<div><a href=\"https://i0.wp.com/wanderlustyle.com/wp-content/uploads/2024/03/1.jpg?fit=1100%2C715&amp;ssl=1\"><img style=\"height: auto; width: 770px;\" title=\"The Ritz-Carlton Maui hosts 32nd annual Celebration of the Arts, March 29-30\" src=\"https://i0.wp.com/wanderlustyle.com/wp-content/uploads/2024/03/1.jpg?resize=770%2C515&amp;ssl=1\" sizes=\"(max-width: 770px) 100vw, 770px\" srcset=\"https://i0.wp.com/wanderlustyle.com/wp-content/uploads/2024/03/1.jpg?resize=270%2C180&amp;ssl=1 270w, https://i0.wp.com/wanderlustyle.com/wp-content/uploads/2024/03/1.jpg?resize=770%2C515&amp;ssl=1 770w\" alt=\"ritz carlton maui, ritz carlton maui kapalua, ritz carlton maui celebration of the arts, ritz carlton maui kapalua celebration of the arts, celebration of the arts maui, celebration of the arts, 32nd Annual Celebration of the Arts\" width=\"770\" height=\"515\"></a></div>\r\n</header>\r\n<div data-content-ads-inserted=\"true\">\r\n<p>The Ritz-Carlton Maui, Kapalua is proud to&nbsp; announce the 32<sup>nd&nbsp;</sup>annual&nbsp;<a href=\"https://kapaluacelebrationofthearts.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Celebration of the Arts</a>&nbsp;taking place Easter weekend, March 29-30.&nbsp; During this special weekend, more than 125 of the state&rsquo;s most renowned cultural practitioners,&nbsp; artisans, educators, speakers, fashion designers, photographers, and entertainers come together to&nbsp; celebrate and preserve all things Hawaiian.&nbsp;</p>\r\n<p>This year&rsquo;s theme &ldquo;E Kāmau ke Kuleana&hellip;The Privilege and Responsibility Perseveres&rdquo; focuses&nbsp; on the importance of passing on&nbsp;<em>&lsquo;ike&nbsp;</em>(knowledge) to the next generations. Daytime admission to&nbsp; the 32<sup>nd&nbsp;</sup>annual Celebration of the Arts is complimentary and open to the public.&nbsp;&nbsp;</p>\r\n<figure data-slot-rendered-content=\"true\"><img style=\"height: auto;\" title=\"ritz carlton maui, ritz carlton maui kapalua, ritz carlton maui celebration of the arts, ritz carlton maui kapalua celebration of the arts, celebration of the arts maui, celebration of the arts, 32nd Annual Celebration of the Arts\" src=\"https://live.staticflickr.com/65535/53569797912_dd3520a1ed_b.jpg\" alt=\"ritz carlton maui, ritz carlton maui kapalua, ritz carlton maui celebration of the arts, ritz carlton maui kapalua celebration of the arts, celebration of the arts maui, celebration of the arts, 32nd Annual Celebration of the Arts\">\r\n<figcaption><em>photo credit:&nbsp;<a href=\"https://kapaluacelebrationofthearts.com/\">Ritz-Carlton Maui Kapalua</a></em></figcaption>\r\n</figure>\r\n<p>&ldquo;We are delighted to welcome back Hawaiian cultural experts and artisans to share their craft with residents and visitors,&rdquo; said Clifford Naeʻole, Hawaiian cultural advisor at The Ritz-Carlton Maui, Kapalua, who has served as the event chair for 32 years. &ldquo;By sharing&nbsp;our culture and knowledge, a sincere appreciation comes for all things past and prepares us for things to come.&rdquo;&nbsp;&nbsp;</p>\r\n<p>&ldquo;It is with great pride that we host the Celebration of the Arts and showcase an ongoing commitment to perpetuate the Hawaiian culture,&rdquo; said Melissa Lee, hotel manager at The Ritz-Carlton Maui, Kapalua. &ldquo;We welcome all that come through the doors to immerse themselves in spirituality, a sense of place, and an appreciation of all the things that make Hawaiʻi unique, from the mountains to the ocean, from friends to family, from artisans to the community.&rdquo;&nbsp;</p>\r\n<figure data-slot-rendered-content=\"true\"><img style=\"height: auto;\" title=\"ritz carlton maui, ritz carlton maui kapalua, ritz carlton maui celebration of the arts, ritz carlton maui kapalua celebration of the arts, celebration of the arts maui, celebration of the arts, 32nd Annual Celebration of the Arts\" src=\"https://live.staticflickr.com/65535/53570854038_524a02e88f_b.jpg\" alt=\"ritz carlton maui, ritz carlton maui kapalua, ritz carlton maui celebration of the arts, ritz carlton maui kapalua celebration of the arts, celebration of the arts maui, celebration of the arts, 32nd Annual Celebration of the Arts\">\r\n<figcaption><em>photo credit:&nbsp;<a href=\"https://kapaluacelebrationofthearts.com/\">Ritz-Carlton Maui Kapalua</a></em></figcaption>\r\n</figure>\r\n<p>Daytime event highlights will include an E Ala E Sunrise Ceremony, thought-provoking panel discussions and films, lively hula performances, a local marketplace with more than 50 artisans and crafters, a Hawaiian medicinal plant tour, a Polynesian wayfinding session, a kapa making&nbsp;demonstration, and much more. For those looking for more hands-on activities, the resort is offering a tree planting excursion to Puʻu Kukui Watershed, Hawaiʻi&rsquo;s largest private nature preserve.</p>\r\n<figure data-slot-rendered-content=\"true\"><img style=\"height: auto;\" title=\"ritz carlton maui, ritz carlton maui kapalua, ritz carlton maui celebration of the arts, ritz carlton maui kapalua celebration of the arts, celebration of the arts maui, celebration of the arts, 32nd Annual Celebration of the Arts\" src=\"https://live.staticflickr.com/65535/53571092655_9a836dfc22_b.jpg\" alt=\"ritz carlton maui, ritz carlton maui kapalua, ritz carlton maui celebration of the arts, ritz carlton maui kapalua celebration of the arts, celebration of the arts maui, celebration of the arts, 32nd Annual Celebration of the Arts\"></figure>\r\n<p>In the evenings, the Celebration Music Showcase will feature an unforgettable night of Hawaiian music and hula with singer-songwriter Weldon Kekauoha. The Celebration of the Arts Lūʻau returns with an incredible feast of island cuisine, accompanied by dazzling vignettes depicting moments in Hawaiian history by the cast of Tales of the Kapa Moe, the resort&rsquo;s new lūʻau.&nbsp;</p>\r\n<p data-slot-rendered-content=\"true\">For Hawaiʻi residents looking to create memorable moments, The Ritz-Carlton Maui, Kapalua is&nbsp; offering a special kamaʻāina rate for Celebration of the Arts. Kamaʻāina rates are available by&nbsp; calling 808-669-6200. Rooms are based upon availability and a valid Hawaiʻi ID is required at&nbsp; check in.&nbsp;&nbsp;</p>\r\n<p>To learn more about Celebration of the Arts, purchase tickets for the Celebration Music&nbsp; Showcase or Celebration of the Arts Lūʻau, and for the full event schedule, visit&nbsp;&nbsp;<a href=\"https://kapaluacelebrationofthearts.com/celebration-of-the-arts-schedule-23/\" target=\"_blank\" rel=\"noreferrer noopener\">www.celebrationofthearts.org</a>.&nbsp;&nbsp;</p>\r\n<div>\r\n<div>\r\n<h3>Share this:</h3>\r\n</div>\r\n</div>\r\n</div>', '661c74c79d708_1.jpg', 6, 1, 0, '2024-04-15 00:28:55', '2024-04-15 00:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `home` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 0,
  `date_create` timestamp NULL DEFAULT current_timestamp(),
  `last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `image`, `home`, `status`, `date_create`, `last_update`) VALUES
(1, 'Fashion', 'fashion', NULL, 0, 0, '2024-01-06 06:27:02', '2024-01-06 06:27:02'),
(5, 'Technology', NULL, NULL, 0, 0, '2024-01-07 03:36:13', '2024-01-07 03:36:13'),
(6, 'Travel', NULL, NULL, 0, 0, '2024-01-07 03:36:23', '2024-01-07 03:36:23'),
(7, 'Food', NULL, NULL, 0, 0, '2024-01-07 03:36:31', '2024-01-07 03:36:31'),
(8, 'Photography', NULL, NULL, 0, 0, '2024-01-07 03:36:39', '2024-01-07 03:36:39'),
(9, 'test_auto_create', NULL, NULL, 0, 0, '2024-01-07 07:03:41', '2024-01-07 07:03:41'),
(10, 'Test', NULL, NULL, 0, 0, '2024-01-07 07:26:49', '2024-01-09 16:22:39'),
(11, 'test1', NULL, NULL, 0, 0, '2024-01-09 08:05:35', '2024-01-09 08:05:35'),
(12, 'Job', NULL, NULL, 0, 0, '2024-01-10 06:50:17', '2024-01-10 06:50:17'),
(13, '', NULL, NULL, 0, 0, '2024-04-08 17:36:09', '2024-04-08 17:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `date_comment` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `blog_id`, `date_comment`) VALUES
(1, 'Good job! <3', 1, 13, '2024-01-09 17:35:12'),
(2, 'test', 1, 13, '2024-01-10 03:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `level` tinyint(4) DEFAULT 0,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `date_create` timestamp NULL DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `level`, `username`, `password`, `name`, `email`, `phone`, `address`, `avatar`, `status`, `date_create`, `last_update`) VALUES
(1, 0, 'long', 'e10adc3949ba59abbe56e057f20f883e', 'Long Nguyen', '123456@gmail.com', '0364091563', '123456', 'Screenshot 2024-01-06 193822.jpg', 0, NULL, NULL),
(2, 0, 'vivi', 'e10adc3949ba59abbe56e057f20f883e', 'Vi Vi', '123456@gmail.com', '0364091563', '123456', 'pexels-trinity-kubassek-445109.jpg', 0, NULL, '2024-01-10 05:17:45'),
(3, 0, 'tester', 'e10adc3949ba59abbe56e057f20f883e', 'tester tester', 'tester@gmail.com', '0364091563', 'tester', 'ian-dooley-d1UPkiFd04A-unsplash.jpg', 0, NULL, NULL),
(4, 0, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'test test', 'test@gmail.com', '0364091564', 'asda', 'DSCF9942-2_900.jpg', 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `ct275_lab3`
--
CREATE DATABASE IF NOT EXISTS `ct275_lab3` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ct275_lab3`;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(10) NOT NULL,
  `quote` text NOT NULL,
  `source` varchar(100) NOT NULL,
  `favorite` tinyint(1) NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `source`, `favorite`, `date_entered`) VALUES
(1, 'Thời gian không chờ một ai', 'Khuyết danh', 0, '2024-02-25 17:24:14'),
(2, 'Học lập trình web thật thú vị!', 'Albert Einstein', 1, '2024-02-25 17:24:14'),
(3, 'Yêu là chết trong lòng một ít!', 'Xuân Diệu', 0, '2024-02-25 17:24:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `ct275_lab4`
--
CREATE DATABASE IF NOT EXISTS `ct275_lab4` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ct275_lab4`;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `notes`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Bùi Võ Quốc Bảo', '0962256986', 'Đại học Cần Thơ', '/uploads/65e5f2b1d4e66_download (5).jpg', '2024-03-04 05:11:36', '2024-03-04 16:11:29'),
(2, 'Nguyễn Văn Kham', '0973856968', 'Cao đẳng Cằn Thơ', '/uploads/65e5f2b8ba0f1_download.png', '2024-03-04 05:11:36', '2024-03-04 16:11:36'),
(4, 'test', '0364091563', 'Đại học Cần Thơ ', '/uploads/65e5f35a30b6e_z5195647166027_b56d3c54ba3abf185cbad1e31deb2edf.jpg', '2024-03-04 10:05:22', '2024-03-04 16:14:18'),
(5, 'tester', '0364091563', 'testere ', '', '2024-03-04 10:15:26', '2024-03-04 14:59:12'),
(6, 'tét avatar', '0364091563', 'tét avatar', '', '2024-03-04 10:41:03', '2024-03-04 15:29:25'),
(7, 'demo', '0364091564', 'demo', '/uploads/65e5f538094cf_images.jpg', '2024-03-04 13:05:58', '2024-03-04 16:22:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"webbansach\",\"table\":\"users\"},{\"db\":\"webbansach\",\"table\":\"admin\"},{\"db\":\"webbansach\",\"table\":\"category\"},{\"db\":\"webbansach\",\"table\":\"cotyphathanh\"},{\"db\":\"webbansach\",\"table\":\"hd\"},{\"db\":\"webbansach\",\"table\":\"homgopy\"},{\"db\":\"webbansach\",\"table\":\"nhanxet\"},{\"db\":\"webbansach\",\"table\":\"payment\"},{\"db\":\"webbansach\",\"table\":\"payment_type\"},{\"db\":\"webbansach\",\"table\":\"product\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'ct275_blog', 'blog', '{\"sorted_col\":\"`blog`.`status` ASC\"}', '2024-04-10 04:55:55'),
('root', 'ct275_blog', 'comments', '{\"sorted_col\":\"`comments`.`date_comment` DESC\"}', '2024-04-09 04:45:30'),
('root', 'ct275_blog', 'users', '{\"sorted_col\":\"`users`.`last_update` DESC\"}', '2024-04-09 04:57:46'),
('root', 'webbansach', 'payment', '{\"sorted_col\":\"`payment`.`id_hd` ASC\"}', '2024-04-10 12:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-10 19:17:32', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `webbansach`
--
CREATE DATABASE IF NOT EXISTS `webbansach` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `webbansach`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `level` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `avatar`, `status`, `level`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '', '0364091563', 'Chợ Mới - An Giang', 'admin.png', 1, 1),
(6, 'nhanvien1', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Thành Long', '', '0364091563', 'An Giang', 'OIP.jfif', 0, 0),
(7, 'nhanvien', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Thành Long', '', '0364091563', 'Mỹ An, Chợ Mới, An Giang', 'img_avatar1.png', 1, 1),
(8, 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Thành Long', '', '0364091563', 'Mỹ An, Chợ Mới, An Giang', 'tdcsvnsh.jpg', 1, 1),
(9, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Thành Long', '', '0364091563', 'Mỹ An, Chợ Mới, An Giang', 'tdcsvnsh1.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(34, 'Văn học'),
(35, 'Kinh tế'),
(36, 'Tâm lý - Kỹ năng sống'),
(37, 'Nuôi dạy con'),
(38, 'Sách thiếu nhi'),
(39, 'Sách giáo khoa - Tham khảo'),
(40, ' Sách học ngoại ngữ');

-- --------------------------------------------------------

--
-- Table structure for table `cotyphathanh`
--

CREATE TABLE `cotyphathanh` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cotyphathanh`
--

INSERT INTO `cotyphathanh` (`id`, `name`) VALUES
(1, 'Minh Long'),
(2, 'Nhà sách Minh Thắng'),
(3, 'NXB Trẻ'),
(6, 'Nhà Xuất Bản Kim Đồng'),
(7, '1980 Books'),
(8, 'CÔNG TY TNHH EDUCATION SOLUTIONS VIỆT NAM'),
(9, 'ZenBooks'),
(10, 'Nhã Nam'),
(11, 'Huy Hoàng Bookstore'),
(12, 'FIRST NEWS'),
(13, 'Thái Hà'),
(14, 'Cengage'),
(15, 'NXB Kim Đồng'),
(16, 'Đinh Tị');

-- --------------------------------------------------------

--
-- Table structure for table `cthd`
--

CREATE TABLE `cthd` (
  `id` int(11) NOT NULL,
  `id_hd` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `soluong` tinyint(4) DEFAULT NULL,
  `dongia` int(11) DEFAULT NULL,
  `thanhtien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cthd`
--

INSERT INTO `cthd` (`id`, `id_hd`, `id_product`, `soluong`, `dongia`, `thanhtien`) VALUES
(3, 3, 4, 4, 97500, 390000),
(4, 3, 11, 1, 54510, 54510),
(5, 4, 4, 5, 97500, 487500),
(6, 4, 11, 1, 54510, 54510),
(13, 8, 4, 6, 97500, 585000),
(14, 8, 11, 1, 54510, 54510),
(32, 18, 13, 1, 18000, 18000),
(33, 19, 13, 1, 18000, 18000),
(34, 20, 4, 2, 97500, 195000),
(35, 21, 14, 1, 223200, 223200),
(36, 22, 17, 2, 100000, 200000),
(37, 22, 15, 1, 63000, 63000),
(38, 23, 16, 1, 29000, 29000),
(39, 23, 21, 1, 275500, 275500),
(40, 24, 26, 1, 134400, 134400),
(41, 25, 26, 1, 134400, 134400),
(42, 26, 26, 1, 134400, 134400),
(43, 27, 4, 1, 97500, 97500);

-- --------------------------------------------------------

--
-- Table structure for table `hd`
--

CREATE TABLE `hd` (
  `id` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `note` varchar(100) DEFAULT NULL,
  `diachigiaohang` varchar(200) DEFAULT NULL,
  `id_user` int(16) DEFAULT NULL,
  `id_nhanvien` int(11) NOT NULL DEFAULT 0,
  `ngaylap` date NOT NULL,
  `httt` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hd`
--

INSERT INTO `hd` (`id`, `tongtien`, `note`, `diachigiaohang`, `id_user`, `id_nhanvien`, `ngaylap`, `httt`, `status`) VALUES
(3, 444510, '', 'số 22,24 đường số 1, khóm Đông Thịnh 8, P. Mỹ Phước , TPLX, AG', 3, 6, '2024-01-01', 0, 1),
(4, 542010, 'Giao vao 12h hằng ngày', 'số 22,24 đường số 1, khóm Đông Thịnh 8, P. Mỹ Phước , TPLX, AG', 3, 1, '2024-01-01', 0, 1),
(18, 18000, '', 'số 22,24 đường số 1, khóm Đông Thịnh 8, P. Mỹ Phước , TPLX, AG', 1, 1, '2024-01-01', 0, 3),
(19, 18000, '1225558jhggjjjhjjhj', 'số 22,24 đường số 1, khóm Đông Thịnh 8, P. Mỹ Phước , TPLX, AG', 1, 6, '2024-01-01', 0, 3),
(20, 195000, 'giao vào 12h hàng ngày!', 'số 22,24 đường số 1, khóm Đông Thịnh 8, P. Mỹ Phước , TPLX, AG', 7, 1, '2024-01-01', 0, 2),
(21, 223200, 'ký túc xá đại học An Giang', 'An Giang', 6, 0, '2024-01-24', 0, 0),
(22, 263000, '', '22/6 My An, My Luong, Cho Moi, An Giang', 8, 0, '2024-03-09', 0, 3),
(23, 304500, 'N/A', '22/6 My An, My Luong, Cho Moi, An Giang', 8, 0, '2024-04-10', 0, -1),
(24, 134400, '', '22/6 My An, My Luong, Cho Moi, An Giang', 8, 0, '2024-04-10', 0, -1),
(25, 134400, '', '22/6 My An, My Luong, Cho Moi, An Giang', 8, 0, '2024-04-10', 0, 0),
(26, 134400, '', '22/6 My An, My Luong, Cho Moi, An Giang', 8, 0, '2024-04-10', 0, 3),
(27, 97500, '', '22/6 My An, My Luong, Cho Moi, An Giang', 8, 0, '2024-04-13', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `homgopy`
--

CREATE TABLE `homgopy` (
  `id` int(11) NOT NULL,
  `id_user` int(16) NOT NULL,
  `noidung` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `homgopy`
--

INSERT INTO `homgopy` (`id`, `id_user`, `noidung`, `status`, `ngay`) VALUES
(1, 0, '112455\r\n225212\r\n522555', 1, '2024-01-19'),
(2, 6, 'Sản phẩm đẹp! <3', 1, '2024-01-20'),
(3, 2, 'Hello!\r\n', 0, '2024-01-20'),
(4, 3, 'Xin chào admin. <3', 1, '2024-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `nhanxet`
--

CREATE TABLE `nhanxet` (
  `id` int(11) NOT NULL,
  `id_user` int(16) NOT NULL,
  `noidung` varchar(100) NOT NULL,
  `id_product` int(11) NOT NULL,
  `thoigian` datetime DEFAULT NULL,
  `diem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nxb`
--

CREATE TABLE `nxb` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nxb`
--

INSERT INTO `nxb` (`id`, `name`) VALUES
(1, 'NXB Văn Học'),
(2, 'Thời Đại'),
(3, 'NXB Trẻ'),
(6, 'NXB Kim Đồng'),
(7, 'NXB Dân Trí'),
(8, 'NXB Đại Học Sư Phạm'),
(9, 'NXB Đà Nẵng'),
(10, 'Nhà Xuất Bản Văn Học'),
(11, 'NXB Tổng Hợp TPHCM'),
(12, 'NXB Lao Động'),
(13, 'NXB Mỹ Thuật'),
(14, 'Cengage'),
(15, 'NXB Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `id_hd` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `id_hd`, `id_type`, `status`) VALUES
(1, 3, 0, 0),
(2, 4, 0, 0),
(3, 18, 0, 0),
(4, 19, 0, 0),
(5, 20, 0, 0),
(6, 21, 0, 0),
(7, 22, 0, 0),
(8, 23, 0, 0),
(9, 25, 1, 0),
(10, 26, 1, 1),
(11, 27, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT 0,
  `thunbar` varchar(100) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `id_tacgia` int(11) DEFAULT NULL,
  `id_nxb` int(11) DEFAULT NULL,
  `id_cotyphathanh` int(11) DEFAULT NULL,
  `kichthuoc` varchar(100) DEFAULT NULL,
  `loaibia` varchar(50) DEFAULT NULL,
  `sotrang` int(11) DEFAULT NULL,
  `sku` int(11) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL COMMENT 'mota',
  `namxb` int(11) DEFAULT NULL,
  `id_nhanxet` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 0,
  `hot` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `sale`, `thunbar`, `soluong`, `category_id`, `id_tacgia`, `id_nxb`, `id_cotyphathanh`, `kichthuoc`, `loaibia`, `sotrang`, `sku`, `video`, `content`, `namxb`, `id_nhanxet`, `view`, `status`, `hot`, `created_at`, `updated_at`) VALUES
(4, 'Bố Già', 150000, 35, 'bogia.jpg', 7, 34, 2, 2, 3, '14.5 x 20.5 cm', 'Bìa Cứng', 642, 2147483647, 'https://www.youtube.com/watch?v=iu5TIDe8whw', 'Bố già là cuốn tiểu thuyết văn học hiện đại Mỹ được đông đảo bạn đọc trên thế giới nói chung và tại Việt Nam nói riêng đón nhận một cách \"nồng hậu\", và cũng không ngạc nhiên khi bộ phim ra đời ăn theo kịch bản cũng được chào đón nồng nhiệt không kém.  Không hẳn là vì cuốn tiểu thuyết viết về cuộc đời của một \"trùm mafia\" khét tiếng trôi dạt từ hòn đảo Xixili sang đất Mỹ và làm mưa làm gió trên mảnh đất \"tự do\" này, mà đằng sau đó là những thân phận, những cuộc đời mà lẽ ra vô cùng bình dị và yên ấm như bao gia đình khác. Cái \"đế chế vương quyền\" bất thành văn ấy, ai đã vào trong, ai đã \"cưỡi lên lưng hổ\" thì chỉ có con đường tiến, không có đường lui. Là nổ súng, tư thù, đâm thuê chém mướn, tranh giành lãnh địa, tranh hùng tranh bá thiên hạ, vậy mà vẫn ẩn chứa những đằm thắm, mặn mà, nhân hậu và \"có thuỷ có chung\". Ai đã xây dựng nên, ai là người đại diện xứng đáng, ai danh tiếng lưu truyền? chính là \"Bố già - Ông trùm Don Vitô Côrleône\".', NULL, NULL, 324, 1, 1, NULL, '2024-04-13 16:59:46'),
(5, 'Khéo Ăn Nói Sẽ Có Được Thiên Hạ ( Tái Bản )', 110000, 38, 'kaknscdth.jpg', 50, 36, 1, 1, 1, '20.5 x 14.5 cm', 'Bìa mềm', 406, 2147483647, 'https://www.youtube.com/watch?v=eSYdooFlP2U', 'Trong xã hội thông tin hiện đại, sự im lặng không còn là vàng nữa, nếu không biết cách giao tiếp thì dù là vàng cũng sẽ bị chôn vùi. Trong cuộc đời một con người, từ xin việc đến thăng tiến, từ tình yêu đến hôn nhân, từ tiếp thị cho đến đàm phán, từ xã giao đến làm việc... không thể không cần đến kĩ năng và khả năng giao tiếp. Khéo ăn khéo nói thì đi đâu, làm gì cũng gặp thuận lợi. Không khéo ăn nói, bốn bề đều là trở ngại, khó khăn. Trong thời đại thông tin và liên lạc phát triển nhanh chóng, tin tức được cập nhật liên tục, các công cụ thông tin và kĩ thuật truyền thông được ứng dụng rộng rãi như ngày nay thì việc khéo ăn nói đã trở thành “cái tài số một thiên hạ”. Trong khoảng thời gian ngắn nhất, nếu ai có thể nêu bật được khả năng, thực lực của mình cho đối phương biết thì đó sẽ là người chiến thắng. Chính vì vậy mà câu nói “Khéo ăn nói sẽ có được thiên hạ” rất có ý nghĩa. Vậy, như thế nào mới gọi là biết cách ăn nói? Nói năng lưu loát, không ấp úng có được gọi là biết cách nói chuyện không? Nói ngắn gọn, nói ít nhưng ý nghĩa thâm sâu có được gọi là biết cách nói chuyện không? Hay nhất định phải nói nhiều mới là biết nói chuyện?\r\n\r\nTrong cuộc sống thường ngày, chúng ta thấy rằng: Biết cách nói chuyện không nhất định là phải nói nhiều, quan trọng là phải nói đúng trọng tâm, đúng nội dung. Và điều quan trọng là phải nắm được vấn đề mình đang nói đến. Chắc chắn rất nhiều người đã gặp phải tình huống như thế này: Có những nhân viên tiếp thị khi gặp khách hàng thì giống như một cái máy, nói không ngừng nghỉ, không để ý tới phản ứng và cảm nhận của khách hàng, không cần biết vị khách đó có đang nghe lời giới thiệu về sản phẩm hay không. Nếu làm việc như vậy thì người đó nắm chắc phần thất bại. Trong cuộc sống và trong công việc, chúng ta cũng rất hay gặp phải hiện tượng như sau: Nhiều người khi nói chuyện với người quen thì nói rất hay, không bị mất bình tĩnh hay ấp úng.\r\n\r\nThế nhưng khi gặp người lạ hoặc phải nói chuyện trong một đám đông, thì người đó dường như bị mất sự chủ động với ngôn ngữ, có lúc còn không biết mình đã nói gì. Vậy làm thế nào để cải thiện và tránh gặp phải những tình huống như trên? Làm thế nào để ăn nói khéo léo? Có phương pháp và quy luật nào được áp dụng khi giao tiếp không? Có nguyên tắc và bí quyết nào cho các cuộc nói chuyện không? Trong những tình huống khác nhau, với những người khác nhau thì phải nói chuyện như thế nào, và làm sao để trình bày những điều khó nói? Cuốn sách “Khéo ăn nói sẽ có được thiên hạ” này sẽ giải đáp những câu hỏi đó. Cuốn sách với ngôn từ rõ ràng, gần gũi với cuộc sống sẽ mang đến những kĩ năng và phương pháp giao tiếp thực dụng, chắc chắn sẽ giúp ích cho quý độc giả. Nếu như những quy tắc và phương pháp chỉ giúp một số ít người nắm được và ứng dụng, thì giá trị của nĩ là có hạn. Chỉ cần những quy tắc và phương pháp cuốn sách đưa ra giúp được nhiều người, thì giá trị của nó là vơ hạn. Tác giả của “Khéo ăn nói sẽ có được thiên hạ” đã dốc hết tâm sức nghiên cứu về các kĩ năng và quy tắc giao tiếp, đây cũng chính là giá trị lớn nhất của cuốn sách.\r\n\r\nMột cuốn sách hay sẽ tự nói lên được giá trị của nó, và tự bản thân mỗi độc giả sẽ cảm nhận được điều đó. Quý độc giả sẽ tự nhiên yêu thích một cuốn sách có thể chạm đến trái tim và bổ ích cho mình. Còn với một cuốn sách không hay, độc giả sẽ không mua và cũng sẽ không để tâm đến. Sự hay dở của một cuốn sách do chính độc giả cảm nhận và xác định, thị trường sách cũng sẽ có đánh giá.\r\n\r\nCuối cùng, nhắc lại về vấn đề giao tiếp, tôi có hai điều muốn nói với độc giả:\r\n\r\nThứ nhất là nói chuyện phải chân thành. Chân thành chính là thứ ngôn ngữ hay nhất, nếu không chân thành thì cho dù nói nhiều bao nhiêu, nắm được nhiều kĩ năng và phương pháp giao tiếp đến thế nào, tất cả cũng chỉ là vô nghĩa.\r\n\r\nĐiều thứ hai là phải lắng nghe bằng trái tim. Chỉ có lắng nghe bằng trái tim thì chúng ta mới biết phải nói gì, nói như thế nào. Những người không biết cách lắng nghe thì không phải là người biết cách nói chuyện.\r\n\r\nNgười biết cách nói chuyện thì chắc chắn là người biết lắng nghe.\r\n\r\nChúc quý độc giả đọc sách vui vẻ và có thể nâng cao được kĩ năng giao tiếp của mình. Biết cách nói chuyện khéo léo và luôn có được cuộc sống tuyệt vời.', NULL, NULL, 7, 0, 1, NULL, '2024-03-09 02:30:15'),
(6, 'Tiếp Thị 4.0 - Dịch Chuyển Từ Truyền Thống Sang Công Nghệ Số', 100000, 18, 'tiepthi4.0.jpg', 50, 35, 6, 3, 3, '13 x 20.5 cm', 'Bìa Mềm', 264, 2147483647, 'https://www.youtube.com/watch?v=q0dcu1d2z9g', 'Quyển cẩm nang vô cùng cần thiết cho những người làm tiếp thị trong thời đại số. Được viết bởi cha đẻ ngành tiếp thị hiện đại, cùng hai đồng tác giả là lãnh đạo của công ty MarkPlus, quyển sách sẽ giúp bạn lèo lái thế giới không ngừng kết nối và khách hàng không ngừng thay đổi để có được nhiều khách hàng hơn, xây dựng thương hiệu hiệu quả hơn, và cuối cùng kinh doanh thành công hơn. Ngày nay khách hàng không có nhiều thời gian và sự chú ý dành cho thương hiệu của bạn – và họ còn bị bao quanh bởi vô số các chọn lựa. Bạn phải tách khỏi đám đông, phải nổi trội, để gây sự chú ý và truyền đạt thông điệp mà khách hàng muốn nghe. “Tiếp thị 4.0” tận dụng tâm lý thay đổi của khách hàng để tiếp cận nhiều khách hàng hơn và khiến họ gắn bó với thương hiệu hơn bao giờ hết.  Quyển sách cho bạn kiến thức sâu rộng để bạn thành công trong thế giới tiếp thị ngày nay: Khám phá những nguyên tắc mới trong tiếp thị; Nổi bật và tạo ra những khoảnh khắc WOW; Xây dựng nền tảng khách hàng trung thành và có tiếng nói; và Biết ai sẽ là người định hình tương lai của các chọn lựa của khách hàng…\r\nQuyển sách gồm ba phần, với các nội dung:\r\n“Phần đầu tiên của cuốn sách là kết quả quan sát của chúng tôi về thế giới chúng ta đang sinh sống. Chúng tôi bắt đầu bằng cách bám sát ba thay đổi lớn đang định hình thế giới chúng ta. Chúng tôi đi vào chi tiết hơn để khám phá xem khả năng kết nối đã thay đổi cơ bản cuộc sống của con người như thế nào. Không chỉ dừng lại ở đó, chúng tôi đi sâu hơn vào một số nhóm tiểu văn hóa chính trong kỷ nguyên số - đó là giới trẻ, phụ nữ và công dân mạng, hứa hẹn sẽ là nền tảng cho một thế hệ khách hàng mới.\r\nPhần thứ hai cũng là phần trọng tâm của cuốn sách, sẽ thảo luận về cách người làm tiếp thị có thể gia tăng hiệu suất bằng cách tìm hiểu về hành trình khách hàng trong kỷ nguyên số. Phần này sẽ giới thiệu một hệ thống mới các chỉ số tiếp thị và cách nhìn hoàn toàn mới về  cách đánh giá hoạt động tiếp thị của chúng ta. Chúng tôi cũng đào sâu hơn vào một số ngành quan trọng và cách áp dụng những ý tưởng từ “Tiếp thị 4.0” vào các ngành này.\r\nCuối cùng, phần thứ ba miêu tả chi tiết về các chiến thuật chủ đạo của “Tiếp thị 4.0”. Chúng tôi bắt đầu với hoạt động tiếp thị lấy con người làm trung tâm với mục tiêu nhân cách hóa thương hiệu với các giá trị của con người. Sau đó, chúng tôi tiếp tục thảo luận chuyên sâu về tiếp thị nội dung nhằm tạo ra thảo luận giữa các khách hàng. Ngoài ra, chúng tôi còn mô tả những cách giúp người làm tiếp thị có thể áp dụng phương thức tiếp thị tích hợp đa kênh nhằm tăng doanh thu cao hơn. Sau cùng, chúng tôi đào sâu vào các khái niệm về sự gắn kết với khách hàng ở kỷ nguyên số.”', NULL, NULL, 12, 0, 0, NULL, '2024-01-30 03:01:22'),
(7, '90% Trẻ Thông Minh Nhờ Cách Trò Chuyện Đúng Đắn Của Cha Mẹ (Tái Bản 2019)', 39000, 12, 'TTMNTDDM.jpg', 50, 37, 7, 6, 6, '13 x 19 cm', 'Bìa Mềm', 176, 2147483647, 'https://www.youtube.com/watch?v=eDzxivsaZBg', 'Bạn có bao giờ thốt ra những câu dù biết là không nên nói như  “Còn lề mề đến bao giờ nữa hả?” hay “Chẳng được cái trò trống gì, đưa đây xem nào!”… nhưng vẫn lỡ lời không?\r\n\r\nTrong quá trình trẻ trưởng thành, những lời lẽ kiểu “Mày chẳng được cái tích sự gì!” trẻ phải nghe ngày ngày sẽ thẩm thấu qua vô thức, rồi sau đó trở thành ý thức coi mình chỉ là loại “vô dụng”. Không biết từ lúc nào, trẻ sẽ bắt đầu thực hiện những hành vi, lối sống không tốt.\r\n\r\nTrong cuốn sách này, chúng tôi sẽ giới thiệu tới quý vị phụ huynh những câu nói “có phép lạ” khiến các con trở thành những đứa trẻ “tự có ý thức” mà cha mẹ không cần cằn nhằn nhiều. Hơn nữa, đây hoàn toàn là những câu chúng ta có thể áp dụng ngay từ ngày hôm nay như “Mẹ luôn đứng về phía con!”, “Mẹ con mình cùng làm nhé!”…\r\n\r\nVề bản chất, mỗi đứa trẻ đều mang trong mình một “sức mạnh” tuyệt vời. Nhưng trước hết, chúng ta phải tin tưởng vào sức mạnh ấy đã! Khi được tin cậy, “sức mạnh” bên trong trẻ sẽ được nuôi dưỡng một cách tự nhiên.\r\n\r\nCuốn sách này sẽ giới thiệu cách trò chuyện giúp khai phá sức mạnh ấy từ nhiều góc độ. Chắc chắn không chỉ các con mà ngay cả chính các bậc phụ huynh cũng sẽ thay đổi. Cuộc sống sẽ lại một lần nữa trở nên thật tuyệt vời.\r\n\r\nCuốn sách này sẽ giúp mở rộng tiềm năng của trẻ tới vô hạn!', NULL, NULL, 1, 0, 0, NULL, '2024-01-30 03:01:22'),
(8, 'Siêu Nhí Hỏi Nhà Khoa Học Trả Lời', 250000, 20, 'bia-sieu-nhi-hoi-nha-khoa-hoc-tra-loi---b_a-full_2.jpg', 50, 38, 8, 7, 7, '27 x 21 cm', 'Bìa Cứng', 128, 2147483647, 'https://www.youtube.com/watch?v=XULCJ93XhKk', 'Siêu Nhí Hỏi Nhà Khoa Học Trả Lời\r\n\r\nCuốn sách khoa học đáng yêu cho các bạn nhỏ này tập hợp 100 câu hỏi về cuộc sống hàng ngày từ các bạn học sinh trên khắp thế giới gửi đến nhà khoa học Robert Winston. Cuốn sách cho chúng ta thấy sự tò mò chung của trẻ em đối với thế giới xung quanh qua những câu hỏi những thu thập từ trẻ em ở Vương quốc Anh, các nước Châu Âu khác, Canada, Mỹ, Ấn Độ, Trung Quốc và Nhật Bản. Các câu hỏi xoay quanh những khía cạnh khác nhau của khoa học, bao trùm ở các chủ đề chính gồm cơ thể con người, vật lý, hóa học, không gian, khoa học tự nhiên và Trái Đất.\r\n\r\n“Tại sao bầu trời có màu xanh?”,“Tại sao các ngôi sao lấp lánh?’’,“Tại sao nước sủi bọt khi sôi?” hay “Tại sao chúng ta đổ mồ hôi khi vận động?” Trẻ con quan sát thế giới xung quanh và luôn luôn đặt câu hỏi về những băn khoăn của mình. Đây là điều mà người trưởng thành không dễ dàng làm được.\r\n\r\n100 câu hỏi là những quan sát thông minh và thú vị của các bạn nhỏ với sự tò mò và óc tưởng tượng phong phú của mình. Tất cả các câu hỏi đều được trả lời rõ ràng và sống động.\r\n\r\nCuốn sách “Siêu nhí hỏi – nhà khoa học trả lời” chắc chắn sẽ đem đến một thế giới khoa học đầy niềm vui, hài hước, thú vị, làm thỏa mãn trí tò mò của các nhà khoa học nhí. Hơn thế nữa cuốn sách cũng sẽ giúp cả gia đình có những phút giây thoải mái và gắn kết khi cùng nhau khám phá thế giới khoa học diệu kỳ.', NULL, NULL, 1, 0, 0, NULL, '2024-01-30 03:01:22'),
(9, 'I-Learn Smart Start 1 - Sách Giáo Khoa Tiếng Anh Lớp 1', 78000, 5, 'image_195509_1_45385.jpg', 50, 39, 9, 8, 8, '28 x 20 x 0.5 cm', 'Bìa Mềm', 71, 2147483647, 'https://www.youtube.com/watch?v=Stye5lxG758', 'Bộ SGK Tiếng Anh i-Learn Smart Start là bộ giáo trình Tiếng Anh tiểu học 5 cấp độ (lớp 1-lớp 5), được thiết kế chuyên biệt dành riêng cho lớp học Việt Nam.\r\n\r\nBộ sách được phối hợp biên soạn bởi các tác giả quốc tế, các giảng viên uy tín và hàng trăm giáo viên Tiếng Anh đang giảng dạy bộ giáo trình này tại Việt Nam. i-Learn Smart Start chính là sự kết hợp nhuần nhuyễn giữa kinh nghiệm quốc tế và nhu cầu giảng dạy thực tế của Việt Nam, đáp ứng đầy đủ khung chương trình và các tiêu chí đánh giá của Bộ Giáo Dục và Đào Tạo.\r\n\r\nCÁC ĐIỂM NỔI BẬT\r\n\r\nBám sát khung chương trình giảng dạy Tiếng Anh của Bộ Giáo dục & Đào tạo\r\n\r\nNội dung phong phú và hiện đại, mở rộng các yếu tố văn hóa, giá trị đạo đức\r\n\r\nCấu trúc bài học rõ ràng, nhất quán: giúp học sinh dễ theo dõi; giáo viên chuẩn bị bài giảng nhanh chóng và hiệu quả\r\n\r\nLiên thông 12 cấp độ từ Tiểu học lên Trung học với bộ giáo trình i-Learn Smart World\r\n\r\nTài liệu hấp dẫn với các bài hát vui nhộn, hình ảnh sinh động, trò chơi lôi cuốn phù hợp với lứa tuổi học sinh\r\n\r\nTài liệu hấp dẫn với các bài hát vui nhộn, hình ảnh sinh động, trò chơi lôi cuốn phù hợp với lứa tuổi học sinh', NULL, NULL, 14, 0, 0, NULL, '2024-01-30 03:01:22'),
(10, 'Giải Thích Ngữ Pháp Tiếng Anh Với Bài Tập Và Đáp Án (Tái Bản 2020)', 180000, 20, 'image_195509_1_41511.jpg', 50, 40, 10, 9, 9, '24 x 17 cm', 'Bìa Mềm', 560, 2147483647, 'https://www.youtube.com/watch?v=6lG4ypDvLaE', 'Sách Giải Thích Ngữ Pháp Tiếng Anh Với Bài Tập Và Đáp Án được biên soạn thành 9 chương, đề cập đến những vấn đề ngữ pháp từ cơ bản đến nâng cao.\r\n\r\nNội dung các chương được biên soạn dựa trên ngữ pháp tiiếng Anh hiện đại, giải thích cặn kẽ, rõ ràng các cách dùng và quy luật mà người học cần nắm vững: đồng thời chỉ ra những quy luật khác nhau giữa tiếng anh của người Anh (British English) và tiếng Anh của người Mỹ (American English).\r\n\r\nCuối mỗi phần ngữ pháp đều có bài tập đa dạng để giúp người học nắm vững phần lý thuyết. Hơn nữa, hiện nay hình thức thi trắc nghiệm đang được áp dụng trong các kỳ thi, nên trong sách này chúng tôi biên soạn một số phần bài tập trắc nghiệm để đáp ứng nhu cầu của người học trong tình hình mới.\r\n\r\nHy vọng Giải Thích Ngữ Pháp Tiếng Anh sẽ là một quyển sách thiết thực, đáp ứng yêu cầu học, ôn tập và nâng cao trình độ ngữ pháp cho người học và là quyển sách tham khảo bổ ích dành cho giáo viên.', NULL, NULL, 1, 1, 0, NULL, '2024-01-24 16:26:53'),
(11, 'Nhà Giả Kim', 69000, 21, 'image_195509_1_36793.jpg', 43, 36, 11, 10, 10, '13 x 20.5 cm', 'Bìa Mềm', 228, 2147483647, 'https://www.youtube.com/watch?v=DbonCgmCHJY', 'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.\r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”\r\n\r\n- Trích Nhà giả kim\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', NULL, NULL, 11, 0, 0, NULL, '2024-01-30 03:01:22'),
(13, 'Hai Số Phận (Bìa Cứng)', 20000, 10, 'haisophaann.png', 46, 37, 12, 10, 11, '13.5 x 20.5 cm', 'Bìa cứng', 789, 2147483647, 'dfgfdgsdfdsg', 'Hai Số Phận (có tên gốc tiếng Anh là: Kane and Abel) là một cuốn tiểu thuyết được sáng tác vào năm 1979 bởi nhà văn người Anh Jeffrey Archer. Tựa đề Kane and Abel dựa theo câu chuyện của anh em: Cain và Abel trong Kinh Thánh Cựu Ước.\r\n\r\nTác phẩm được xuất bản tại Vương quốc Anh vào năm 1979 và tại Hoa Kỳ vào tháng 2 năm 1980, cuốn sách phổ biến thành công trên thế giới. Sách đạt danh hiệu sách bán chạy nhất theo danh sách của tờ New York Times và năm 1985 nó được đưa lên chương trình truyền hình miniseries của CBS với tên là Kane & Abel bắt đầu với Peter Strauss vai Rosnovski và Sam Neill vai Kane.', NULL, NULL, 4, 0, 0, NULL, '2024-01-30 03:01:22'),
(14, 'Thay Đổi Cuộc Sống Với Nhân Số Học', 248000, 10, 'tdcsvnsh.jpg', 50, 36, 13, 11, 12, '20.5 x 14.5 cm', 'Bìa Mềm', 461, 2147483647, 'https://www.youtube.com/watch?v=mKm5Jsd7cb8', 'Cuốn sách Thay đổi cuộc sống với Nhân số học là tác phẩm được chị Lê Đỗ Quỳnh Hương phát triển từ tác phẩm gốc “The Complete Book of Numerology” của tiến sỹ David A. Phillips, khiến bộ môn Nhân số học khởi nguồn từ nhà toán học Pythagoras trở nên gần gũi, dễ hiểu hơn với độc giả Việt Nam.\r\n\r\nĐầu năm 2020, chuỗi chương trình “Thay đổi cuộc sống với Nhân số học” của  biên tập viên, người dẫn chương trình quen thuộc tại Việt Nam Lê Đỗ Quỳnh Hương ra đời trên Youtube, với mục đích chia sẻ kiến thức, giúp mọi người tìm hiểu và phát triển, hoàn thiện bản thân, các mối quan hệ xã hội thông qua bộ môn Nhân số học. Chương trình đã nhận được sự yêu mến và phản hồi tích cực của rất nhiều khán giả và độc giả sau mỗi tập phát sóng.\r\n\r\nNhân số học là một môn nghiên cứu sự tương quan giữa những con số trong ngày sinh, cái tên với cuộc sống, vận mệnh, đường đời và tính cách của mỗi người. Bộ môn này đã được nhà toán học Pythagoras khởi xướng cách đây 2.600 năm và sau này được nhiều thế hệ học trò liên tục kế thừa, phát triển.  \r\n\r\n Có thể xem, Nhân số học là một bộ môn Khám phá Bản thân (Self-Discovery), đọc vị về số. Bộ môn này giúp giải mã những tín hiệu mà cuộc sống đã gửi đến từng cá thể con người trong đời sống, tương tự như Nhân tướng học hay Nhân trắc học…Khi nghiêm túc nghiên cứu sự tồn tại và mối tương quan giữa các con số xuất hiện trong ngày, tháng, năm sinh của mỗi người qua Nhân số học, ta có thể hiểu được khá nhiều về bản thân mình, cũng như mối quan hệ của mình với người khác. Nếu hiểu những \"mật mã\" nằm ẩn dưới những con số, chúng ta có thể kiểm soát cuộc sống của mình, điều chỉnh chúng theo hướng ngày càng tốt đẹp hơn, phù hợp với năng lực, tính cách của mình hơn.\r\n\r\nTrong quyển sách “Thay đổi cuộc sống với Nhân số học”, Lê Đỗ Quỳnh Hương đã sử dụng khoảng 60% nền tảng tri thức từ quyển sách “The Complete Book of Numerology” (tạm dịch: Một quyển sách toàn diện về Nhân số học) của Tiến sĩ David A. Phillips (1934 – 1993) và 40% kết quả nghiên cứu của chị sau khi phân tích hơn 500 trường hợp cụ thể của những người Việt Nam sinh ra trong thế kỷ 21.\r\n\r\n Cuốn sách “Thay đổi cuộc sống với Nhân số học”mang lại đầy đủ những kiến thức quan trọng nhất mà người hứng thú với Nhân số học cần tìm hiểu. Sách bao gồm các kiến thức về ba thể trong một con người, con số chủ đạo, biểu đồ ngày sinh, các mũi tên chỉ đặc điểm, con số ngày sinh, chu kỳ 9 năm, ba giai đoạn và bốn đỉnh cao của đời người cùng ý nghĩa, sức mạnh của cái tên của mỗi người. Các kiến thức này được diễn giải, phân tích và đi kèm các ví dụ cụ thể.\r\n\r\nVới mục đích đem Nhân số học trở nên gần gũi, dễ ứng dụng và mang lại những giá trị tích cực cho mỗi người trong đời sống, chị Lê Đỗ Quỳnh Hương mong rằng trong hành trình khám phá bản thân qua những con số, người đọc có thể hiểu về mình - hiểu được những thuận lợi và bất lợi mà mình gặp phải, từ đó tìm được động lực lớn để thay đổi cuộc sống. Giá trị của cuốn sách “Thay đổi cuộc sống với Nhân số học” nằm ở kiến thức tổng quan về Nhân số học và những lời khuyên sâu sắc để mỗi người có thể chuyển mình theo những hướng tích cực hơn như sống có lý tưởng, mở lòng, chăm chỉ, biết lắng nghe người khác, luyện tập thiền định, tập trung, sống có trách nhiệm, biết ơn và yêu thương…\r\n\r\nTrong cuộc đời của mỗi con người, chúng ta thường phải mày mò, tìm kiếm con đường riêng cho mình mà không biết chắc con đường đó có phù hợp với mình hay không. Đôi lúc, chúng ta phải phải trầy trật, vấp ngã thậm chí lạc lối mới rút ra được kinh nghiệm, bài học. Nếu hiểu về Nhân số học, và thông qua những kiến thức nhất định về ý nghĩa và sự kết hợp của các con số, chúng ta có thể tự vạch ra cho mình một hướng đi tương đối cụ thể, giảm thiểu được các lần “thử và sai”, từ đó tìm được nhiều niềm vui, hạnh phúc, ý nghĩa trong cuộc sống.\r\n\r\nĐó chính là thông điệp và mục đích lớn nhất mà tiến sỹ David A. Phillips và Lê Đỗ Quỳnh Hương mong muốn gửi gắm cho đông đảo bạn đọc.\r\n\r\nVỀ TÁC GIẢ\r\n\r\nDAVID A. PHILLIPS, tiến sĩ triết học tại Đại học London năm 1971, nhưng sau đó lại được biết đến như một chuyên gia trong lĩnh vực sức khỏe và dinh dưỡng. Lúc sinh thời, ông cũng thường đến các nước nói tiếng Anh trên thế giới để giảng dạy và diễn thuyết, tư vấn về Nhân số học, cống hiến sự nghiên cứu cả đời mình về lĩnh vực sức khỏe và phát triển cá nhân cho việc giảng dạy.Tiến sĩ A.Phillips viết tổng cộng 12 quyển sách, trong đó, nổi tiếng và được yêu thích rộng rãi nhất là cuốn The Complete Book of Numerology (Một quyển sách toàn diện về Nhân Số Học).\r\n\r\nLê Đỗ Quỳnh Hương, thạc sĩ Âm nhạc học tại Nhạc viện TP. HCM, là một biên tập viên, người dẫn chương trình quen thuộc tại Việt Nam, cũng là một cây bút với nhiều quyển sách về chủ đề sống tích cực được nhiều người yêu thích. Lần đầu tiên bén duyên với lĩnh vực Nhân số học, chị cùng các đồng sự đã tìm hiểu, nghiên cứu dựa trên nền tảng cuốn “The Complete Book of Numerology” để cho ra đời tác phẩm “Thay đổi cuộc sống với Nhân số học”, một quyển sách giúp bản thân mỗi người hiểu rõ mình hơn và qua đó, có những', NULL, NULL, 6, 0, 0, NULL, '2024-01-30 03:01:22'),
(15, 'Cà Phê Cùng Tony (Tái Bản 2017)', 90000, 30, 'untitled-9_19.jpg', 49, 34, 3, 3, 3, '13 x 20 cm', 'Bìa Mềm', 268, 2147483647, 'sdsaf', 'Có đôi khi vào những tháng năm bắt đầu vào đời, giữa vô vàn ngả rẽ và lời khuyên, khi rất nhiều dự định mà thiếu đôi phần định hướng, thì CẢM HỨNG là điều quan trọng để bạn trẻ bắt đầu bước chân đầu tiên trên con đường theo đuổi giấc mơ của mình. Cà Phê Cùng Tony là tập hợp những bài viết của tác giả Tony Buổi Sáng. Đúng như tên gọi, mỗi bài nhẹ nhàng như một tách cà phê, mà bạn trẻ có thể nhận ra một chút gì của chính mình hay bạn bè mình trong đó: Từ chuyện lớn như định vị bản thân giữa bạn bè quốc tế, cho đến chuyện nhỏ như nên chú ý những phép tắc xã giao thông thường.\r\n\r\nChúng tôi tin rằng những người trẻ tuổi luôn mang trong mình khát khao vươn lên và tấm lòng hướng thiện, và có nhiều cách để động viên họ biến điều đó thành hành động. Nếu như tập sách nhỏ này có thể khơi gợi trong lòng bạn đọc trẻ một cảm hứng tốt đẹp, như tách cà phê thơm vào đầu ngày nắng mới, thì đó là niềm vui lớn của tác giả Tony Buổi Sáng.\r\n\r\nTony Buổi Sáng cũng là tác giả của Trên đường băng, tác phẩm hiện đã bán hơn 200.000 bản.\r\n\r\n***\r\n\r\nTrích đoạn:\r\n\r\n... Thật ra Tony hiểu vì sao các bác giáo sư tiến sĩ soạn sách đã phải đưa vào nhiều nội dung như vậy. Rất là tâm huyết và đáng trân trọng. Vì ngày xưa, kiến thức rất khó tìm. Nhiều điều hữu ích chỉ nằm trong sách, trong thư viện các thành phố lớn, các trường các viện đại học lớn và người ta phải nhớ mọi thứ, nên phải cộng điểm cho học sinh nông thôn vì ít cơ hội tiếp cận kiến thức. Nhưng, bây giờ kiến thức nằm hết trên mạng, trong file máy tính, truy cập là ra ngay, nên các nước đã phải thay đổi chương trình học phổ thông sau khi máy tính và internet ra đời. Học sinh chỉ cần nhớ những gì cốt lõi, và PHƯƠNG PHÁP tìm kiếm tài liệu. Vì chữ nghĩa rồi cũng sẽ rụng rơi theo thời gian, kiến thức mới lại bổ sung liên tục, nên phương pháp tìm kiếm thông tin tốt sẽ giúp ích cho các bạn trong cuộc sống sau này. Làm ngành nghề gì cũng phải cập nhật cái mới...', NULL, NULL, 0, 0, 0, NULL, '2024-03-09 02:18:53'),
(16, 'Cát Bụi Đường Bay', 58000, 50, 'image_179032_thanh_ly.jpg', 50, 34, 14, 12, 13, '12.5x20 cm', 'Bìa Mềm', 109, 2147483647, 'jjhj', 'Cuối năm, lật xấp bản thảo của các thi hữu gửi đến từ đầu năm, còn sót một thi phẩm chưa đọc. Chậm một bình trà khuya, trong không gian tĩnh lặng, tự thưởng mình bằng những vần lục bát của một thi nhân áo nâu chưa bao giờ gặp mặt.  \r\n\r\nĐọc một hơi 79 đoản khúc, mỗi đoản khúc bồn cầu, tưởng chừng mình như hạt bụi bay theo gió cuốn. Nói cách khác, thi phẩm trên tay bạn là cuộc hành trình của một hạt bụi, đi qua chiều dài gập ghềnh của tâm cảnh và thời gian, đi qua cái mênh mông bát ngát của cõi thiền.\r\n\r\nHạt bụi, có khi hóa thân thành cánh chim, cánh nhạn, chiếc lá, hay khói sương, đã lich nghiệm những cảnh giới ấy theo đường bay của gió. Gió xuân, gió hạ, gió thu, gió đông. Gió được, gió mất, gió vinh, gió nhục, gió khen, gió chế, gió vui, gió buồn... Nhưng đậm nét nhất, có thể nói là gió tình và gió thiền. Nếu được-mất, vinh-nhục, khen-chê, vui – buồn là những cặp vừa tương khắc vừa tương sinh, thì tình và thiền ở đây cũng là một cặp song hành.\r\n\r\nNói thế không có nghĩa trong tình tất có thiền, hay trong thiền tất có tình. Chỉ là nói theo thể cách thiền-tình đề huề của Hàn Long An qua thi phẩm này. Tình yêu thị hóa tâm thiền. Tâm thiền tịnh hóa tình yêu. Hai ngọn gió này, lúc quyện lấy và nâng đỡ nhau, lúc lại lấn lướt loại trừ nhau, trên cuộc đăng trình về chốn miên viễn.\r\n\r\nKhởi đầu cho cuộc đăng trình là chuyển động của gió:\r\n\r\nTàn thu buốt lạnh gió lay\r\n\r\nLên non còn nhớ mộng ngày ta xưa\r\n\r\nCánh chim phiêu bạt bao mùa\r\n\r\nChợt nghe vọng tiếng gió lùa sang song\r\n\r\n \r\n\r\nVà gió khởi đi từ buổi tàn thu, dấy lên cả một trời ảm đạm, làm nền cho một phiến tình lãng đãng khói sương.\r\n\r\nXưa em cột mái tóc thề\r\n\r\nSương khuya đọng ướt đề huề gió đưa\r\n\r\nSáng nay quét lá sân chùa\r\n\r\nChuyện ngày xưa đã theo mùa thu đi\r\n\r\n(đoản khúc 3)\r\n\r\nMượn ý giai thoại phướn và gió của Lục Tổ Huệ Năng, ở đây có thể nói theo ngôn ngữ nhà thiền rằng, trong cơn gió bụi ấy, chẳng phải gió hay bụi chuyển động, mà chính là tâm động. Tầm ấy động chuyển từ một khoảnh khắc của tình, và hành giả đang trong nỗ lực chuyển hóa tình yêu nhỏ bé thành năng lượng vô hạn của từ bị tâm. Cuộc chuyển hóa này được vẽ lại bằng những câu lục bát óng ánh sắc màu và âm thanh diễm lệ, trữ tình...\r\n\r\nGiọng thơ của Hàn Long An đã mấp mé chạm tới đỉnh cao của thể lục-bát với lối ngắt câu, phân chữ thật điêu luyện, tài tình. Thả hồn vào tâm điểm của  thi phẩm ta mới cảm nhận được sự mạnh mẽ thu hút người đọc “cuốn theo chiều gió.”\r\n\r\n…\r\n\r\nMột chút nắng hồng trên vai, cũng chẳng nặng nề chi. Nắng hồng ấy, có thể là tình, có thể là huyễn sắc, đã được gió mang đến, phả nhẹ trên vai, sẽ tan biến bất cứ lúc nào, dù có gió hay không có gió. Bởi vì, tâm đã an.', NULL, NULL, 0, 0, 0, NULL, NULL),
(17, 'Không Gia Đình (Bìa Cứng) - Tái Bản 2020', 125000, 20, 'image_215234.jpg', 48, 34, 15, 13, 2, '20.5 x 14.5 cm', 'Bìa Cứng', 676, 2147483647, 'scx', 'Không gia đình kể về chuyện đời  Rémi, một cậu bé không cha mẹ, họ hàng thân thích. Sau khi phải rời khỏi vòng tay của người má nuôi, em đã đi theo đoàn xiếc thú của cụ già Vitalis tốt bụng. Kể từ đó, em lưu lạc khắp nơi, ban đầu dưới sự che trở của cụ Vitalis, sau đó thì tự lập và còn lo cả công việc biểu diễn và sinh sông cho cả một gánh hát rong. Đã có lúc em và cả đoàn lang thang cả mấy ngày đói khát ri còn suýt chết rét. Có bận em bị lụt ngầm chôn trong giếng vàng mỏ hàng tuần. Rồi có lần em còn mắc oan bị giải ra toà và phải ở tù. \r\nNhưng dù ở đâu, trong cảnh ngộ nào, em vẫn noi theo nếp rèn dạy của ông già Vitali giữ phẩm chất làm người, nghĩa là ngay thẳng, gan dạ, tự trọng, thương người, ham lao động, không ngửa tay xin xỏ, không dối trá, gian giảo, nhớ ơn nghĩa, luôn luôn muốn làm người có ích...\r\n\r\nCuối cùng, sau bao gian nan khổ cực, em đã đoàn tụ được với gia đình mình.', NULL, NULL, 1, 0, 0, NULL, '2024-03-09 02:18:53'),
(18, 'Từ Tốt Đến Vĩ Đại', 115000, 36, 'nxbtre_full_06372017_103735.u547.d20170117.t105220.139884.jpg', 50, 35, 16, 3, 3, '14.5 x 20.5 cm', 'Bìa Mềm', 442, 2147483647, 'dfsd', 'Jim Collins cùng nhóm nghiên cứu đã miệt mài nghiên cứu những công ty có bước nhảy vọt và bền vững để rút ra những kết luận sát sườn, những yếu tố cần kíp để đưa công ty từ tốt đến vĩ đại. Đó là những yếu tố khả năng lãnh đạo, con người, văn hóa, kỷ luật, công nghệ… Những yếu tố này được nhóm nghiên cứu xem xét tỉ mỉ và kiểm chứng cụ thể qua 11 công ty nhảy vọt lên vĩ đại. Mỗi kết luận của nhóm nghiên cứu đều hữu ích, vượt thời gian, ý nghĩa vô cùng to lớn đối với mọi lãnh đạo và quản lý ở mọi loại hình công ty (từ công ty có nền tảng và xuất phát tốt đến những công ty mới khởi nghiệp), và mọi lĩnh vực ngành nghề. Đây là cuốn sách nên đọc đối với bất kỳ lãnh đạo hay quản lý nào!\r\n\r\n\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', NULL, NULL, 0, 0, 0, NULL, NULL),
(19, 'Nhà Lãnh Đạo Không Chức Danh', 80000, 15, '8934974145936.jpg', 50, 35, 17, 3, 3, '13 x 20.5 cm', 'Bìa Mềm', 270, 2147483647, 'dd', 'Suốt hơn 15 năm, Robin Sharma đã thầm lặng chia sẻ với những công ty trong danh sách Fortune 500 và nhiều người siêu giàu khác một công thức thành công đã giúp ông trở thành một trong những nhà cố vấn lãnh đạo được theo đuổi nhiều nhất thế giới. Đây là lần đầu tiên Sharma công bố công thức độc quyền này với bạn, để bạn có thể đạt được những gì tốt nhất, đồng thời giúp tổ chức của bạn có thể có những bước đột phá đến một cấp độ thành công mới trong thời đại thiên biến vạn hóa như hiện nay.\r\n\r\nTrong cuốn sách Nhà Lãnh Đạo Không Chức Danh, bạn sẽ học được:\r\n\r\nLàm thế nào để làm việc và tạo ảnh hưởng với mọi người như một siêu sao, bất chấp bạn đang ở vị trí nào\r\nMột phương pháp để nhận biết và nắm bắt cơ hội vào những thời điểm thay đổi\r\nNhững bí mật thật sự của sự đổi mới\r\nMột chiến lược tức thời để xây dựng đội nhóm tuyệt vời và trở thành một nhà cung cấp ngoạn mục của khách hàng\r\nNhững thủ thuật cứng rắn giúp trở nên mạnh mẽ cả về thể chất lẫn tinh thần để có thể đi đầu trong lĩnh vực của bạn\r\nNhững phương thức thực tế để đánh bại sự căng thẳng, xây dựng một ý chí bất bại, giải phóng năng lượng, và cân bằng cuộc sống cá nhân\r\nBất kể bạn làm gì trong tổ chức và cuộc sống hiện tại của bạn như thế nào, một thực tế quan trọng duy nhất là bạn có khả năng thể hiện năng lực lãnh đạo. Cho dù sự nghiệp hiện tại của bạn đang ở đâu, bạn vẫn luôn cần phải thể hiện những khả năng tột đỉnh của mình. Cuốn sách này sẽ hướng dẫn bạn làm thế nào để khai thác tối đa khả năng đó, cũng như thay đổi cuộc sống và thế giới xung quanh bạn.', NULL, NULL, 0, 0, 0, NULL, NULL),
(20, 'Ba Người Thầy Vĩ Đại (Tái Bản 2019)', 95000, 20, 'image_195509_1_10692.jpg', 50, 36, 17, 12, 13, '14.5 x 20.5 cm', 'Bìa Mềm', 330, 2147483647, 'dd', '“Tôi đã nếm trải nhiều thất bại trong hành trình đi qua những tháng ngày của mình. Thế nhưng, mỗi chướng ngại cuối cùng đều lại chính là một bàn đạp đưa tôi gần hơn nữa tới chân lý trong tâm khảm và cuộc đời tốt đẹp nhất của mình.\r\n\r\nCho dù tôi có thu thập được bao nhiêu tài sản vật chất đi chăng nữa thì cái thằng người mà tôi nhìn thấy trong tấm gương phòng tắm mỗi buổi sáng vẫn y nguyên – tôi không hề hạnh phúc hơn và không hề cảm thấy tốt hơn tí nào. Suy ngẫm nhiều hơn về thực trạng cuộc sống của mình, tôi bắt đầu nhận thức được sự trống rỗng ngay trong tim mình. Tôi bắt đầu chú ý đến những tiếng thầm thì lặng lẽ của con tim, những điều chỉ dẫn tôi rời bỏ nghề nghiệp mình đã chọn và bắt đầu quá trình tìm kiếm tâm hồn một cách nghiêm túc. Tôi bắt đầu suy nghĩ về lý do tại sao tôi lại ở đây, trên hành tinh này, và nhiệm vụ cụ thể của tôi là gì. Tôi tự hỏi tại sao cuộc đời mình lại không có tác dụng và cần phải thực hiện những thay đổi sâu sắc nào để giúp mình đi đúng hướng. Tôi xem xét những niềm tin cốt lõi, những giả định, và những lăng kính mà mình nhìn ra thế giới, và tôi tự cam kết làm sạch những lăng kính không lành mạnh.”\r\n\r\n“Cuốn sách này là một tác phẩm hư cấu. Đây là câu chuyện về một người đàn ông có tên Jack Valentine mà đường đời có nhiều điểm giống với tôi. Có cảm nhận rất không đầy đủ với tư cách một con người, anh ấy lên kế hoạch tìm kiếm tri thức để sống một cuộc sống hạnh phúc hơn, khoẻ khoắn hơn và đẹp hơn.”\r\n\r\nNhững “Câu hỏi cuối cùng” là một điều kì lạ mà Jack nghe được từ người bệnh nhân già nằm cùng phòng với anh – ông Cal. Chỉ sau một buổi tối trò chuyện cùng ông, Jack đã nhận thấy những sự thay đổi đang diễn ra trong mình. Và từ đây, chuyến hành trình đến Rome, Hawaii và New York cùng những khám phá mới mẻ mà anh học được từ ba người thầy vĩ đại trong cuộc đời đã giúp anh trả lời được ba câu hỏi mà cha anh – Cal Valentine đã nói trước khi ông qua đời:\r\n\r\n– Ta đã SỐNG một cách KHÔN NGOAN chưa?\r\n\r\n– Ta đã YÊU THƯƠNG chưa?\r\n\r\n– Ta đã CỐNG HIẾN thật nhiều chưa?’\r\n\r\nCuốn sổ mà cha Mike – người thầy đầu tiên ở Rome đưa cho Jack đã đúc kết 10 điều mà anh đã học được trong suốt cuộc hành trình:\r\n\r\n1. Công việc chính của mọi con người là công việc nội tâm.\r\n\r\n2. Hãy xem cuộc sống của mình như một trường học dạy cách trưởng thành.\r\n\r\n3. Hãy thành thật với chính mình – cuộc sống tốt đẹp nhất là cuộc sống chân thật.\r\n\r\n4. Hãy nhớ rằng chúng ta thu nhận những gì chúng ta phát ra.\r\n\r\n5. Chúng ta nhìn nhận thế giới không như chính nó mà như chúng ta nghĩ.\r\n\r\n6. Hãy sống bằng trái tim của ban – tri thức của nó không bao giờ nói dối.\r\n\r\n7. Hãy đắm mình trong sự tò mò của cuộc đời bạn.\r\n\r\n8. Hãy chăm lo cho chính bạn.\r\n\r\n9. Hãy xây dựng những kết nối của con người.\r\n\r\n10. Hãy để lại một di sản.', NULL, NULL, 0, 0, 0, NULL, '2024-01-30 03:01:22'),
(21, 'Kinh Tế Học Vi Mô (2020)', 290000, 5, '9786043026542_1.jpg', 50, 35, 18, 14, 14, '23 5 x 15.5 x 2.5 cm', 'Bìa Mềm', 555, 2147483647, 'hhh', 'NXB Cengage Learning là một trong những Nhà xuất bản lớn hàng đầu trên thế giới có trụ sở chính tại Mỹ và tại khu vực Châu Á có 11 trụ sở tại các nước khác nhau, cung cấp các thể loại sách phục vụ cho việc học tập, giảng dạy và nghiên cứu cho các cá nhân, các trường đại học, cao đẳng, viện nghiên cứu, các doanh nghiệp và thư viện trên toàn thế giới.\r\n\r\nTheo xu hướng đổi mới cơ bản và toàn diện giáo dục Đại học Việt Nam hiện nay và phục vụ cho đề án quốc tế hóa các chương trình đào tạo kinh tế sang hướng tiên tiến để nhanh chóng ngang bằng trình độ khu vực và tiệm cận với giáo dục đại học trên thế giới, một trong những đổi mới để phù hợp với xu thế này là lựa chọn các giáo trình tốt nhất của các NXB nổi tiếng trên thế giới để chuyển ngữ sang tiếng Việt nhằm phục vụ cho việc học của sinh viên được dể dàng hơn, Công ty Cổ phần phát hành sách Tp.HCM – FAHASA đã phối hợp với NXB NXB Cengage Learning và đội ngũ giảng viên khoa Kinh tế Trường Đại học Kinh tế TP.HCM – một trong 16 trường trọng điểm của Bộ Giáo dục và Đào tạo - tổ chức dịch quyển Kinh tế họccủa Tác giả N.Gregory Mankiw cho hai phiên bản Kinh tế học vi mô và Kinh tế học vĩ mô ra Tiếng Việt để phục vụ cho việc học tập và nghiên cứu của giảng viên và sinh viên khoa Kinh tế của các Trường Đại học trên cả nước. Sau khi được biên dịch bởi đội ngủ giảng viên Trường ĐH Kinh tế Tp.HCM, NXB Cengage đã tổ chức biên tập và in ấn tại Singapore, bản quyền của 2 quyển sách này thuộc NXB Cengage Learning sách do Công ty FAHASA nhập khẩu và phân phối độc quyền tại Việt Nam.\r\n\r\nN.Gregory Mankiw là giáo sư kinh tế Đại học Harvard. Ông có rất nhiều bài viết và thường xuyên tham gia các chương trình tranh luận về học thuật cũng như các chính sách về kinh tế. Là một trong 25 Nhà kinh tế học nổi tiếng trên thế giới và sách Kinh tế họccủa ông đã và đang được nhiều trường Đại học trên thế giới sử dụng. Ông cũng là tác giả của giáo trình Kinh tế Vĩ mô trình độ trung cấp bán chạy nhất (Nhà xuất bản Worth). Bên cạnh việc giảng dạy, nghiên cứu và viết lách, Giáo sư Mankiw còn là thành viên nghiên cứu của Ban Nghiên cứu Kinh tế Quốc gia, thành viên tư vấn cho Văn phòng Ngân sách Quốc hội, Cục Dự trữ Liên bang khu vực Boston và New York, thành viên Hội đồng phát triển khảo thí ETS - chương trình dự bị đại học nâng cao chuyên ngành kinh tế. Từ 2003 đến 2005 ông là chủ tịch Hội đồng Tư vấn Kinh tế cho Tổng thống Hoa Kỳ.\r\n\r\nĐây là lần đầu tiên cuốn sách Kinh tế học của Tác giả N.Gregory Mankiw được dịch sang Tiếng Việt và phát hành tại Việt Nam. Về nội dung 2 cuốn sách, với các khái niệm phổ biến và khái quát nhất về kinh tế vi mô và vĩ mô cũng như những giải thích về các cơ chế hoạt động của nền kinh tế, bộ giáo trình bao gồm 16 phần cung cấp cho người đọc các kiến thức khá toàn diện và chuyên sâu về các nguyên lý kinh tế học như các lý thuyết cổ điển, các lý thuyết về phát triển: nền kinh tế trong dài hạn, các lý thuyết về vòng tròn kinh tế: nền kinh tế trong ngắn hạn, các yếu tố vi mô ẩn sau kinh tế vĩ mô, các tranh luận về chính sách vĩ mô… Tất cả đều được giải thích và đánh giá bởi một vị giáo sư kinh tế hàng đầu trên thế giới. Các khái niệm trong sách được định nghĩa rất rõ ràng, dễ nắm bắt, dễ hiểu, có tóm tắt các chương tạo điều kiện tốt nhất cho việc ôn tập. Các ví dụ sinh động, gắn liền với thực tế, có độ cập nhật phù hợp với đề cương giảng dạy kinh tế học không chỉ của Trường Đại học Kinh tế TP.HCM mà cả các trường đại học khác tại Việt Nam trong khối kinh tế và quản trị. Ngoài ra bộ giáo trình này còn có ngân hàng câu hỏi trắc nghiệm, phần tóm tắt bài giảng và phẩn trình chiếu Power point cho từng chương, phục vụ tốt cho việc thực hành và giảng dạy của sinh viên và giảng viên. Hy vọng bộ giáo trình Kinh tế học vi mô và Kinh tế học vĩ mô của N.Gregory Mankiw bản tiếng Việt sẽ cung cấp cho giảng viên và sinh viên Việt Nam những tài liệu kinh tế hiệu quả và hiện đại nhằm phục vụ cho công tác giảng dạy và học tập được tốt hơn.\r\n\r\nBộ sách Kinh tế Vi mô và Kinh tế Vĩ mô sẽ là sự lựa chọn đúng đắn cho khoa Kinh tế của các trường Đại học tại Việt Nam.', NULL, NULL, 1, 0, 0, NULL, '2024-04-10 09:30:06'),
(22, 'Phương Pháp Dạy Con Không Đòn Roi', 109000, 25, 'phuongphapdayconkhongdonroi.jpg', 50, 37, 19, 12, 7, '13 x 20.5 cm', 'Bìa Mềm', 376, 2147483647, 'vv', 'Tóm tắt nội dung:\r\n\r\nCó bao giờ bạn tự hỏi mình, đặc biệt là sau mỗi cuộc đối thoại tuyệt vọng với bọn trẻ, “Mình không thể làm tốt hơn được sao? Mình không thể cư xử đúng mực hơn và là một người cha mẹ có sức ảnh hưởng hơn ư? Mình không thể kỷ luật chúng theo hướng làm dịu tình hình đi thay vì làm rối lên?” Bạn muốn loại bỏ những hành vi không tốt, nhưng bạn muốn phản ứng theo cách sẽ nâng giá trị và thắt chặt tình cảm với bọn trẻ chứ không phải điều ngược lại. Bạn muốn ít rắc rối đi, chứ không nhiều hơn. Cuốn sách này sẽ giúp bạn có thể kỷ luật trẻ theo hướng đề cao mối quan hệ và sự tôn trọng, bớt rắc rối và tranh cãi – và trong quá trình, bạn có thể bồi dưỡng những kỹ năng xây dựng mối quan hệ tốt và cải thiện khả năng đưa ra quyết định đúng đắn của bọn trẻ, biết suy nghĩ đến người khác, và chuẩn bị hành trang cho chúng được hạnh phúc và thành công suốt cuộc đời.\r\n\r\nTrích dẫn hay trong sách:\r\n\r\nMối quan hệ với con cái luôn là trung tâm cho mọi thứ chúng ta làm. Bất kể ta đang chơi với chúng, nói chuyện hay cười cùng với chúng, hoặc thậm chí kỷ luật chúng, ta cũng muốn bọn trẻ cảm nhận được mức độ sâu sắc của toàn bộ tình yêu thương và thiện ý của chúng ta, dù chúng ta đang công nhận một hành động tử tế hay chỉ ra hành vi sai trái.', NULL, NULL, 0, 0, 0, NULL, NULL),
(23, 'Những Câu Chuyện Về Lòng Nhân Ái (2017)', 18000, 15, 'nhungcauchuyenvelongnhanai.jpg', 50, 37, 20, 3, 3, '12.5x20 cm', 'Bìa Mềm', 52, 2147483647, 'hh', '123456', NULL, NULL, 0, 0, 0, NULL, NULL),
(24, 'Pokémon - Cuộc Phiêu Lưu Của Pippi RS (Ruby - Sapphire) - Tập 6', 22000, 5, 'pokemon---cuoc-phieu-luu-cua-pippi-rs-tap-6.jpg', 50, 38, 21, 6, 15, '17.6 x 11.3 cm', 'Bìa Mềm', 192, 2147483647, 'vv', '“Ông tổ” series truyện hài “Pokémon – Cuộc phiêu lưu của Pippi” tiếp tục cho ra mắt tập 6 với sức công phá (?) vô biên!! Theo tình hình này, có lẽ chàng mập của chúng ta sẽ thống trị cả thế giới thể thao lẫn nghệ thuật mất!? Bởi từ Sumo đến Golf, khiêng kiệu, nhảy múa hay hát hò thì Pokémon Pippi của chúng ta đều “cân” được tất tật!! Nên hôm nay sẽ tiếp tục là một ngày bận rộn với cậu chăng!!?', NULL, NULL, 0, 0, 0, NULL, NULL),
(25, 'Who? Chuyện Kể Về Danh Nhân Thế Giới: Leonardo Da Vinci (Tái Bản 2020)', 56000, 13, 'image_195509_1_34210.jpg', 50, 38, 22, 6, 15, '20.5 x 14.5 cm', 'Bìa Mềm', 160, 2147483647, 'vv', 'Leonardo da Vinci, thiên tài toàn năng, một trong những đại diện xuất sắc nhất của nghệ thuật và khoa học thời Phục Hưng. Không chỉ là tác giả của những tuyệt phẩm được ngợi ca là nổi tiếng nhất mọi thời đại như “Mona Lisa”, “Bữa ăn tối cuối cùng”…, Leonardo còn xuất sắc ở nhiều lĩnh vực khác như khoa học, triết học, sinh vật học, kiến trúc. Cho đến nay con người và tài năng xuất chúng của Leonardo vẫn là nguồn cảm hứng sáng tác, nghiên cứu của các nghệ sĩ. Nhà khoa học ở mọi lĩnh vực trên thế giới.\r\n\r\n“Tôi muốn biết về mọi thứ trên thế gian này, và khi đã biết thêm một điều, tôi càng muốn biết thêm nhiều hơn nữa!”\r\n\r\nBộ tranh truyện WHO? người bạn thân thiết của thiếu nhi.\r\n\r\nNhững câu chuyện về cuộc đời và sự nghiệp vĩ đại của các danh nhân sẽ đem đến cho các em những ước mơ và hoài bão cao đẹp!', NULL, NULL, 1, 0, 0, NULL, '2024-04-13 16:54:27'),
(26, 'Lật Mở Khám Phá Thế Giới Tự Nhiên - Dưới Biển Có Gì Nhỉ?', 168000, 20, 'qqqqqqqqqqq.jpg', 49, 38, 23, 15, 16, '18.6 x 28.6 cm', 'Bìa Mềm', 14, 2147483647, 'vv', 'Tất tần tật các loài sinh vật biển điển hình dưới lòng đại dương với rất nhiều kích cỡ và hình dạng, cùng những cái tên song ngữ Việt - Anh sẽ được thể hiện một cách ngắn gọn nhưng chi tiết qua những miếng lật mở thú vị.\r\n\r\nChúng mình hãy cùng Lift-the-flap nature - Lật mở khám phá thế giới tự nhiên tìm hiểu về thế giới tuyệt diệu bên dưới những con sóng nhé!', NULL, NULL, 4, 0, 0, NULL, '2024-04-10 13:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`id`, `name`) VALUES
(1, 'Trác Nhã'),
(2, 'Mario Puzo'),
(3, 'Tony Buổi Sáng'),
(6, 'Philip Kotler, Hermawan Kartajaya, Iwan Setiawan'),
(7, 'Urako Kanamori'),
(8, 'DK'),
(9, 'Nhiều Tác Giả'),
(10, 'Mai Lan Hương, Hà Thanh UYên'),
(11, 'Paulo Coelho'),
(12, 'Jeffrey Archer'),
(13, 'Lê Đỗ Quỳnh Hương'),
(14, 'Hàn Long Ẩn'),
(15, 'Hector Malot'),
(16, 'Jim Collins'),
(17, 'Robin Sharma'),
(18, 'NGregory Mankiw'),
(19, 'Daniel J. Siegel & Tina Payne Bryson'),
(20, 'Bich Ha'),
(21, 'Kosaku Anakubo'),
(22, 'Choe, Byeongkuk, Ahn, Hyung'),
(23, 'Libby Walden, Stephanie Fizer ');

-- --------------------------------------------------------

--
-- Table structure for table `thich`
--

CREATE TABLE `thich` (
  `id` int(11) NOT NULL,
  `users_id` int(16) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thich`
--

INSERT INTO `thich` (`id`, `users_id`, `id_product`) VALUES
(2, 1, 5),
(3, 1, 10),
(4, 1, 6),
(5, 1, 9),
(6, 7, 14),
(7, 7, 10),
(8, 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(16) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'long123', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Thành Long', '', '0364091563', 'An Giang', 'img_avatar1.png', 1, NULL, '2024-01-04 16:05:32'),
(2, 'nhanvien1', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Thành Long', '', '0364091563', 'An Giang', 'admin.png', 1, NULL, '2024-01-04 16:05:32'),
(3, 'khachhang2', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Long', '', '0364091563', 'An Giang', 'OIP.jfif', 1, NULL, '2024-01-04 16:05:32'),
(4, 'khachhang3', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Long', '', '0364091563', 'An Giang', 'img_avatar1.png', 1, NULL, '2024-01-04 16:05:32'),
(5, 'khachhang4', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Long', '', '0364091563', 'An Giang', 'admin.png', 1, NULL, '2024-01-04 16:05:32'),
(6, 'khachhang5', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyen Long', '', '0364091563', 'An Giang', 'img_avatar1.png', 1, NULL, '2024-01-04 16:05:32'),
(7, 'phongpi', 'e10adc3949ba59abbe56e057f20f883e', 'Lâm Hồng Phong', '', '039637135', 'số 22,24 đường số 1, khóm Đông Thịnh 8, P. Mỹ Phước , TPLX, AG', 'OIP.jfif', 1, NULL, '2024-01-23 06:25:06'),
(8, 'C2200006', 'e10adc3949ba59abbe56e057f20f883e', 'Long Nguyen', 'test@gmail.com', '0364091564', '22/6 My An, My Luong, Cho Moi, An Giang', NULL, 1, NULL, NULL),
(4129840, '', NULL, 'Long Nguyen', NULL, NULL, NULL, NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cotyphathanh`
--
ALTER TABLE `cotyphathanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cthd`
--
ALTER TABLE `cthd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd`
--
ALTER TABLE `hd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homgopy`
--
ALTER TABLE `homgopy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanxet`
--
ALTER TABLE `nhanxet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nxb`
--
ALTER TABLE `nxb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thich`
--
ALTER TABLE `thich`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cotyphathanh`
--
ALTER TABLE `cotyphathanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cthd`
--
ALTER TABLE `cthd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `hd`
--
ALTER TABLE `hd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `homgopy`
--
ALTER TABLE `homgopy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nhanxet`
--
ALTER TABLE `nhanxet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nxb`
--
ALTER TABLE `nxb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `thich`
--
ALTER TABLE `thich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
