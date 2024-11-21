-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2024 at 06:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`) VALUES
(1, 'Chính Trị', 'chinh-tri', 0),
(2, 'Kinh Doanh', 'kinh-doanh', 0),
(3, 'Giáo dục', 'giao-duc', 0),
(4, 'Thể Thao', 'the-thao', 0),
(5, 'Trong nước', 'trong-nuoc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `created_at`, `updated_at`, `author`) VALUES
(1, 'Hai người chết do bão Etau', 'Sạt lở đất vùi lấp một phụ nữ ở Quảng Nam, một người khác ở Bình Định bị ngã trong lúc chằng chống nhà cửa phòng bão Etau.', 'Sáng 10/11, hàng chục m3 đất đá bị sạt trôi, vùi lấp ngôi nhà bà Nguyễn Thị Nga, 45 tuổi, ở xã Tam Lãnh, huyện Phú Ninh, tỉnh Quảng Nam. Chính quyền đã huy động người đào bới, nhưng khi tìm thấy nạn nhân đã không qua khỏi.\r\n\r\nCung trong sáng 10/11, ông Trương Văn Liêm, 57 tuổi, ở phường Tam Quan Nam, thị xã Hoài Nhơn, tỉnh Bình Định trong lúc chằng chống nhà cửa chống bão thì bị ngã và tử vong sau đó.\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2020/11/10/Xua-n-Ngo-c-Nha-Trang-1-160499-2670-8620-1605010617.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=qA38j0vYvRF4-ngVjUxtHA\" alt=\"\">\r\nBan chỉ đạo Trung ương về Phòng chống thiên tai cho hay, bão Etau đổ bộ trưa 10/11 khiến 31 ngôi nhà tốc mái, hư hỏng. Tàu SE2 hành trình từ Nam ra Bắc phải tạm dừng ở Khánh Hòa do đường sắt bị ngập. Quốc lộ 19C đoạn qua xã Xuân Long, huyện Đồng Xuân, tỉnh Phú Yên, ngập gần một mét, gây ách tắc. Một tàu cá bị chìm khi neo đậu tại Khánh Hòa.\r\n\r\nTheo Trung tâm Dự báo Khí tượng Thủy văn quốc gia, do ảnh hưởng của hoàn lưu bão Etau, ngày 11-12/11, các tỉnh từ Quảng Trị đến Khánh Hòa mưa 200-400 mm; các tỉnh Quảng Bình, Nam Khánh Hòa và Tây Nguyên mưa 100-200 mm. Lũ các sông từ Quảng Ngãi đến Khánh Hòa đang lên, lũ sông Vệ tại Quảng Ngãi vượt mức báo động 3 (mức cao nhất) là 0,05 m.\r\n\r\nBão Etau đổ bộ vào Phú Yên - Khánh Hòa mang theo mưa gió cấp 7. Đây là cơn bão thứ hai kể từ đầu tháng 11 đi vào Việt Nam. Trước đó trong tháng 10, miền Trung hứng chịu 4 cơn bão và một áp thấp nhiệt đới. Ba đợt lũ cùng 13 vụ lở núi trong tháng qua làm 159 người chết, 71 người khác mất tích.\r\n\r\nHiện ở phía Đông Philippines, cơn bão Vamco mạnh cấp 8-9, dự báo ngày 12/11 sẽ vào Biển Đông với cường độ cấp 12.\r\n\r\n', 'Xua-n-Ngo-c-Nha-Trang-1-160499-2670-8620-1605010617.jpg', 5, 1, 500, '2024-10-24 08:21:05', '2024-10-24 08:21:05', 'Tất Định'),
(2, 'Bão Etau gây thiệt hại cho Phú Yên, Khánh Hòa', 'Bão Etau suy yếu thành áp thấp nhiệt đới khi vào Khánh Hòa - Phú Yên, nhưng làm nhiều nhà tốc mái, cây đổ, ngập lụt.', '10h sáng nay, bão Etau đã suy yếu thành thấp nhiệt đới khi vào đất liền Nam Trung Bộ với sức gió mạnh nhất 60 km/h, cấp 7, giật cấp 9. Tâm áp thấp sau đó lên Tây Nguyên với sức gió dưới 40 km/h.\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2020/11/10/Bao-Etau-thanh-ap-thap-nhiet-d-7294-4747-1604990818.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=_IXHajX8iWxiwshdMwVKFg\" alt=\"\">\r\n\r\nSo với bão Molave càn quét Quảng Ngãi - Quảng Nam hôm 28/10, Etau được dự báo yếu hơn 4-5 cấp. Song, từ chiều qua, bão Etau đã gây mưa lớn ở các tỉnh Bình Định, Phú Yên, Khánh Hòa, Ninh Thuận. Các tỉnh này đã di dời hàng nghìn người ở vùng trũng thấp, vùng có nguy cơ sạt lở đến nơi an toàn.\r\n\r\nRiêng Khánh Hòa và Phú Yên, hai tỉnh được dự báo nằm trong tâm bão đã sơ tán hơn 10.000 người ở vùng nguy hiểm và yêu cầu 12.000 người trên các lồng bè vào bờ. Trong đó, 220 người ở xã Vạn Lương, huyện Vạn Ninh, Khánh Hòa phải di dời do hồ Hoa Sơn xả lũ. Cáp treo Vinpearl bị dừng hoạt động từ 21h.\r\n\r\nTừ 0h ngày 10/11, đảo Lý Sơn (Quảng Ngãi) và thị xã An Nhơn (Bình Định) đã có gió cấp 7, giật cấp 9. Gió bắt đầu rít mạnh ở các tỉnh Phú Yên và Khánh Hòa từ 7h sáng nay.\r\n8h, gió mạnh thổi bay mái tôn của quán hải sản trên đại lộ Nguyễn Tất Thành, phường Phước Long, TP Nha Trang, Khánh Hòa. Lúc đó, trong quán không có người, ở căn nhà bên cạnh, anh Phạm Ngọc Việt, 25 tuổi, cùng một đàn ông, hai phụ nữ đang chằng chống mái tôn. \"Sự việc diễn ra rất nhanh, chưa đầy 5 phút. Chúng tôi liền chạy vào trong tránh trú\", anh Việt nói.\r\n\r\nCạnh nhà anh Việt, cụ bà 97 tuổi ở gần đó bị nước tràn vào khiến nhiều đồ đạc, máy móc hư hỏng. Cụ bà được người thân chuyển đến nơi khác.\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2020/11/10/60e0dfdf1371ed2fb460-7318-1604-6072-4643-1604990818.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=2Ja_e8V6QaDaKdp9bJclag\" alt=\"\">\r\n\r\n\r\nCác tuyến đường ở TP Nha Trang vắng người, gió rít dữ dội, kèm theo mưa lớn, nhiều cây xanh, biển hiệu đổ. Nhiều người đi xe máy trên đường Lê Thánh Tôn - Nguyễn Thiện Thuật bị gió quật ngã. Họ phải vào khách sạn gần đó ẩn trú. Một số dân quân cũng được huy động giúp đỡ người đi đường.\r\n\r\nỞ Cửa Bé, phường Vĩnh Tường, tàu cá của ông Dương Thành Đồng đang neo đậu thì bị sóng đánh chìm.\r\n\r\nMưa lớn kéo dài làm khu vực đường sắt qua huyện Vạn Ninh bị ngập nặng. Tàu SE2 di chuyển theo hướng từ Nam ra Bắc phải tạm dừng. Toàn bộ 168 hành khánh, 23 nhân viên và hai lái tàu ở trên tàu.\r\n\r\nTheo Ban chỉ huy Phòng chống thiên tai và Tìm kiếm cứu nạn tỉnh Khánh Hòa, tính đến 10h, bão Etau làm 16 nhà tốc mái, trong đó nặng nhất là thị xã Ninh Hòa với 15 nhà, 2 trụ sở ở huyện này bị hư hỏng. 3 nhà màng công nghệ cao ở huyện Cam Lâm bị sập, hư hỏng. Quốc lộ 27C bị sạt rãnh thoát nước. Huyện Khánh Vĩnh mất điện hoàn toàn, huyện Vạn Ninh và thị xã Ninh Hòa mất điện một số nơi.\r\n\r\nTại Phú Yên, sóng biển dữ dội ập vào bờ biển thị xã Đông Hòa, giáp Khánh Hòa, kèm theo mưa lớn và gió rít. Ông Võ Đình Tiến, Chủ tịch UBND thị xã Đông Hòa cho biết, một số phường ở thị xã đã bị cắt điện.\r\n\r\nNước lên rất nhanh do mưa lớn khiến nhiều khu dân cư ở Đông Hòa bị ngập. Ở đoạn đường gần ga Hảo Sơn, xã Hòa Xuân Nam, nước ngập khiến xe tải bị lật xuống chỗ trũng. Tài xế Nguyễn Trần Huy Hoàng (quê Đà Lạt) bị gãy chân.\r\n\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2020/11/10/b11d10b4a31a5d44040b-1-2044-16-9956-1986-1604990818.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=ECwxuHHAsrfWKCJEcxqJxA\" alt=\"\">\r\n\r\nCác huyện Tây Hòa, thị xã Sông Cầu cũng ngập lụt nhiều nơi.\r\n\r\nTrong khi đó, tại TP Tuy Hòa, một số khu vực bị cắt điện như Chợ Hầm nước, đường Nguyễn Tất Thành... Nhiều nơi người dân không dùng được mạng 4G. Mưa quá nhiều khiến nước trên đường Mậu Thân, phường 9 (đoạn gần chùa Hồ Sơn) không rút kịp.\r\n\r\nBan chỉ huy Phòng chống thiên tai tỉnh Phú Yên cho biết, bão Etau làm một người bị thương do xe máy tự lật xuống taluy; 3 nhà bị sập, hư hỏng; một nhà bị tốc mái.\r\n\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2020/11/10/cay-nga-8576-1604975646-3021-1604990818.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=5KZDQmSl0xmbLNMkQaHpLw\" alt=\"\">\r\n\r\nTuyến quốc lộ 29 tại tràn xã Đức Bình Đông, huyện Sông Hinh, nước ngập 0,5 m gây ách tắc giao thông Hiện Sở Giao thông vận tải tổ chức khơi thông hệ thống thoát nước; phối hợp với các địa phương ứng trực, rào chắn, cắm biển báo hiệu cấm các xe qua lại tại các vị trí bị ngập lụt.\r\n\r\nNgoài ra, 64/110 xã ở Phú Yên bị cúp điện. Ngành điện đang huy động lực lượng tập trung, khắc phục.\r\n<img src=\"https://vnexpress.net/bao-etau-do-bo-khanh-hoa-phu-yen-4189326-tong-thuat.html#lg=gallery_1&slide=4\" alt=\"\">\r\n\r\nSau khi bão Etau đổ bộ, cơ quan Dự báo Khí tượng thủy văn Quốc gia tiếp tục cảnh báo mưa lớn, nước sông dâng cao, nguy cơ sạt lở các bốn tỉnh Quảng Ngãi, Bình Định, Khánh Hòa, Phú Yên...\r\n\r\nEtau là cơn bão thứ 12 vào Biển Đông trong năm nay. Trước đó, trong tháng 10, miền Trung hứng chịu bốn cơn bão và một áp thấp nhiệt đới. Ba đợt lũ cùng 13 vụ lở núi trong tháng qua làm 159 người chết, 71 người khác đang mất tích. Hai cơn bão đầu tháng 11 bị suy yếu thành áp thấp nhiệt đới, nhưng gây mưa to, ngập lụt, sạt lở nhiều tỉnh thành miền Trung.\r\n\r\nSau bão Etau, bão số 13 - Vamco đang mạnh lên trên biển Đông và dự kiến đổ bộ vào miền Trung sáng 15/11, với sức gió 111 km/h, cấp 11.', 'Bao-Etau-thanh-ap-thap-nhiet-d-7294-4747-1604990818.jpg\r\n', 5, 1, 600, '2024-10-24 08:21:05', '2024-10-24 08:21:05', 'Xuân Ngọc - Phạm Linh - Việt Quốc'),
(6, 'Hyundai Thành Công đồng hành với giải chạy đêm Hà Nội', 'Hyundai Thành Công sẽ mang đến sự kiện hai mẫu ôtô Hyundai Santa Fe và Hyundai Custin, cùng nhiều hoạt động tại gian hàng.', 'Giải chạy đêm Hà Nội 2024 diễn ra ngày 24/11, có tên gọi VnExpress Marathon Hanoi Midnight 2024 Hyundai Thanh Cong Cup. Với mong muốn mang đến cho cộng đồng những trải nghiệm mới, hữu ích, thương hiệu này sẽ trưng bày tại expo hai mẫu ôtô Hyundai Santa Fe và Hyundai Custin.\r\n\r\nSanta Fe là mẫu D-SUV 7 chỗ, đã nhận giải quốc tế về thiết kế và sản phẩm Red Dot 2024, iF Design Award 2024. Trong khi đó, sản phẩm Custin ra mắt hồi tháng 9 năm ngoái, với nội thất lấy cảm hứng từ phi thuyền không gian, hướng đến sự thoải mái và tiện nghi.\r\n\r\nNgoài ra, Hyundai Thành Công Việt Nam sẽ tổ chức nhiều hoạt động minigame, tặng quà và ưu đãi dành riêng cho runner tham dự giải tại gian hàng.\r\n\r\nChia sẻ về việc đồng hành với giải đấu, đại diện công ty Cổ phần Liên doanh Ô tô Hyundai Thành Công Việt Nam cho biết muốn mang những công nghệ mới, tinh thần trẻ trung, hiện đại trong các sản phẩm đến gần hơn với cộng đồng runner nói riêng và toàn bộ khách hàng nói chung.\r\n\r\n<img src=\"https://i1-thethao.vnecdn.net/2024/10/24/462545638-1244455296696795-203-3757-2158-1729755913.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=JWFmppDfcXFTYcFPMEPDMg\" alt=\"\">\r\n\r\nVnExpress Marathon Hanoi Midnight mùa giải thứ ba diễn ra vào thời điểm Hà Nội đầu đông, là điều kiện lý tưởng để runner cải thiện thách tích, lập kỷ lục cá nhân. Ban tổ chức đã thực hiện nhiều thay đổi về cung đường và công tác vận hành nhằm mang đến trải nghiệm tốt nhất cho người tham gia.\r\n\r\nNăm nay, một điểm đặc biệt là khu vực xuất phát và về đích không nằm ở hồ Hoàn Kiếm. Khu vực xuất phát, về đích tại phố đi bộ Trần Nhân Tông, công viên Thống Nhất. Việc thay đổi này giúp runner có trải nghiệm mới đồng thời hạn chế ảnh hưởng đến thời gian nghỉ ngơi của người dân khu vực nội thành.\r\n\r\nVận động viên tham dự sẽ có cơ hội khám phá Hà Nội về đêm qua các địa danh nổi tiếng như phố Tràng Tiền, Lăng Chủ tịch Hồ Chí Minh, hồ Tây, Cột cờ Hà Nội, Nhà hát lớn. VnExpress Marathon Hanoi Midnight 2024 Hyundai Thanh Cong Cup được UBND thành phố Hà Nội chọn là sự kiện văn hóa, thể thao tiêu biểu giai đoạn 2023 - 2025. Hà Nội cũng đề xuất phát triển VnExpress Marathon thành thương hiệu của Thủ đô.\r\n\r\n', '462545638-1244455296696795-203-3757-2158-1729755913.jpg', 4, 1, 1000, '2024-10-24 08:26:53', '2024-10-24 08:26:53', 'Lan Anh'),
(7, 'Quốc hội thảo luận phân phối kinh phí công đoàn', 'Ngày 24/10, Quốc hội thảo luận hội trường về dự án Luật Công đoàn sửa đổi, trong đó có chính sách về tài chính công đoàn, phân phối kinh phí công đoàn.', 'Tại kỳ họp trước, một số đại biểu chưa đồng tình với mức kinh phí công đoàn 2% và đề nghị kinh phí công đoàn do tổ chức, doanh nghiệp ngoài nhà nước đóng theo mức tự nguyện. Có đại biểu cho rằng nên xem xét giảm hoặc bỏ thu kinh phí công đoàn 2% đối với đơn vị đã có tổ chức đại diện của người lao động khác.\r\n\r\nBáo cáo giải trình, Thường vụ Quốc hội cho rằng việc tiếp tục thu 2% kinh phí công đoàn nhằm duy trì nguồn lực hiện có, giữ vai trò quan trọng, có ý nghĩa quyết định trong việc bảo đảm nguồn tài chính để Công đoàn Việt Nam, nhất là công đoàn cơ sở thực hiện nhiệm vụ. Đó là nguồn lực chăm lo phúc lợi xã hội, bảo vệ quyền, lợi ích hợp pháp, chính đáng của đoàn viên, người lao động; động viên, khích lệ người lao động gắn bó với đơn vị và cũng thúc đẩy doanh nghiệp có trách nhiệm hơn với người lao động của mình.\r\n\r\nTiếp thu ý kiến đại biểu, dự thảo Luật đã bổ sung một số nhiệm vụ chi mới để phù hợp với thực tiễn như: Chi cho công đoàn cơ sở khó khăn được miễn, giảm đóng kinh phí công đoàn; chi cho việc xây dựng nhà ở xã hội cho công nhân thuê; xây dựng công trình công cộng cho đoàn viên, người lao động.\r\n\r\nBên cạnh đó, kinh phí công đoàn chiếm tỷ trọng nhỏ trong chi phí của doanh nghiệp (khoảng 0,38%). \"Do đó, vấn đề 2% kinh phí công đoàn không phải là gánh nặng cho doanh nghiệp và đề nghị giữ quy định về mức kinh phí công đoàn 2%\", báo cáo nêu<img src=\"https://i1-vnexpress.vnecdn.net/2024/10/24/VNE3799-7588-1729726105.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=DBO9UXfqwjATPDHAZJR93g\" alt=\"\">.Một số đại biểu đề nghị cân nhắc không quy định cứng tỷ lệ phân phối kinh phí công đoàn trong dự luật mà theo hướng quy định tỷ lệ tối đa và tối thiểu nhằm bảo đảm linh hoạt trong việc điều tiết kinh phí công đoàn.\r\n\r\nCó ý kiến đề nghị nghiên cứu bổ sung quy định mang tính nguyên tắc trong quản lý, sử dụng tài chính công đoàn bảo đảm công khai, minh bạch; quy định rõ nội dung phân bổ nguồn kinh phí công đoàn cho những mục tiêu, hoạt động của công đoàn để làm cơ sở cho việc công khai tài chính.\r\n\r\nTiếp thu ý kiến đại biểu, Thường vụ Quốc hội chỉnh lý, bổ sung quy định về nguyên tắc quản lý, sử dụng tài chính công đoàn, rà soát nhiệm vụ chi kinh phí công đoàn đầy đủ hơn. Dự thảo cũng không quy định việc phân phối kinh phí công đoàn khi có nhiều tổ chức đại diện của người lao động để bảo đảm linh hoạt, hài hòa.\r\n\r\nSau khi thống nhất với Chính phủ, Tổng Liên đoàn Lao động Việt Nam quy định tiêu chuẩn, định mức, chế độ chi tiêu, phân cấp thu, phân phối và quản lý, sử dụng tài chính công đoàn phù hợp với yêu cầu nhiệm vụ của công đoàn. Dự luật cũng giao Chính phủ quy định chi tiết việc quản lý, sử dụng kinh phí công đoàn của tổ chức của người lao động tại doanh nghiệp.\r\n\r\nSáng nay, Bộ trưởng Y tế trình Quốc hội dự án Luật sửa đổi, bổ sung một số điều của Luật Bảo hiểm y tế. Sau đó, các đại biểu thảo luận nội dung còn ý kiến khác nhau của dự thảo Luật Công đoàn (sửa đổi). Buổi chiều, Quốc hội chia tổ thảo luận về Dự án Luật sửa đổi, bổ sung một số điều của Luật Bảo hiểm y tế và Dự án Luật Dữ liệu.', 'VNE3799-7588-1729726105.jpg', 1, 0, 0, '2024-10-24 08:46:20', '2024-10-24 08:46:20', 'Sơn Hà'),
(8, 'El Salvador lãi hơn 100 triệu USD từ Bitcoin', 'Tiền số liên tiếp lập đỉnh gần đây giúp giá trị số Bitcoin El Salvador nắm giữ tăng hơn 130 triệu USD trong một tuần qua.', 'Số liệu mới nhất của chính phủ El Salvador cho thấy quốc gia này hiện sở hữu 5.933 Bitcoin, tương đương 533 triệu USD. Từ phiên 5/11 - thời điểm cuộc bầu cử Tổng thống Mỹ diễn ra, số Bitcoin của nước này đã tăng giá thêm 133 triệu USD.\r\n<img src=\"https://i1-kinhdoanh.vnecdn.net/2024/11/14/Screenshot-2024-11-14-105854-8665-1731557156.png?w=680&h=0&q=100&dpr=1&fit=crop&s=xcC89a6Bk7rRj3oevNm4wg\" alt=\"\">\r\nHiện tại, mỗi đồng được giao dịch tại 90.073 USD, tăng hơn 30% trong một tuần. Giá tiền số lớn nhất thế giới đã liên tiếp lập đỉnh sau khi ông Donald Trump đắc cử Tổng thống Mỹ. Nguyên nhân là trong chiến dịch tranh cử, Trump tuyên bố sẽ biến Mỹ thành \"thủ đô tiền số của hành tinh\" và lập kho dự trữ tiền số quốc gia với hơn 16 tỷ USD Bitcoin mà chính phủ Mỹ thu giữ được thời gian qua.\r\n\r\nTrên X hôm 11/12, Tổng thống El Salvador Nayib Bukele viết: \"Tôi đã nói rồi mà\". Bukele từng nhiều lần lên mạng xã hội để phản bác những người chỉ trích chiến lược cải tổ kinh tế nhờ Bitcoin của ông.\r\n\r\nEl Salvador hợp pháp hóa Bitcoin vào tháng 9/2021, trở thành nước đầu tiên trên thế giới áp dụng tiền số làm tiền tệ quốc gia. Việc này từng được kỳ vọng cải tổ kinh tế El Salvador, biến quốc gia nghèo tại Trung Mỹ thành nước tiên phong trong cách mạng tài chính. Dù vậy, động thái này khiến họ nhận sự chỉ trích từ hàng loạt tổ chức, trong đó có Quỹ Tiền tệ Quốc tế (IMF).\r\n<img src=\"https://i1-kinhdoanh.vnecdn.net/2024/11/14/nayib-2094-1731557156.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=1w4h_p9Agtf8YxaPCObyBw\" alt=\"\">\r\nĐầu tư vào Bitcoin không phải là sáng kiến thân thiện với tiền điện tử duy nhất của Tổng thống Bukele. Cuối năm 2021, Bukele còn công bố kế hoạch xây dựng \"Thành phố Bitcoin\" được tài trợ bằng trái phiếu Bitcoin.\r\n\r\nViệc đổ tiền mua Bitcoin, cùng hàng loạt hỗ trợ mạnh mẽ đối với tiền kỹ thuật số đã thúc đẩy ngành du lịch El Salvador. Tuy nhiên, động thái này cũng khiến giới chức quốc tế hoài nghi về tính minh bạch.\r\n\r\nNgoài việc mua, El Salvador còn tự đào tiền số và cũng nhận được nhiều bitcoin từ chương trình công dân. Theo đó, những người \"tặng\" Bitcoin cho chính phủ sẽ được chào mời cấp quyền công dân. Tổng thống Bukele không tiết lộ con số này. Ông cũng nhiều lần khẳng định sẽ không bán Bitcoin.', 'Screenshot-2024-11-14-105854-8665-1731557156.jpg\r\n', 2, 1, 500, '2024-11-14 07:11:40', '2024-11-14 07:11:40', 'Hà Thu (theo Reuters, Bitcoin Office)'),
(9, 'Cô chủ nhiệm đánh học trò bầm tím hai chân\r\n\r\n', 'Quảng Nam-Nam sinh lớp 6 trường THCS Lê Quý Đôn bị cô chủ nhiệm dùng thước đánh bầm tím hai chân, sau khi va chạm với bạn trong tiết thể dục.\r\n\r\n', 'Ông Nguyễn Hữu Sáu, Trưởng phòng giáo dục huyện Duy Xuyên, chiều 13/11, cho biết nữ giáo viên thừa nhận sự việc.\r\n\r\n\"Cô giáo đánh học sinh là không thể chấp nhận được\", ông nói, cho biết sau khi nhận được báo cáo cụ thể sẽ xem xét kỷ luật.\r\n\r\nTrưa nay, người nhà nam sinh đăng bài trên mạng xã hội, kèm hình ảnh hai chân bầm tím, thể hiện bức xúc. Theo gia đình, ban đầu em không chịu nói vì sợ bị hạ hạnh kiểm. Sau khi gia đình thuyết phục, nam sinh kể bị cô đánh sau giờ học thể dục cách đây hai ngày.\r\n\r\nTheo ông Lê Văn Tám, Hiệu trưởng trường THCS Lê Quý Đôn, sự việc xảy ra sau khi em và bạn đánh nhau. Ông nhìn nhận giáo viên đã nóng tính khi đánh học trò, nhẽ ra cô nên mời phụ huynh các em đến trao đổi. Cô này đã bị đình chỉ dạy để làm rõ.\r\n\r\n\"Cô thừa nhận dùng thước nhỏ đánh vào phần mềm chân học sinh\", ông Tám kể. Chiều nay, cô giáo và đại diện trường đã đến nhà hỏi thăm và cùng gia đình đưa học sinh đi khám. Trường cũng đề nghị gia đình gỡ bài đăng trên mạng xã hội để tránh các sự việc không hay với các bên.\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2024/11/13/a-1254-1731495564.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=wzIvg5rJo5-C_1Sy8dyuNg\" alt=\"\">\r\nLuật Giáo dục quy định giáo viên không được xúc phạm danh dự, thân thể của người học. Tùy mức độ, có bốn hình thức kỷ luật với họ nếu vi phạm, gồm khiển trách, cảnh cáo, cách chức và buộc thôi việc.', 'a-1254-1731495564.jpg', 3, 2, 500, '2024-11-14 07:17:13', '2024-11-14 07:17:13', 'Đắc Thành');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Trần Tuấn Kiệt'),
(2, 'Nguyễn Ngọc Ngạn'),
(3, 'Hồ Qúy Mi'),
(4, 'Lại Xuân Hiếu'),
(5, 'Văn Tam Trường');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
