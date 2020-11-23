-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 24 Nov 2020 pada 02.13
-- Versi server: 5.6.49-log
-- Versi PHP: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websolselkab`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_banner` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_banner`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(2, 'Insurance', 'category-banner-2.jpg', 'Insurance', '', ''),
(3, 'Residential', 'category-banner-3.jpg', 'Residential', '', ''),
(4, 'Commercial', 'category-banner-4.jpg', 'Commercial', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_client`
--

CREATE TABLE `tbl_client` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_client`
--

INSERT INTO `tbl_client` (`id`, `name`, `url`, `photo`) VALUES
(1, 'Client 1', '', 'client-1.png'),
(2, 'Client 2', '', 'client-2.png'),
(3, 'Client 3', '', 'client-3.png'),
(4, 'Client 4', '', 'client-4.png'),
(5, 'Client 5', '', 'client-5.png'),
(6, 'Client 6', '', 'client-6.png'),
(7, 'Client 7', '', 'client-7.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `code_body` text NOT NULL,
  `code_main` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `code_body`, `code_main`) VALUES
(1, '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<div class=\"fb-comments\" data-href=\"https://developers.facebook.com/docs/plugins/comments#configurator\" data-numposts=\"5\"></div>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_event`
--

CREATE TABLE `tbl_event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(255) NOT NULL,
  `event_content` text NOT NULL,
  `event_content_short` text NOT NULL,
  `event_start_date` varchar(10) NOT NULL,
  `event_end_date` varchar(10) NOT NULL,
  `event_location` text NOT NULL,
  `event_map` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_event`
--

INSERT INTO `tbl_event` (`event_id`, `event_title`, `event_content`, `event_content_short`, `event_start_date`, `event_end_date`, `event_location`, `event_map`, `photo`, `banner`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Lorem ipsum dolor sit amet vel cu habemus', '<p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.</p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.<br></p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2019-02-22', '2029-07-12', 'Street #233, New York, USA', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.3833161665298!2d-118.03745848530627!3d33.85401093559897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dd2c6c97f8f3ed%3A0x47b1bde165dcc056!2sOak+Dr%2C+La+Palma%2C+CA+90623%2C+USA!5e0!3m2!1sen!2sbd!4v1544238752504\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'event-1.jpg', 'event-banner-1.jpg', 'Lorem ipsum dolor sit amet vel cu habemus', '', ''),
(2, 'Ei qui possim abhor reant ei eam iudico disput', '<p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.</p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.</p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2029-02-06', '2029-07-12', 'Street #233, New York, USA', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.3833161665298!2d-118.03745848530627!3d33.85401093559897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dd2c6c97f8f3ed%3A0x47b1bde165dcc056!2sOak+Dr%2C+La+Palma%2C+CA+90623%2C+USA!5e0!3m2!1sen!2sbd!4v1544238752504\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'event-2.jpg', 'event-banner-2.jpg', 'Ei qui possim abhor reant ei eam iudico disput', '', ''),
(3, 'Est ei unum illum mucius, nemore alterum', '<p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.</p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.</p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2019-02-01', '2019-02-07', 'Street #233, New York, USA', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.3833161665298!2d-118.03745848530627!3d33.85401093559897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dd2c6c97f8f3ed%3A0x47b1bde165dcc056!2sOak+Dr%2C+La+Palma%2C+CA+90623%2C+USA!5e0!3m2!1sen!2sbd!4v1544238752504\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'event-3.jpg', 'event-banner-3.jpg', 'Est ei unum illum mucius, nemore alterum', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL,
  `show_on_home` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`, `show_on_home`) VALUES
(1, 'When should I make the booking?', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>', 'Yes'),
(2, 'How can I pay?', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.<br></p>', 'Yes'),
(3, 'Can I bring extra luggage?', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.<br></p>', 'Yes'),
(4, 'How many pieces of luggage I\'m permitted? ', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.<br></p>', 'Yes'),
(5, 'What types of documents are required to travel?', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.<br></p>', 'No'),
(6, 'On International flights do I need to pay departure tax?', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.<br></p>', 'No');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_feature`
--

CREATE TABLE `tbl_feature` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_feature`
--

INSERT INTO `tbl_feature` (`id`, `name`, `content`, `icon`) VALUES
(1, 'ECONOMIC POLICY', 'Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an in dolore.', 'fa fa-globe'),
(2, 'BUSINESS MODEL', 'Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno.', 'fa fa-file-text'),
(3, 'SECURITY PROTECTION', 'Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no.', 'fa fa-clock-o'),
(4, 'NICE COMMUNICATION', 'Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit.', 'fa fa-shield'),
(5, 'DIGITAL STRATEGY', 'Vis constituto complectitur an, modo falli eirmod ea has. Ex vis indoctum scriptorem appellantur.', 'fa fa-commenting'),
(6, 'INTERNAL CONSULTING', 'Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam.', 'fa fa-bullhorn');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `name`, `value`) VALUES
(1, 'HOME', 'Home'),
(2, 'ABOUT', 'Profil'),
(3, 'TEAM', 'Struktur'),
(4, 'PAGE', 'Page'),
(5, 'EVENT', 'Event'),
(6, 'PHOTO_GALLERY', 'Photo Gallery'),
(7, 'TESTIMONIAL', 'Testimonial'),
(8, 'FAQ', 'FAQ'),
(9, 'PRICING_TABLE', 'Pricing Table'),
(10, 'SERVICE', 'Service'),
(11, 'PORTFOLIO', 'Portfolio'),
(12, 'NEWS', 'News'),
(13, 'CONTACT', 'Contact'),
(14, 'SEARCH_FOR', 'Search for...'),
(15, 'READ_MORE', 'Read More'),
(16, 'SUBMIT', 'Submit'),
(17, 'FIRST_NAME', 'First Name'),
(18, 'LAST_NAME', 'Last Name'),
(19, 'PHONE_NUMBER', 'Phone Number'),
(20, 'EMAIL_ADDRESS', 'Email Address'),
(21, 'ADDRESS', 'Address'),
(22, 'MESSAGE', 'Message'),
(23, 'START_DATE', 'Start Date'),
(24, 'END_DATE', 'End Date'),
(25, 'EVENT_START_DATE', 'Event Start Date'),
(26, 'EVENT_END_DATE', 'Event End Date'),
(27, 'EVENT_LOCATION_MAP', 'Event Location Map'),
(28, 'SHARE_THIS_EVENT', 'Share This Event'),
(29, 'SHARE_THIS_NEWS', 'Share This News'),
(30, 'COMMENT', 'Comment'),
(31, 'NAME', 'Name'),
(32, 'ALL', 'All'),
(33, 'PROJECT_OVERVIEW', 'Project Overview'),
(34, 'CATEGORY', 'Category'),
(35, 'CLIENT_NAME', 'Client Name'),
(36, 'CLIENT_COMPANY_NAME', 'Client Company Name'),
(37, 'PROJECT_START_DATE', 'Project Start Date'),
(38, 'PROJECT_END_DATE', 'Project End Date'),
(39, 'CLIENT_COMMENT', 'Client Comment'),
(40, 'NEWS_DATE', 'News Date'),
(41, 'RECENT_PORTFOLIO', 'Recent Portfolio'),
(42, 'RECENT_PORTFOLIO_SUBTITLE', 'See all our works that we do for our clients'),
(43, 'CONTACT_FORM', 'Contact Form'),
(44, 'SEND_MESSAGE', 'Send Message'),
(45, 'SUBJECT', 'Subject'),
(46, 'NO_RESULT_FOUND', 'No Result is Found');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_content` text NOT NULL,
  `news_content_short` text NOT NULL,
  `news_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `comment` varchar(3) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_title`, `news_content`, `news_content_short`, `news_date`, `photo`, `banner`, `category_id`, `comment`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Vis nostro nominati electram ex aeterno voluptatum', '<p>Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut. Id illum tantas gloriatur duo. Vis ne prima cetero, erant iusto democritum at vim. Ne integre vivendum delicata eum, ei erat senserit qui.</p><p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.<br></p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.<br></p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2018-12-03', 'news-1.jpg', 'news-banner-1.jpg', 2, 'On', 'Vis nostro nominati electram ex aeterno voluptatum', '', ''),
(2, 'An usu natum aperiri accommodare hendrerit', '<p>Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut. Id illum tantas gloriatur duo. Vis ne prima cetero, erant iusto democritum at vim. Ne integre vivendum delicata eum, ei erat senserit qui.</p><p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.<br></p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.<br></p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2018-12-03', 'news-2.jpg', 'news-banner-2.jpg', 1, 'On', 'An usu natum aperiri accommodare hendrerit', '', ''),
(3, 'Est ei unum illum mucius, nemore alterum', '<p>Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut. Id illum tantas gloriatur duo. Vis ne prima cetero, erant iusto democritum at vim. Ne integre vivendum delicata eum, ei erat senserit qui.</p><p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.<br></p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.<br></p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2018-12-03', 'news-3.jpg', 'news-banner-3.jpg', 3, 'On', 'Est ei unum illum mucius, nemore alterum', '', ''),
(4, 'Ei qui possim abhorreant ei eam iudico disputando', '<p>Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut. Id illum tantas gloriatur duo. Vis ne prima cetero, erant iusto democritum at vim. Ne integre vivendum delicata eum, ei erat senserit qui.</p><p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.<br></p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.<br></p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2018-12-03', 'news-4.jpg', 'news-banner-4.jpg', 4, 'On', 'Ei qui possim abhorreant ei eam iudico disputando', '', '');
INSERT INTO `tbl_news` (`news_id`, `news_title`, `news_content`, `news_content_short`, `news_date`, `photo`, `banner`, `category_id`, `comment`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(16, 'TEAM DEV', '<p>TEAM DEV<img src=\"data:image/jpeg;base64,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', 'TEAM DEV', '2020-11-09', 'news-16.jpg', 'news-banner-16.jpg', 4, 'On', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_about`
--

CREATE TABLE `tbl_page_about` (
  `id` int(11) NOT NULL,
  `about_heading` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `mt_about` varchar(255) NOT NULL,
  `mk_about` text NOT NULL,
  `md_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_about`
--

INSERT INTO `tbl_page_about` (`id`, `about_heading`, `about_content`, `mt_about`, `mk_about`, `md_about`) VALUES
(1, 'Profil ', '<h3>Visi </h3><p><br></p><p style=\"text-align: center; \"><br></p><h3 style=\"color: rgb(0, 0, 0);\">Misi </h3><ol><li><br></li></ol><h3><br></h3>', 'Visi Misi ', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_contact`
--

CREATE TABLE `tbl_page_contact` (
  `id` int(11) NOT NULL,
  `contact_heading` varchar(255) NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_phone` text NOT NULL,
  `contact_map` text NOT NULL,
  `mt_contact` varchar(255) NOT NULL,
  `mk_contact` text NOT NULL,
  `md_contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_contact`
--

INSERT INTO `tbl_page_contact` (`id`, `contact_heading`, `contact_address`, `contact_email`, `contact_phone`, `contact_map`, `mt_contact`, `mk_contact`, `md_contact`) VALUES
(1, 'CONTACT', '3153 Foley Street\r\nMiami, FL 33176', 'sales@yourwebsite.com\r\nsupport@yourwebsite.com', 'Office 1: 954-648-1802\r\nOffice 2: 963-612-1782', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.3833161665298!2d-118.03745848530627!3d33.85401093559897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dd2c6c97f8f3ed%3A0x47b1bde165dcc056!2sOak+Dr%2C+La+Palma%2C+CA+90623%2C+USA!5e0!3m2!1sen!2sbd!4v1544238752504\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Contact - Multix - Multipurpose Website CMS with Codeigniter', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_event`
--

CREATE TABLE `tbl_page_event` (
  `id` int(11) NOT NULL,
  `event_heading` varchar(255) NOT NULL,
  `mt_event` varchar(255) NOT NULL,
  `mk_event` text NOT NULL,
  `md_event` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_event`
--

INSERT INTO `tbl_page_event` (`id`, `event_heading`, `mt_event`, `mk_event`, `md_event`) VALUES
(1, 'EVENTS', 'Events ', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_faq`
--

CREATE TABLE `tbl_page_faq` (
  `id` int(11) NOT NULL,
  `faq_heading` varchar(255) NOT NULL,
  `mt_faq` varchar(255) NOT NULL,
  `mk_faq` text NOT NULL,
  `md_faq` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_faq`
--

INSERT INTO `tbl_page_faq` (`id`, `faq_heading`, `mt_faq`, `mk_faq`, `md_faq`) VALUES
(1, 'FAQ', 'FAQ - Multix - Multipurpose Website CMS with Codeigniter', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_home`
--

CREATE TABLE `tbl_page_home` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `home_welcome_title` varchar(255) NOT NULL,
  `home_welcome_subtitle` varchar(255) NOT NULL,
  `home_welcome_text` text NOT NULL,
  `home_welcome_video` text NOT NULL,
  `home_welcome_pbar1_text` varchar(255) NOT NULL,
  `home_welcome_pbar1_value` varchar(10) NOT NULL,
  `home_welcome_pbar2_text` varchar(255) NOT NULL,
  `home_welcome_pbar2_value` varchar(10) NOT NULL,
  `home_welcome_pbar3_text` varchar(255) NOT NULL,
  `home_welcome_pbar3_value` varchar(10) NOT NULL,
  `home_welcome_pbar4_text` varchar(255) NOT NULL,
  `home_welcome_pbar4_value` varchar(10) NOT NULL,
  `home_welcome_pbar5_text` varchar(255) NOT NULL,
  `home_welcome_pbar5_value` varchar(10) NOT NULL,
  `home_welcome_status` varchar(5) NOT NULL,
  `home_welcome_video_bg` varchar(255) NOT NULL,
  `home_why_choose_title` varchar(255) NOT NULL,
  `home_why_choose_subtitle` varchar(255) NOT NULL,
  `home_why_choose_status` varchar(5) NOT NULL,
  `home_feature_title` varchar(255) NOT NULL,
  `home_feature_subtitle` varchar(255) NOT NULL,
  `home_feature_status` varchar(5) NOT NULL,
  `home_service_title` varchar(255) NOT NULL,
  `home_service_subtitle` varchar(255) NOT NULL,
  `home_service_status` varchar(5) NOT NULL,
  `counter_1_title` varchar(255) NOT NULL,
  `counter_1_value` varchar(10) NOT NULL,
  `counter_1_icon` varchar(50) NOT NULL,
  `counter_2_title` varchar(255) NOT NULL,
  `counter_2_value` varchar(10) NOT NULL,
  `counter_2_icon` varchar(50) NOT NULL,
  `counter_3_title` varchar(255) NOT NULL,
  `counter_3_value` varchar(10) NOT NULL,
  `counter_3_icon` varchar(50) NOT NULL,
  `counter_4_title` varchar(255) NOT NULL,
  `counter_4_value` varchar(10) NOT NULL,
  `counter_4_icon` varchar(50) NOT NULL,
  `counter_photo` varchar(255) NOT NULL,
  `counter_status` varchar(10) NOT NULL,
  `home_portfolio_title` varchar(255) NOT NULL,
  `home_portfolio_subtitle` varchar(255) NOT NULL,
  `home_portfolio_status` varchar(5) NOT NULL,
  `home_booking_form_title` varchar(255) NOT NULL,
  `home_booking_faq_title` varchar(255) NOT NULL,
  `home_booking_status` varchar(5) NOT NULL,
  `home_booking_photo` varchar(255) NOT NULL,
  `home_team_title` varchar(255) NOT NULL,
  `home_team_subtitle` varchar(255) NOT NULL,
  `home_team_status` varchar(5) NOT NULL,
  `home_ptable_title` varchar(255) NOT NULL,
  `home_ptable_subtitle` varchar(255) NOT NULL,
  `home_ptable_status` varchar(5) NOT NULL,
  `home_testimonial_title` varchar(255) NOT NULL,
  `home_testimonial_subtitle` varchar(255) NOT NULL,
  `home_testimonial_photo` varchar(255) NOT NULL,
  `home_testimonial_status` varchar(5) NOT NULL,
  `home_blog_title` varchar(255) NOT NULL,
  `home_blog_subtitle` varchar(255) NOT NULL,
  `home_blog_item` varchar(5) NOT NULL,
  `home_blog_status` varchar(5) NOT NULL,
  `home_cta_text` text NOT NULL,
  `home_cta_button_text` varchar(255) NOT NULL,
  `home_cta_button_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_home`
--

INSERT INTO `tbl_page_home` (`id`, `title`, `meta_keyword`, `meta_description`, `home_welcome_title`, `home_welcome_subtitle`, `home_welcome_text`, `home_welcome_video`, `home_welcome_pbar1_text`, `home_welcome_pbar1_value`, `home_welcome_pbar2_text`, `home_welcome_pbar2_value`, `home_welcome_pbar3_text`, `home_welcome_pbar3_value`, `home_welcome_pbar4_text`, `home_welcome_pbar4_value`, `home_welcome_pbar5_text`, `home_welcome_pbar5_value`, `home_welcome_status`, `home_welcome_video_bg`, `home_why_choose_title`, `home_why_choose_subtitle`, `home_why_choose_status`, `home_feature_title`, `home_feature_subtitle`, `home_feature_status`, `home_service_title`, `home_service_subtitle`, `home_service_status`, `counter_1_title`, `counter_1_value`, `counter_1_icon`, `counter_2_title`, `counter_2_value`, `counter_2_icon`, `counter_3_title`, `counter_3_value`, `counter_3_icon`, `counter_4_title`, `counter_4_value`, `counter_4_icon`, `counter_photo`, `counter_status`, `home_portfolio_title`, `home_portfolio_subtitle`, `home_portfolio_status`, `home_booking_form_title`, `home_booking_faq_title`, `home_booking_status`, `home_booking_photo`, `home_team_title`, `home_team_subtitle`, `home_team_status`, `home_ptable_title`, `home_ptable_subtitle`, `home_ptable_status`, `home_testimonial_title`, `home_testimonial_subtitle`, `home_testimonial_photo`, `home_testimonial_status`, `home_blog_title`, `home_blog_subtitle`, `home_blog_item`, `home_blog_status`, `home_cta_text`, `home_cta_button_text`, `home_cta_button_url`) VALUES
(1, 'Web Demo', 'Pemerintahan', '', 'Kelas Yang Dibuka Saat Ini', 'Kesetaraan', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne.<br></p>', '<iframe src=\"https://player.vimeo.com/video/43982091\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"480\" height=\"360\" allowfullscreen></iframe>', 'Kinerja', '95', 'Pretasi', '70', '', '88', '', '', '', '', 'Show', 'home_welcome_video_bg.jpg', 'WHY CHOOSE US', 'We have some special crieteria that will help you', 'Show', 'SPECIAL FEATURES', 'We offer some awesome features that will help you', 'Show', 'OUR SERVICES', 'We are always here to serve you some awesome services', 'Show', 'Populasi', '150', 'fa fa-user', 'Data', '300', 'fa fa-bar-chart', 'Wilayah', '250', 'fa fa-users', 'Kecamatan', '120', 'fa fa-trophy', 'counter.jpg', 'Show', 'WORK PORTFOLIO', 'See what we do for our valuable clients', 'Show', 'BOOKING FORM', 'FREEQUENTLY ASKED QUESTIONS', 'Show', 'home_booking_photo.jpg', 'OUR TEAM', 'All our skilled team members are listed below', 'Show', 'PRICING TABLE', 'Our detailed consulting service prices are listed below', 'Hide', 'OUR CLIENTS', 'See what our valuable clients tell about us', 'home_testimonial_photo.jpg', 'Hide', 'LATEST NEWS', 'All our latest news are listed below', '10', 'Show', 'Do you want to get our quality service for your business?', 'Contact Us', '#');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_news`
--

CREATE TABLE `tbl_page_news` (
  `id` int(11) NOT NULL,
  `news_heading` varchar(255) NOT NULL,
  `mt_news` varchar(255) NOT NULL,
  `mk_news` text NOT NULL,
  `md_news` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_news`
--

INSERT INTO `tbl_page_news` (`id`, `news_heading`, `mt_news`, `mk_news`, `md_news`) VALUES
(1, 'NEWS', 'News ', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_photo_gallery`
--

CREATE TABLE `tbl_page_photo_gallery` (
  `id` int(11) NOT NULL,
  `photo_gallery_heading` varchar(255) NOT NULL,
  `mt_photo_gallery` varchar(255) NOT NULL,
  `mk_photo_gallery` text NOT NULL,
  `md_photo_gallery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_photo_gallery`
--

INSERT INTO `tbl_page_photo_gallery` (`id`, `photo_gallery_heading`, `mt_photo_gallery`, `mk_photo_gallery`, `md_photo_gallery`) VALUES
(1, 'PHOTO GALLERY', 'Photo Gallery - Multix - Multipurpose Website CMS with Codeigniter', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_portfolio`
--

CREATE TABLE `tbl_page_portfolio` (
  `id` int(11) NOT NULL,
  `portfolio_heading` varchar(255) NOT NULL,
  `mt_portfolio` varchar(255) NOT NULL,
  `mk_portfolio` text NOT NULL,
  `md_portfolio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_portfolio`
--

INSERT INTO `tbl_page_portfolio` (`id`, `portfolio_heading`, `mt_portfolio`, `mk_portfolio`, `md_portfolio`) VALUES
(1, 'PORTFOLIO', 'Portfolio', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_pricing`
--

CREATE TABLE `tbl_page_pricing` (
  `id` int(11) NOT NULL,
  `pricing_heading` varchar(255) NOT NULL,
  `mt_pricing` varchar(255) NOT NULL,
  `mk_pricing` text NOT NULL,
  `md_pricing` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_pricing`
--

INSERT INTO `tbl_page_pricing` (`id`, `pricing_heading`, `mt_pricing`, `mk_pricing`, `md_pricing`) VALUES
(1, 'PRICING', 'Pricing - Multix - Multipurpose Website CMS with Codeigniter', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_privacy`
--

CREATE TABLE `tbl_page_privacy` (
  `id` int(11) NOT NULL,
  `privacy_heading` varchar(255) NOT NULL,
  `privacy_content` text NOT NULL,
  `mt_privacy` varchar(255) NOT NULL,
  `mk_privacy` text NOT NULL,
  `md_privacy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_privacy`
--

INSERT INTO `tbl_page_privacy` (`id`, `privacy_heading`, `privacy_content`, `mt_privacy`, `mk_privacy`, `md_privacy`) VALUES
(1, 'PRIVACY POLICY', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p><p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p><p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p><p>Duo purto pertinax in. Ea noluisse mediocrem qui, nobis melius vis et. Iudico delicatissimi no qui, quando fastidii nam et, ne eum rationibus deseruisse neglegentur. Ei eum populo viderer reprimique, tantas homero abhorreant usu ei, at postulant gloriatur vituperata sit.</p>', 'Privacy Policy - Multix - Multipurpose Website CMS with Codeigniter', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_search`
--

CREATE TABLE `tbl_page_search` (
  `id` int(11) NOT NULL,
  `search_heading` varchar(255) NOT NULL,
  `mt_search` varchar(255) NOT NULL,
  `mk_search` text NOT NULL,
  `md_search` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_search`
--

INSERT INTO `tbl_page_search` (`id`, `search_heading`, `mt_search`, `mk_search`, `md_search`) VALUES
(1, 'SEARCH BY:', 'Search ', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_service`
--

CREATE TABLE `tbl_page_service` (
  `id` int(11) NOT NULL,
  `service_heading` varchar(255) NOT NULL,
  `mt_service` varchar(255) NOT NULL,
  `mk_service` text NOT NULL,
  `md_service` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_service`
--

INSERT INTO `tbl_page_service` (`id`, `service_heading`, `mt_service`, `mk_service`, `md_service`) VALUES
(1, 'Our Services', 'Our Services ', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_team`
--

CREATE TABLE `tbl_page_team` (
  `id` int(11) NOT NULL,
  `team_heading` varchar(255) NOT NULL,
  `mt_team` varchar(255) NOT NULL,
  `mk_team` text NOT NULL,
  `md_team` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_team`
--

INSERT INTO `tbl_page_team` (`id`, `team_heading`, `mt_team`, `mk_team`, `md_team`) VALUES
(1, 'Struktur ', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_term`
--

CREATE TABLE `tbl_page_term` (
  `id` int(11) NOT NULL,
  `term_heading` varchar(255) NOT NULL,
  `term_content` text NOT NULL,
  `mt_term` varchar(255) NOT NULL,
  `mk_term` text NOT NULL,
  `md_term` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_term`
--

INSERT INTO `tbl_page_term` (`id`, `term_heading`, `term_content`, `mt_term`, `mk_term`, `md_term`) VALUES
(1, 'TERMS & CONDITIONS', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p><p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p><p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p><p>Duo purto pertinax in. Ea noluisse mediocrem qui, nobis melius vis et. Iudico delicatissimi no qui, quando fastidii nam et, ne eum rationibus deseruisse neglegentur. Ei eum populo viderer reprimique, tantas homero abhorreant usu ei, at postulant gloriatur vituperata sit.</p>', 'Terms and Conditions - Multix - Multipurpose Website CMS with Codeigniter', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_page_testimonial`
--

CREATE TABLE `tbl_page_testimonial` (
  `id` int(11) NOT NULL,
  `testimonial_heading` varchar(255) NOT NULL,
  `mt_testimonial` varchar(255) NOT NULL,
  `mk_testimonial` text NOT NULL,
  `md_testimonial` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_page_testimonial`
--

INSERT INTO `tbl_page_testimonial` (`id`, `testimonial_heading`, `mt_testimonial`, `mk_testimonial`, `md_testimonial`) VALUES
(1, 'TESTIMONIAL', 'Testimonial ', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `photo_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_photo`
--

INSERT INTO `tbl_photo` (`photo_id`, `photo_name`) VALUES
(2, 'photo-2.jpg'),
(3, 'photo-3.jpg'),
(4, 'photo-4.jpg'),
(5, 'photo-5.jpg'),
(6, 'photo-6.jpg'),
(7, 'photo-7.jpg'),
(8, 'photo-8.jpg'),
(9, 'photo-9.jpg'),
(10, 'photo-10.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_company` varchar(255) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  `website` varchar(255) NOT NULL,
  `cost` varchar(50) NOT NULL,
  `client_comment` text NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_portfolio`
--

INSERT INTO `tbl_portfolio` (`id`, `name`, `short_content`, `content`, `client_name`, `client_company`, `start_date`, `end_date`, `website`, `cost`, `client_comment`, `category_id`, `photo`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Corporate Work 1', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>', 'Darrell S. McClain', 'Waves Music', '01-07-2018', '04-07-2018', 'http://www.abc.com', '$3000', 'Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.', '1', 'portfolio-1.jpg', 'Corporate Work 1', '', ''),
(2, 'Business Work 1', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>', 'Richard R. Caldwell', 'Grey Fade', '29-08-2018', '07-09-2018', 'http://www.abc.com', '$2000', 'Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.', '2', 'portfolio-2.jpg', 'Business Work 1', '', ''),
(3, 'Engineering Work 1', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>', 'Nicholas Y. Coleman', 'Baltimore Markets', '08-04-2018', '22-06-2018', 'http://www.abc.com', '$3400', 'Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.', '3', 'portfolio-3.jpg', 'Engineering Work 1', '', ''),
(4, 'Business Work 2', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>', 'John A. Flesher', 'Magna Solution', '10-04-2018', '25-05-2018', 'http://www.abc.com', '$2300', 'Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.', '2', 'portfolio-4.jpg', 'Business Work 2', '', ''),
(5, 'Corporate Work 2', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>', 'Brandon J. Erwin', 'Custom Sound', '15-06-2018', '05-07-2018', 'http://www.abc.com', '$5000', 'Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.', '1', 'portfolio-5.jpg', 'Corporate Work 2', '', ''),
(6, 'Engineering Work 2', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>', 'George L. Perryman', 'The Own Hardware', '05-02-2018', '20-04-2018', 'http://www.abc.com', '$1900', 'Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.', '3', 'portfolio-6.jpg', 'Engineering Work 2', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_portfolio_category`
--

CREATE TABLE `tbl_portfolio_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_portfolio_category`
--

INSERT INTO `tbl_portfolio_category` (`category_id`, `category_name`, `status`) VALUES
(1, 'Corporate', 'Active'),
(2, 'Business', 'Active'),
(3, 'Engineering', 'Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_portfolio_photo`
--

CREATE TABLE `tbl_portfolio_photo` (
  `id` int(11) NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_portfolio_photo`
--

INSERT INTO `tbl_portfolio_photo` (`id`, `portfolio_id`, `photo`) VALUES
(17, 7, '17.jpg'),
(18, 7, '18.jpg'),
(24, 1, '24.jpg'),
(26, 1, '26.jpg'),
(27, 2, '27.jpg'),
(28, 2, '28.jpg'),
(29, 3, '29.jpg'),
(30, 4, '30.jpg'),
(31, 4, '31.jpg'),
(32, 5, '32.jpg'),
(33, 5, '33.jpg'),
(34, 6, '34.jpg'),
(35, 6, '35.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pricing_table`
--

CREATE TABLE `tbl_pricing_table` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pricing_table`
--

INSERT INTO `tbl_pricing_table` (`id`, `icon`, `title`, `price`, `subtitle`, `text`, `button_text`, `button_url`) VALUES
(1, 'fa fa-shield', 'Standard', '$99', 'per month', '<ul><li>Single Domain</li><li>10 GB bandwidth/month</li><li>Free SSL Activation</li><li>No Website Builder</li><li>No Email Support</li><li>No Chat Support</li></ul>', 'Choose Us', '#'),
(2, 'fa fa-globe', 'Professional', '$299', 'per month', '<ul><li>5 Domains</li><li>100 GB bandwidth/month</li><li>Free SSL Activation</li><li>Free Website Builder</li><li>Free Email Support</li><li>No Chat Support</li></ul>', 'Choose Us', '#'),
(3, 'fa fa-diamond', 'Business', '$499', 'per month', '<ul><li>Unlimited Domains</li><li>Unlimited bandwidth/month</li><li>Free SSL Activation</li><li>Free Website Builder</li><li>Free Email Support</li><li>Free Chat Support</li></ul>', 'Choose Us', '#');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `short_description` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `name`, `description`, `short_description`, `photo`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'CONSULTANT COORDINATION', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.<br></p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.<br></p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum entum has. Latine propriae quo no unum.', 'service-1.jpg', 'Consultant Coordination', '', ''),
(2, 'COST MANAGEMENT', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.<br></p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum entum has. Latine propriae quo no unum.', 'service-2.jpg', 'Cost Management', '', ''),
(3, 'TRAINING PROGRAM', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.<br></p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum entum has. Latine propriae quo no unum.', 'service-3.jpg', 'Training Program', '', ''),
(4, 'PROJECT MANAGEMENT', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.<br></p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum entum has. Latine propriae quo no unum.', 'service-4.jpg', 'Project Management', '', ''),
(5, 'QUALITY ASSURANCE', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.<br></p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum entum has. Latine propriae quo no unum.', 'service-5.jpg', 'Quality Assurance', '', ''),
(6, 'REPORTING', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p><p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.<br></p><p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum entum has. Latine propriae quo no unum.', 'service-6.jpg', 'Reporting', '', ''),
(7, 'AA', '<p>AAA</p>', 'AAA', 'service-7.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_col1_title` varchar(255) NOT NULL,
  `footer_col2_title` varchar(255) NOT NULL,
  `footer_col3_title` varchar(255) NOT NULL,
  `footer_col4_title` varchar(255) NOT NULL,
  `footer_copyright` text NOT NULL,
  `footer_address` text NOT NULL,
  `footer_email` text NOT NULL,
  `footer_phone` text NOT NULL,
  `footer_recent_news_item` varchar(5) NOT NULL,
  `footer_recent_portfolio_item` varchar(5) NOT NULL,
  `newsletter_text` text NOT NULL,
  `cta_text` text NOT NULL,
  `cta_button_text` varchar(255) NOT NULL,
  `cta_button_url` varchar(255) NOT NULL,
  `cta_background` varchar(255) NOT NULL,
  `top_bar_email` varchar(255) NOT NULL,
  `top_bar_phone` varchar(255) NOT NULL,
  `send_email_from` varchar(255) NOT NULL,
  `receive_email_to` varchar(255) NOT NULL,
  `banner_about` varchar(255) NOT NULL,
  `banner_faq` varchar(255) NOT NULL,
  `banner_service` varchar(255) NOT NULL,
  `banner_testimonial` varchar(255) NOT NULL,
  `banner_news` varchar(255) NOT NULL,
  `banner_event` varchar(255) NOT NULL,
  `banner_contact` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_terms` varchar(255) NOT NULL,
  `banner_privacy` varchar(255) NOT NULL,
  `banner_team` varchar(255) NOT NULL,
  `banner_portfolio` varchar(255) NOT NULL,
  `banner_verify_subscriber` varchar(255) NOT NULL,
  `banner_pricing` varchar(255) NOT NULL,
  `banner_photo_gallery` varchar(255) NOT NULL,
  `front_end_color` varchar(20) NOT NULL,
  `sidebar_total_recent_post` varchar(5) NOT NULL,
  `sidebar_total_upcoming_event` varchar(5) NOT NULL,
  `sidebar_total_past_event` varchar(5) NOT NULL,
  `sidebar_news_heading_category` varchar(255) NOT NULL,
  `sidebar_news_heading_recent_post` varchar(255) NOT NULL,
  `sidebar_event_heading_upcoming` varchar(255) NOT NULL,
  `sidebar_event_heading_past` varchar(255) NOT NULL,
  `sidebar_service_heading_service` varchar(255) NOT NULL,
  `sidebar_service_heading_quick_contact` varchar(255) NOT NULL,
  `sidebar_portfolio_heading_project_detail` varchar(255) NOT NULL,
  `sidebar_portfolio_heading_quick_contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_col1_title`, `footer_col2_title`, `footer_col3_title`, `footer_col4_title`, `footer_copyright`, `footer_address`, `footer_email`, `footer_phone`, `footer_recent_news_item`, `footer_recent_portfolio_item`, `newsletter_text`, `cta_text`, `cta_button_text`, `cta_button_url`, `cta_background`, `top_bar_email`, `top_bar_phone`, `send_email_from`, `receive_email_to`, `banner_about`, `banner_faq`, `banner_service`, `banner_testimonial`, `banner_news`, `banner_event`, `banner_contact`, `banner_search`, `banner_terms`, `banner_privacy`, `banner_team`, `banner_portfolio`, `banner_verify_subscriber`, `banner_pricing`, `banner_photo_gallery`, `front_end_color`, `sidebar_total_recent_post`, `sidebar_total_upcoming_event`, `sidebar_total_past_event`, `sidebar_news_heading_category`, `sidebar_news_heading_recent_post`, `sidebar_event_heading_upcoming`, `sidebar_event_heading_past`, `sidebar_service_heading_service`, `sidebar_service_heading_quick_contact`, `sidebar_portfolio_heading_project_detail`, `sidebar_portfolio_heading_quick_contact`) VALUES
(1, 'logo.jpg', 'favicon.jpg', 'NEWSLETTER', 'RECENT POST', 'PROJECT', 'ADDRESS', 'Copyright © 2020, Di Kelolah Oleh Dinas Kominfo Solok Selatan. Theme By CHILDREN FUTURE .', '3153 Foley Street\r\nMiami, FL 33176', 'sales@yourwebsite.com\r\nsupport@yourwebsite.com', 'Sales: 954-648-1802\r\nSupport: 963-612-1782', '4', '9', 'Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei.', 'Do you want to get our quality service for your business?', 'Contact Us', '#', 'cta_background.jpg', '', '-', 'contact@demosly.com', 'info@yourwebsite.com', 'banner_about.jpg', 'banner_faq.jpg', 'banner_service.jpg', 'banner_testimonial.jpg', 'banner_news.jpg', 'banner_event.jpg', 'banner_contact.jpg', 'banner_search.jpg', 'banner_terms.jpg', 'banner_privacy.jpg', 'banner_team.jpg', 'banner_portfolio.jpg', 'banner_verify_subscriber.jpg', 'banner_pricing.jpg', 'banner_photo_gallery.jpg', '3615E8', '3', '5', '5', 'Categories', 'Recent Posts', 'Upcoming Events', 'Past Events', 'OUR SERVICES', 'QUICK CONTACT', 'PROJECT DETAILS', 'QUICK CONTACT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `button1_text` varchar(255) NOT NULL,
  `button1_url` varchar(255) NOT NULL,
  `button2_text` varchar(255) NOT NULL,
  `button2_url` varchar(255) NOT NULL,
  `position` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button1_text`, `button1_url`, `button2_text`, `button2_url`, `position`) VALUES
(3, 'slider-3.jpg', 'Welcome Demo CMS Childeren Future', 'Welcome Demo CMS Childeren Future\r\nIni Demo Saja', 'LANJUT BACA', '', 'KONTAK', '', 'Left'),
(4, 'slider-4.jpg', 'Welcome Demo CMS Childeren Future', 'Hanya Demo Ya Sayang..!', 'BACA', '', 'KONTAK', '', 'Left');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'http://www.facebook.com/', 'fa fa-facebook'),
(2, 'Twitter', 'http://www.twitter.com', 'fa fa-twitter'),
(3, 'LinkedIn', 'http://www.linkedin.com', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', 'http://www.pinterest.com', 'fa fa-pinterest'),
(6, 'YouTube', 'http://www.youtube.com', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_team_member`
--

CREATE TABLE `tbl_team_member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `google_plus` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `flickr` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_team_member`
--

INSERT INTO `tbl_team_member` (`id`, `name`, `designation`, `photo`, `detail`, `facebook`, `twitter`, `linkedin`, `youtube`, `google_plus`, `instagram`, `flickr`, `phone`, `email`, `website`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(2, 'Brent Grundy', 'Managing Director', 'team-member-2.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p><p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.<br></p><p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.<br></p><p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Brent Grundy', '', ''),
(3, 'Scott Ford', 'CEO', 'team-member-3.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p><p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.<br></p><p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.<br></p><p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Scott Ford', '', ''),
(4, 'Robert Krol', 'CTO', 'team-member-4.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p><p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.<br></p><p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.<br></p><p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Robert Krol', '', ''),
(5, 'Sal Harvey', 'Graphic Designer', 'team-member-5.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p><p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.<br></p><p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.<br></p><p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Sal Harvey', '', ''),
(7, 'Harold Hayes', 'Web Designer', 'team-member-7.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p><p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.<br></p><p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.<br></p><p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Harold Hayes', '', ''),
(8, 'Terry Spain', 'WordPress Developer', 'team-member-8.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p><p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.<br></p><p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.<br></p><p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Terry Spain', '', ''),
(9, 'Bryan Dolan', 'PHP Developer', 'team-member-9.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p><p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.<br></p><p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.<br></p><p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Bryan Dolan', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `name`, `designation`, `photo`, `comment`) VALUES
(2, 'Robert Krol', 'CEO, ABC Company', 'testimonial-2.jpg', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.'),
(3, 'Sal Harvey', 'Director, DEF Company', 'testimonial-3.jpg', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.'),
(4, 'Terry Spain', 'Founder, XYZ Company', 'testimonial-4.jpg', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.'),
(5, 'John Hilton', 'CEO, AAA Company', 'testimonial-5.jpg', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.'),
(6, 'Arthur Cox', 'Chairman, RR Company', 'testimonial-6.jpg', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.'),
(7, 'David Moore', 'HR Manager, DSF Company', 'testimonial-7.jpg', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email`, `password`, `photo`, `token`, `role`, `status`) VALUES
(1, 'cf@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user-.jpg', '', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_why_choose`
--

CREATE TABLE `tbl_why_choose` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `icon` varchar(50) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_why_choose`
--

INSERT INTO `tbl_why_choose` (`id`, `name`, `content`, `icon`, `photo`) VALUES
(1, 'QUICK RESPONSE', 'Iisque persius ne sit, simul zril vix eu. Qui ne iusto epicuri suscipiantur, sit ne probo adhuc. Liber verterem interpretaris nam et, ea pro solum expetendis.', 'fa fa-clock-o', 'why-choose-1.jpg'),
(7, '100% SATISFACTION', 'Duo luptatum delicata evertitur ad. Usu te quaerendum definitiones, ne mundi volutpat duo, in dissentias temporibus pri. Duo ferri dicant definitionem te.', 'fa fa-thumbs-up', 'why-choose-7.jpg'),
(8, 'CREATIVE SERVICE', 'Amet dolor oratio ex has, stet repudiare definiebas vim ne. Id probo facilisis usu, pri aliquam omnesque cu. Vide assentior id qui, quando possim eos.', 'fa fa-globe', 'why-choose-8.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indeks untuk tabel `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indeks untuk tabel `tbl_feature`
--
ALTER TABLE `tbl_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indeks untuk tabel `tbl_page_about`
--
ALTER TABLE `tbl_page_about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_contact`
--
ALTER TABLE `tbl_page_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_event`
--
ALTER TABLE `tbl_page_event`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_faq`
--
ALTER TABLE `tbl_page_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_home`
--
ALTER TABLE `tbl_page_home`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_news`
--
ALTER TABLE `tbl_page_news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_photo_gallery`
--
ALTER TABLE `tbl_page_photo_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_portfolio`
--
ALTER TABLE `tbl_page_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_pricing`
--
ALTER TABLE `tbl_page_pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_privacy`
--
ALTER TABLE `tbl_page_privacy`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_search`
--
ALTER TABLE `tbl_page_search`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_service`
--
ALTER TABLE `tbl_page_service`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_team`
--
ALTER TABLE `tbl_page_team`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_term`
--
ALTER TABLE `tbl_page_term`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_page_testimonial`
--
ALTER TABLE `tbl_page_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indeks untuk tabel `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_portfolio_category`
--
ALTER TABLE `tbl_portfolio_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tbl_portfolio_photo`
--
ALTER TABLE `tbl_portfolio_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_pricing_table`
--
ALTER TABLE `tbl_pricing_table`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indeks untuk tabel `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indeks untuk tabel `tbl_team_member`
--
ALTER TABLE `tbl_team_member`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_why_choose`
--
ALTER TABLE `tbl_why_choose`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_feature`
--
ALTER TABLE `tbl_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_about`
--
ALTER TABLE `tbl_page_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_contact`
--
ALTER TABLE `tbl_page_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_event`
--
ALTER TABLE `tbl_page_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_faq`
--
ALTER TABLE `tbl_page_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_home`
--
ALTER TABLE `tbl_page_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_news`
--
ALTER TABLE `tbl_page_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_photo_gallery`
--
ALTER TABLE `tbl_page_photo_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_portfolio`
--
ALTER TABLE `tbl_page_portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_pricing`
--
ALTER TABLE `tbl_page_pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_privacy`
--
ALTER TABLE `tbl_page_privacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_search`
--
ALTER TABLE `tbl_page_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_service`
--
ALTER TABLE `tbl_page_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_team`
--
ALTER TABLE `tbl_page_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_term`
--
ALTER TABLE `tbl_page_term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_page_testimonial`
--
ALTER TABLE `tbl_page_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_portfolio_category`
--
ALTER TABLE `tbl_portfolio_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_portfolio_photo`
--
ALTER TABLE `tbl_portfolio_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tbl_pricing_table`
--
ALTER TABLE `tbl_pricing_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_team_member`
--
ALTER TABLE `tbl_team_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_why_choose`
--
ALTER TABLE `tbl_why_choose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
