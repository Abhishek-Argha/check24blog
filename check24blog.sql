-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2021 at 05:02 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `check24blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `ID` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ID`, `title`, `description`, `created_by`, `created_at`) VALUES
(7, 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu faucibus eros, vel placerat purus. Morbi tincidunt luctus risus eu vulputate. Suspendisse eu libero auctor, eleifend mauris at, hendrerit dolor. Donec malesuada lectus a tellus tempus, ut elementum nulla egestas. Vestibulum consectetur ante nec lectus feugiat finibus. Mauris pellentesque mauris vel urna suscipit ullamcorper. Suspendisse a dui id lectus sagittis tincidunt. Nulla facilisi. Sed fringilla nisi auctor ultrices facilisis. Praesent eu viverra ligula, at luctus elit. Praesent et volutpat neque. Mauris odio ipsum, commodo quis venenatis at, iaculis in neque. Mauris metus est, egestas sed leo ac, tristique euismod orci. Quisque accumsan metus lectus, at tincidunt quam faucibus vitae. Curabitur leo est, pharetra non ullamcorper accumsan, interdum non magna.\n\nVivamus congue ex sit amet libero varius, a pharetra ante ultrices. Nulla porttitor, lectus quis pellentesque mattis, nisi mi venenatis dui, feugiat ultrices odio nunc vitae leo. Etiam a quam dignissim, rutrum erat nec, vulputate tortor. Ut ac semper nulla, eu porta arcu. Quisque ultricies vel tortor vitae pellentesque. Vivamus massa urna, tristique id nulla eget, tincidunt porttitor nunc. Curabitur sodales sem nec molestie accumsan. Maecenas rutrum massa tortor, at pulvinar risus eleifend vehicula.\n\nVivamus at scelerisque nibh, quis consectetur diam. Morbi sit amet urna sit amet lacus bibendum hendrerit in vitae leo. Etiam in odio in odio tempus commodo. Donec dapibus a est ut porta. Vivamus at imperdiet mauris. Maecenas non pharetra odio. Integer laoreet pretium imperdiet. Ut lobortis non arcu sit amet placerat.\n\nMauris eros leo, ullamcorper a tincidunt sed, ullamcorper eget mauris. Donec hendrerit diam ex, at semper libero ornare in. Aenean ultrices odio sit amet erat sodales, et cursus neque convallis. Nam dolor elit, malesuada nec bibendum et, auctor placerat dui. Integer consectetur leo eu purus vehicula blandit. Aenean ut risus id lacus fringilla placerat et eget urna. Vestibulum varius, nunc non vehicula porta, lectus sapien laoreet sapien, sit amet facilisis risus ligula eu eros.', 1, '2021-10-26 14:00:36'),
(8, 'Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu faucibus eros, vel placerat purus. Morbi tincidunt luctus risus eu vulputate. Suspendisse eu libero auctor, eleifend mauris at, hendrerit dolor. Donec malesuada lectus a tellus tempus, ut elementum nulla egestas. Vestibulum consectetur ante nec lectus feugiat finibus. Mauris pellentesque mauris vel urna suscipit ullamcorper. Suspendisse a dui id lectus sagittis tincidunt. Nulla facilisi. Sed fringilla nisi auctor ultrices facilisis. Praesent eu viverra ligula, at luctus elit. Praesent et volutpat neque. Mauris odio ipsum, commodo quis venenatis at, iaculis in neque. Mauris metus est, egestas sed leo ac, tristique euismod orci. Quisque accumsan metus lectus, at tincidunt quam faucibus vitae. Curabitur leo est, pharetra non ullamcorper accumsan, interdum non magna.\n\nVivamus congue ex sit amet libero varius, a pharetra ante ultrices. Nulla porttitor, lectus quis pellentesque mattis, nisi mi venenatis dui, feugiat ultrices odio nunc vitae leo. Etiam a quam dignissim, rutrum erat nec, vulputate tortor. Ut ac semper nulla, eu porta arcu. Quisque ultricies vel tortor vitae pellentesque. Vivamus massa urna, tristique id nulla eget, tincidunt porttitor nunc. Curabitur sodales sem nec molestie accumsan. Maecenas rutrum massa tortor, at pulvinar risus eleifend vehicula.\n\nVivamus at scelerisque nibh, quis consectetur diam. Morbi sit amet urna sit amet lacus bibendum hendrerit in vitae leo. Etiam in odio in odio tempus commodo. Donec dapibus a est ut porta. Vivamus at imperdiet mauris. Maecenas non pharetra odio. Integer laoreet pretium imperdiet. Ut lobortis non arcu sit amet placerat.\n\nMauris eros leo, ullamcorper a tincidunt sed, ullamcorper eget mauris. Donec hendrerit diam ex, at semper libero ornare in. Aenean ultrices odio sit amet erat sodales, et cursus neque convallis. Nam dolor elit, malesuada nec bibendum et, auctor placerat dui. Integer consectetur leo eu purus vehicula blandit. Aenean ut risus id lacus fringilla placerat et eget urna. Vestibulum varius, nunc non vehicula porta, lectus sapien laoreet sapien, sit amet facilisis risus ligula eu eros.', 1, '2021-10-26 14:00:48'),
(9, 'New Title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu faucibus eros, vel placerat purus. Morbi tincidunt luctus risus eu vulputate. Suspendisse eu libero auctor, eleifend mauris at, hendrerit dolor. Donec malesuada lectus a tellus tempus, ut elementum nulla egestas. Vestibulum consectetur ante nec lectus feugiat finibus. Mauris pellentesque mauris vel urna suscipit ullamcorper. Suspendisse a dui id lectus sagittis tincidunt. Nulla facilisi. Sed fringilla nisi auctor ultrices facilisis. Praesent eu viverra ligula, at luctus elit. Praesent et volutpat neque. Mauris odio ipsum, commodo quis venenatis at, iaculis in neque. Mauris metus est, egestas sed leo ac, tristique euismod orci. Quisque accumsan metus lectus, at tincidunt quam faucibus vitae. Curabitur leo est, pharetra non ullamcorper accumsan, interdum non magna.  Vivamus congue ex sit amet libero varius, a pharetra ante ultrices. Nulla porttitor, lectus quis pellentesque mattis, nisi mi venenatis dui, feugiat ultrices odio nunc vitae leo. Etiam a quam dignissim, rutrum erat nec, vulputate tortor. Ut ac semper nulla, eu porta arcu. Quisque ultricies vel tortor vitae pellentesque. Vivamus massa urna, tristique id nulla eget, tincidunt porttitor nunc. Curabitur sodales sem nec molestie accumsan. Maecenas rutrum massa tortor, at pulvinar risus eleifend vehicula.  Vivamus at scelerisque nibh, quis consectetur diam. Morbi sit amet urna sit amet lacus bibendum hendrerit in vitae leo. Etiam in odio in odio tempus commodo. Donec dapibus a est ut porta. Vivamus at imperdiet mauris. Maecenas non pharetra odio. Integer laoreet pretium imperdiet. Ut lobortis non arcu sit amet placerat.  Mauris eros leo, ullamcorper a tincidunt sed, ullamcorper eget mauris. Donec hendrerit diam ex, at semper libero ornare in. Aenean ultrices odio sit amet erat sodales, et cursus neque convallis. Nam dolor elit, malesuada nec bibendum et, auctor placerat dui. Integer consectetur leo eu purus vehicula blandit. Aenean ut risus id lacus fringilla placerat et eget urna. Vestibulum varius, nunc non vehicula porta, lectus sapien laoreet sapien, sit amet facilisis risus ligula eu eros.  Cras et tempor massa, ut convallis lorem. Nullam volutpat ante erat, quis mollis odio pretium a. Integer quis metus nisi. Aenean posuere, sapien efficitur porttitor dignissim, ante leo lobortis felis, sed maximus mi leo a tortor. Maecenas sagittis augue ut nulla vestibulum congue. Mauris dolor lorem, mattis sit amet lacus in, vehicula lacinia lorem. Praesent pulvinar egestas lorem non pellentesque. Suspendisse convallis, mi et luctus dapibus, nibh justo convallis leo, non convallis sem orci in diam. Nunc auctor erat ut nunc convallis suscipit.', 1, '2021-10-26 14:37:58'),
(10, 'New 123', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu faucibus eros, vel placerat purus. Morbi tincidunt luctus risus eu vulputate. Suspendisse eu libero auctor, eleifend mauris at, hendrerit dolor. Donec malesuada lectus a tellus tempus, ut elementum nulla egestas. Vestibulum consectetur ante nec lectus feugiat finibus. Mauris pellentesque mauris vel urna suscipit ullamcorper. Suspendisse a dui id lectus sagittis tincidunt. Nulla facilisi. Sed fringilla nisi auctor ultrices facilisis. Praesent eu viverra ligula, at luctus elit. Praesent et volutpat neque. Mauris odio ipsum, commodo quis venenatis at, iaculis in neque. Mauris metus est, egestas sed leo ac, tristique euismod orci. Quisque accumsan metus lectus, at tincidunt quam faucibus vitae. Curabitur leo est, pharetra non ullamcorper accumsan, interdum non magna.  Vivamus congue ex sit amet libero varius, a pharetra ante ultrices. Nulla porttitor, lectus quis pellentesque mattis, nisi mi venenatis dui, feugiat ultrices odio nunc vitae leo. Etiam a quam dignissim, rutrum erat nec, vulputate tortor. Ut ac semper nulla, eu porta arcu. Quisque ultricies vel tortor vitae pellentesque. Vivamus massa urna, tristique id nulla eget, tincidunt porttitor nunc. Curabitur sodales sem nec molestie accumsan. Maecenas rutrum massa tortor, at pulvinar risus eleifend vehicula.  Vivamus at scelerisque nibh, quis consectetur diam. Morbi sit amet urna sit amet lacus bibendum hendrerit in vitae leo. Etiam in odio in odio tempus commodo. Donec dapibus a est ut porta. Vivamus at imperdiet mauris. Maecenas non pharetra odio. Integer laoreet pretium imperdiet. Ut lobortis non arcu sit amet placerat.  Mauris eros leo, ullamcorper a tincidunt sed, ullamcorper eget mauris. Donec hendrerit diam ex, at semper libero ornare in. Aenean ultrices odio sit amet erat sodales, et cursus neque convallis. Nam dolor elit, malesuada nec bibendum et, auctor placerat dui. Integer consectetur leo eu purus vehicula blandit. Aenean ut risus id lacus fringilla placerat et eget urna. Vestibulum varius, nunc non vehicula porta, lectus sapien laoreet sapien, sit amet facilisis risus ligula eu eros.  Cras et tempor massa, ut convallis lorem. Nullam volutpat ante erat, quis mollis odio pretium a. Integer quis metus nisi. Aenean posuere, sapien efficitur porttitor dignissim, ante leo lobortis felis, sed maximus mi leo a tortor. Maecenas sagittis augue ut nulla vestibulum congue. Mauris dolor lorem, mattis sit amet lacus in, vehicula lacinia lorem. Praesent pulvinar egestas lorem non pellentesque. Suspendisse convallis, mi et luctus dapibus, nibh justo convallis leo, non convallis sem orci in diam. Nunc auctor erat ut nunc convallis suscipit.', 1, '2021-10-26 15:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `first_name`, `last_name`, `email`, `password`, `user_type`, `created_at`) VALUES
(1, 'Abhishek', 'Chakraborty', 'gmail', 'pass', 'admin', '2021-10-26 12:01:52'),
(2, 'Ignaz', 'Lastname', 'yahoo', 'pass', 'user', '2021-10-26 14:32:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `check24blog` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
