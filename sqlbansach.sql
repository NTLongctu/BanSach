-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 02:29 PM
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
-- Database: `webbansach`
--
drop database webbansach;
create database webbansach;
use webbansach;


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



CREATE TABLE `category` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `cotyphathanh` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `cthd` (
  `id` int(11) NOT NULL,
  `id_hd` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `soluong` tinyint(4) DEFAULT NULL,
  `dongia` int(11) DEFAULT NULL,
  `thanhtien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



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



CREATE TABLE `homgopy` (
  `id` int(11) NOT NULL,
  `id_user` int(16) NOT NULL,
  `noidung` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `nhanxet` (
  `id` int(11) NOT NULL,
  `id_user` int(16) NOT NULL,
  `noidung` varchar(100) NOT NULL,
  `id_product` int(11) NOT NULL,
  `thoigian` datetime DEFAULT NULL,
  `diem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `nxb` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `id_hd` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



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
  `status` int(11) NOT NULL DEFAULT 0,
  `hot` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `product1` (
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


CREATE TABLE `tacgia` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `thich` (
  `id` int(11) NOT NULL,
  `users_id` int(16) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
-- Indexes for table `product1`
--
ALTER TABLE `product1`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `hd`
--
ALTER TABLE `hd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `homgopy`
--
ALTER TABLE `homgopy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nhanxet`
--
ALTER TABLE `nhanxet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nxb`
--
ALTER TABLE `nxb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- AUTO_INCREMENT for table `product1`
--
ALTER TABLE `product1`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

ALTER TABLE `cthd`
  ADD CONSTRAINT `fk_cthd_hd` FOREIGN KEY (`id_hd`) REFERENCES `hd` (`id`),
  ADD CONSTRAINT `fk_cthd_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);
ALTER TABLE `hd`
  ADD CONSTRAINT `fk_hd_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_hd_admin` FOREIGN KEY (`id_nhanvien`) REFERENCES `admin` (`id`);
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_hd` FOREIGN KEY (`id_hd`) REFERENCES `hd` (`id`),
  ADD CONSTRAINT `fk_payment_type` FOREIGN KEY (`id_type`) REFERENCES `payment_type` (`id`);

ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `fk_product_tacgia` FOREIGN KEY (`id_tacgia`) REFERENCES `tacgia` (`id`),
  ADD CONSTRAINT `fk_product_nxb` FOREIGN KEY (`id_nxb`) REFERENCES `nxb` (`id`),
  ADD CONSTRAINT `fk_product_cotyphathanh` FOREIGN KEY (`id_cotyphathanh`) REFERENCES `cotyphathanh` (`id`);

ALTER TABLE `nhanxet`
  ADD CONSTRAINT `fk_nhanxet_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_nhanxet_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

ALTER TABLE `thich`
  ADD CONSTRAINT `fk_thich_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_thich_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

