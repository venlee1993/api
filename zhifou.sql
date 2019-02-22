-- --------------------------------------------------------
-- 主机:                           192.168.10.10
-- 服务器版本:                        5.5.57-log - Source distribution
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.5.0.5278
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 zhifou 的数据库结构
CREATE DATABASE IF NOT EXISTS `zhifou` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `zhifou`;

-- 导出  表 zhifou.columns 结构
CREATE TABLE IF NOT EXISTS `columns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  zhifou.columns 的数据：~10 rows (大约)
DELETE FROM `columns`;
/*!40000 ALTER TABLE `columns` DISABLE KEYS */;
INSERT INTO `columns` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Android', '2019-02-14 11:16:14', '2019-02-15 11:16:16'),
	(2, '前端', '2019-02-15 11:16:39', '2019-02-15 11:16:39'),
	(3, 'IOS', '2019-02-15 11:16:53', '2019-02-15 11:16:53'),
	(4, '产品', '2019-02-15 11:19:01', '2019-02-15 11:19:02'),
	(5, '设计', '2019-02-15 11:17:23', '2019-02-15 11:17:23'),
	(6, '工具资源', '2019-02-15 11:17:57', '2019-02-15 11:17:57'),
	(7, '阅读', '2019-02-15 11:18:05', '2019-02-15 11:18:05'),
	(8, '后端', '2019-02-14 11:18:17', '2019-02-15 11:18:17'),
	(9, '人工智能', '2019-02-15 11:18:32', '2019-02-15 11:18:32'),
	(10, '运维', '2019-02-15 11:18:41', '2019-02-15 11:18:42');
/*!40000 ALTER TABLE `columns` ENABLE KEYS */;

-- 导出  表 zhifou.comments 结构
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '留言者的ID',
  `post_id` int(11) NOT NULL COMMENT '帖子的ID',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  zhifou.comments 的数据：~0 rows (大约)
DELETE FROM `comments`;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, '这是我的第一条评论，哈哈', '2019-02-22 15:45:35', '2019-02-22 15:45:35'),
	(2, 1, 1, '我是一楼，哈哈哈哈', '2019-02-22 15:46:43', '2019-02-22 15:46:43'),
	(3, 4, 2, '什么都不知道，什么鬼鬼', '2019-02-22 15:52:42', '2019-02-22 15:52:42'),
	(4, 4, 1, '我是三楼，三楼哈哈', '2019-02-22 15:53:12', '2019-02-22 15:53:12'),
	(5, 5, 2, '什么都不知道，什么鬼鬼鬼鬼鬼鬼', '2019-02-22 15:55:21', '2019-02-22 15:55:21');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- 导出  表 zhifou.likes 结构
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '点赞用户ID',
  `likeable_id` int(11) NOT NULL COMMENT '被赞内容的ID',
  `likeable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '被赞的类型',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  zhifou.likes 的数据：~0 rows (大约)
DELETE FROM `likes`;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;

-- 导出  表 zhifou.migrations 结构
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  zhifou.migrations 的数据：~7 rows (大约)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_02_15_102952_create_posts_table', 2),
	(4, '2019_02_15_103554_create_likes_table', 3),
	(5, '2019_02_15_103844_create_comments_table', 3),
	(6, '2019_02_15_104000_create_repiles_table', 3),
	(7, '2019_02_15_111310_create_columns_table', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- 导出  表 zhifou.password_resets 结构
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  zhifou.password_resets 的数据：~0 rows (大约)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- 导出  表 zhifou.posts 结构
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  zhifou.posts 的数据：~2 rows (大约)
DELETE FROM `posts`;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `user_id`, `column_id`, `title`, `tag`, `cover`, `content`, `status`, `created_at`, `updated_at`) VALUES
	(1, 10, 7, '长连接的心跳保持设计', '链接', NULL, '<h2><a id="_0"></a>前言</h2>\n<p>TCP有两种连接场景，长连接和短连接，网络上的通信没有真实的连接，只是在通信双方保持着连接状态，通过状态的变更来表达连接的保持和释放过程；那什么是心跳保持，长连接状态下客户端和服务端为了知道对方的状态，需要定时的进行数据传输来告诉对方自己还活着，这就是心跳，本文主要讲解基于Netty的心跳保持设计。</p>\n<h2><a id="TCP_2"></a>TCP连接</h2>\n<p>每次通信后，客户端和服务端都保持连接状态，再次通信时无需新创建连接，好处就是一次连接可以进行多次数据通信，减小创建连接的开销，缺点就是需要维持连接状态，也就是连接保活。</p>\n<h4><a id="_4"></a>短连接：</h4>\n<p>每次请求都是三次握手建立连接，请求结束之后四次挥手，释放连接，优点就是简单易用，缺点就是每次通信都需要新创建连接，相比长连接开销更大。</p>\n<h2><a id="_6"></a>心跳实现方式</h2>\n<p>由于长连接下的场景，不是每时每刻都存在数据通信，那么如何在数据通信时最大可能的保证连接的可用性，就需要设计一种对于连接状态监控重连的手段，也就是连接保活</p>\n<p><img src="https://user-gold-cdn.xitu.io/2019/2/20/169089c2a8b60ff0?imageView2/0/w/1280/h/960/format/webp/ignore-error/1" alt="ffdsfd" /></p>\n<p>那么实现以上有两种方式，本文主要讨论下应用层面的实现<br />\n协议层面，即TCP的keepAlive机制，依赖于操作系统设置，实现偏底层，需要深刻的理解TCP。<br />\n应用层面，由应用本身业务逻辑实现，实现更灵活，有更好的可控性。</p>\n<h2><a id="_14"></a>应用层面的心跳实现</h2>\n<p>应用层面的实现包含两部分，客户端和服务端</p>\n<h3><a id="_16"></a>基本思路</h3>\n<ol>\n<li>客户端在和服务端成功建立连接后本地存储一个Channel集合启动一个定时任务，定时发送心跳报文到服务端接收到服务端响应报文之后更新本地Channel的时间另外一个定时任务判断Channel的时间是否超过阈值，超过则重连服务端在收到客户端的心跳请求之后更新Channel的时间服务端定时任务判断如果Channel的时间是否超过阈值，超过则断开连接</li>\n</ol>', 1, '2019-02-21 11:39:53', '2019-02-21 11:39:53'),
	(2, 10, 2, 'JavaScript函数式编程，真香之组合函数(二)', '函数式编程', NULL, '<p>JavaScript函数式编程，真香之认识函数式编程(一)</p>\n<p><mark>该系列文章不是针对前端新手，需要有一定的编程经验，而且了解 JavaScript 里面作用域，闭包等概念</mark></p>\n<h2><a id="_4"></a>组合函数</h2>\n<p>组合是一种为软件的行为，进行清晰建模的一种简单、优雅而富于表现力的方式。通过组合小的、确定性的函数，来创建更大的软件组件和功能的过程，会生成更容易组织、理解、调试、扩展、测试和维护的软件。</p>\n<p>对于组合，我觉得是函数式编程里面最精髓的地方之一，所以我迫不及待的把这个概念拿出来先介绍，因为在整个学习函数式编程里，所遇到的基本上都是以组合的方式来编写代码，这也是改变你从一个面向对象，或者结构化编程思想的一个关键点。<br />\n我这里也不去证明组合比继承好，也不说组合的方式写代码有多好，我希望你看了这篇文章能知道以组合的方式去抽象代码，这会扩展你的视野，在你想重构你的代码，或者想写出更易于维护的代码的时候，提供一种思路。</p>\n<p>组合的概念是非常直观的，并不是函数式编程独有的，在我们生活中或者前端开发中处处可见。</p>\n<p>比如我们现在流行的 SPA (单页面应用)，都会有组件的概念，为什么要有组件的概念呢，因为它的目的就是想让你把一些通用的功能或者元素组合抽象成可重用的组件，就算不通用，你在构建一个复杂页面的时候也可以拆分成一个个具有简单功能的组件，然后再组合成你满足各种需求的页面。<br />\n其实我们函数式编程里面的组合也是类似，函数组合就是一种将已被分解的简单任务组织成复杂的整体过程。<br />\n现在我们有这样一个需求：给你一个字符串，将这个字符串转化成大写，然后逆序。<br />\n你可能会这么写。</p>\n<pre><code class="lang-language">var str = \'function program\'\n\n// 一行代码搞定\nfunction oneLine(str) {\n    var res = str.toUpperCase().split(\'\').reverse().join(\'\')\n    return res;\n}\n\n// 或者 按要求一步一步来，先转成大写，然后逆序\nfunction multiLine(str) {\n    var upperStr = str.toUpperCase()\n    var res = upperStr.split(\'\').reverse().join(\'\')\n    return res;\n}\n\nconsole.log(oneLine(str)) // MARGORP NOITCNUF\nconsole.log(multiLine(str)) // MARGORP NOITCNUF\n</code></pre>\n<p>可能看到这里你并没有觉得有什么不对的，但是现在产品又突发奇想，改了下需求，把字符串大写之后，把每个字符拆开之后组装成一个数组，比如 ’aaa‘ 最终会变成 [A, A, A]。<br />\n那么这个时候我们就需要更改我们之前我们封装的函数。这就修改了以前封装的代码，其实在设计模式里面就是破坏了开闭原则。<br />\n那么我们如果把最开始的需求代码写成这个样子，以函数式编程的方式来写。</p>\n<pre><code class="lang-language">// 例 1.2\n\nvar str = \'function program\'\n\nfunction stringToUpper(str) {\n    return str.toUpperCase()\n}\n\nfunction stringReverse(str) {\n    return str.split(\'\').reverse().join(\'\')\n}\n\nvar toUpperAndReverse = 组合(stringReverse, stringToUpper)\nvar res = toUpperAndReverse(str)\n\n</code></pre>\n<h1><a id="_57"></a>参考文章</h1>\n<p><a href="www.baidu.com" target="_blank">JavaScript函数式编程之pointfree与声明式编程</a><br />\n<a href="www.sina.com" target="_blank">Understanding Currying in JavaScript</a></p>', 1, '2019-02-21 11:45:21', '2019-02-21 11:45:21'),
	(3, 5, 7, 'H5 notification浏览器桌面通知', '热热我', NULL, '<p>该通知是脱离浏览器的，即使用户没有停留在当前标签页，甚至最小化了浏览器，也会在主屏幕的右上角显示通知，然后在一段时间后消失。</p>\n<p>我们可以监听通知的显示，点击，关闭等事件,比如点击通知打开一个页面。</p>\n<p><img src="https://user-gold-cdn.xitu.io/2019/2/21/1690d8488994b0e7?imageView2/1/w/1304/h/734/q/85/format/webp/interlace/1" alt="3232" /></p>\n<pre><code class="lang-language">var options = {\n  dir: &quot;auto&quot;, // 文字方向\n  body: &quot;通知：OBKoro1评论了你的朋友圈&quot;, // 通知主体\n  requireInteraction: true, // 不自动关闭通知\n  // 通知图标 \n  icon: &quot;https://upload-images.jianshu.io/upload_images/5245297-818e624b75271127.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240&quot;\n};\nnotifyMe(\'这是通知的标题\', options);\nfunction notifyMe(title, options) {\n  // 先检查浏览器是否支持\n  if (!window.Notification) {\n    console.log(\'浏览器不支持通知\');\n  } else {\n    // 检查用户曾经是否同意接受通知\n    if (Notification.permission === \'granted\') {\n      var notification = new Notification(title, options); // 显示通知\n    } else if (Notification.permission === \'default\') {\n      // 用户还未选择，可以询问用户是否同意发送通知\n      Notification.requestPermission().then(permission =&gt; {\n        if (permission === \'granted\') {\n          console.log(\'用户同意授权\');\n          var notification = new Notification(title, options); // 显示通知\n        } else if (permission === \'default\') {\n          console.warn(\'用户关闭授权 未刷新页面之前 可以再次请求授权\');\n        } else {\n          // denied\n          console.log(\'用户拒绝授权 不能显示通知\');\n        }\n      });\n    } else {\n      // denied 用户拒绝\n      console.log(\'用户曾经拒绝显示通知\');\n    }\n  }\n}\n\n作者：OBKoro1\n链接：https://juejin.im/post/5c6df433f265da2de80f5eda\n来源：掘金\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\n</code></pre>', 1, '2019-02-22 16:03:00', '2019-02-22 16:03:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- 导出  表 zhifou.replies 结构
CREATE TABLE IF NOT EXISTS `replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL COMMENT '帖子ID',
  `user_id` int(11) NOT NULL COMMENT '留言者ID',
  `comment_id` int(11) NOT NULL COMMENT '被回复留言的ID',
  `replied_id` int(11) NOT NULL COMMENT '被回复者的ID',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  zhifou.replies 的数据：~13 rows (大约)
DELETE FROM `replies`;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` (`id`, `post_id`, `user_id`, `comment_id`, `replied_id`, `content`, `created_at`, `updated_at`) VALUES
	(14, 2, 2, 1, 1, '真真假假真真', '2019-02-22 15:47:58', '2019-02-22 15:47:58'),
	(15, 1, 3, 2, 1, '我是二楼，我骄傲了吗？', '2019-02-22 15:50:23', '2019-02-22 15:50:23'),
	(16, 2, 4, 1, 2, '真时亦假，假时亦真。。。。', '2019-02-22 15:52:08', '2019-02-22 15:52:08'),
	(17, 2, 5, 3, 4, '什么都不知道，什么鬼鬼', '2019-02-22 15:55:11', '2019-02-22 15:55:11');
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;

-- 导出  表 zhifou.users 结构
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  zhifou.users 的数据：~10 rows (大约)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `created_at`, `updated_at`) VALUES
	(1, 'Claud Gerlach', 'kohler.ollie@example.org', '$2y$10$XAgQN6WdgyEnz6GHkVVfPurA8M2h2OfIzgHb09sYW0DCKw8SkNiiW', 'https://lorempixel.com/120/480/cats/?67997', '2019-02-15 10:12:51', '2019-02-15 10:12:51'),
	(2, 'Katlyn Kuhn', 'sheila.lindgren@example.org', '$2y$10$nhsuRki90GSSgEJSNS6hVOwpoS7WP/wrSPgHzdj8CSy3malterAEO', 'https://lorempixel.com/120/480/cats/?36333', '2019-02-15 10:12:51', '2019-02-15 10:12:51'),
	(3, 'Mr. Caleb Schimmel MD', 'wintheiser.mia@example.org', '$2y$10$WEo.atg1a6RXDqE8EtSYCO/0fnhxy0uIPrNadR52zocf2Nwf2WIY2', 'https://lorempixel.com/120/480/cats/?37293', '2019-02-15 10:12:51', '2019-02-15 10:12:51'),
	(4, 'Ned Lueilwitz', 'anastasia44@example.net', '$2y$10$ltm45dH9pImr6GQTwBysW.fgtNsazEuEmkM4l/mY2.Ac7ffXu0WSa', 'https://lorempixel.com/120/480/cats/?51719', '2019-02-15 10:12:51', '2019-02-15 10:12:51'),
	(5, 'Alycia Kuhn', 'fritz.raynor@example.org', '$2y$10$vX52xN9i2HA4V1aJTdnuLeM3Xa0xOAVint4tUm72qBFITAyJJpllq', 'https://lorempixel.com/120/480/cats/?56745', '2019-02-15 10:12:51', '2019-02-15 10:12:51'),
	(6, 'Amya Kessler', 'herman.sabryna@example.org', '$2y$10$IFubqDIEaelxUEbn9b1C..Uj6tIadH14OZV70mSexG1rwgCVP7UdS', 'https://lorempixel.com/120/480/cats/?11575', '2019-02-15 10:12:51', '2019-02-15 10:12:51'),
	(7, 'Jewel Johnston', 'chaim60@example.net', '$2y$10$DEzolrEfrfeh/Ckrrsd4h.02njkwqHzLfIN.TyIz1vMLZq5tn2iDm', 'https://lorempixel.com/120/480/cats/?68469', '2019-02-15 10:12:51', '2019-02-15 10:12:51'),
	(8, 'Tess Crooks', 'malvina.zemlak@example.net', '$2y$10$eRBe/beSBSQXj4xnQghnR.mUAKLFXOn3w1rA3ZdIPbERlx5W.c/pa', 'https://lorempixel.com/120/480/cats/?66963', '2019-02-15 10:12:51', '2019-02-15 10:12:51'),
	(9, 'Tyler Price', 'jarret.kshlerin@example.org', '$2y$10$EkXmumuHaN.I3VPKyH.GVOviGfFbBSeA5eOtKW880igumyZnelEfu', 'https://lorempixel.com/120/480/cats/?68580', '2019-02-15 10:12:51', '2019-02-15 10:12:51'),
	(10, 'venlee', '228304172@qq.com', '$2y$10$d8OObTsmUPVdALYVeLUwb.mtWRM8FiKyDgsMZOpXcknLJ7fT7Bd26', 'https://lorempixel.com/120/480/cats/?82341', '2019-02-15 10:12:51', '2019-02-15 10:12:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
