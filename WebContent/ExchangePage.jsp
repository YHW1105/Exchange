<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	Phantom by HTML5 UP
	html5up.net | @ajlkn
	Free forEach personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Exchange List</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="_homePage/assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="_homePage/assets/css/main.css" />
			<link rel="stylesheet" href="_homePage/assets/css/popup.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="_homePage/assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="_homePage/assets/css/ie8.css" /><![endif]-->
	</head>
	<body>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="inner">

							<!-- Logo -->
								<a href="#" class="logo">
									<span class="symbol"><img src="_homePage/images/logo.svg" alt="" /></span><span class="title">Exchange</span>
								</a>

							<!-- Nav -->
								<nav>
									<ul>
										<li><a href="#menu">Menu</a></li>
									</ul>
								</nav>

						</div>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<h2>Menu</h2>
						<ul>
							<li><a href="#ING">進行中交流</a></li>
							<li><a href="#YA">受到的邀請</a></li>
							<li><a href="#GET">送出的邀請</a></li>
							<li><a href="Home.do">個人頁面 ></a></li>
							<li><a href="../首頁/cnangePwd.html">帳戶管理 ></a></li>
							<li><a href="Index.jsp">登出 </a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<header>
								<h1>交流列表</h1>
							</header>
							<hr><br>
							<h3 id="ING">進行中交流</h3>
							<section class="tiles">
                                <c:forEach var="exchange" items="${Exchanging}" varStatus="exchangeLoopCount">
                                <article class="style${exchangeLoopCount.count%5+1}">
									<span class="image">
										<a href="Skill.do?mark=5&id=${exchange.othersSkill.skillId}">
											<img src="_homePage/images/pic04.jpg" alt="" />
										</a>
									</span>

                                    <h2 class = "special">${exchange.othersSkill.type.getTypeName()}</h2>

									<div>
										<h2 style="margin:1em;">以${exchange.mySkill.type.getTypeName()}技能交換
												<input src="_homePage/images/star.png" type="image" onclick="window.location.href='Skill.do?mark=5&id=${exchange.othersSkill.skillId}#popup2'" style = "position: absolute; right:4%; bottom:6%;">
												<input src="_homePage/images/chat.png" type="image" onclick="window.location.href='../messaging/index.html'" style = "position: absolute; right:16%; bottom:5%;">
										</h2>
									</div>
								</article>
                                </c:forEach>
							</section>
							<hr><br>
							<h3 id="YA">受到的邀請</h3>
							<section class="tiles">
                                <c:forEach var="receiveInvitation" items="${ReceiveInvitation}">
                                    <article class="style5">
                                        <span class="image">
                                            <a href="Skill.do?mark=2&id=${receiveInvitation.othersSkill.skillId}">
                                                <img src="_homePage/images/pic04.jpg" alt="" />
                                            </a>
                                        </span>

                                        <h2 class = "special">${receiveInvitation.othersSkill.type.getTypeName()}</h2>

                                        <div>
                                            <h2 style="margin:1em;">${receiveInvitation.mySkill.type.typeName}技能受到邀請
                                                    <input src="_homePage/images/no.png" type="image" onclick="window.location.href='Invitation.do?mark=0&sdr=${receiveInvitation.othersSkill.skillId}&rcv=${receiveInvitation.mySkill.skillId}'" style = "position: absolute; right:4%; bottom:6%;">
                                                    <input src="_homePage/images/yes.png" type="image" onclick="window.location.href='Invitation.do?mark=1&sdr=${receiveInvitation.othersSkill.skillId}&rcv=${receiveInvitation.mySkill.skillId}'"" style = "position: absolute; right:16%; bottom:5%;">
                                            </h2>
                                        </div>
                                    </article>
                                </c:forEach>
							</section>
							<hr><br>
							<h3 id="GET">送出的邀請</h3>
							<section class="tiles">
                                 <c:forEach var="sendInvitation" items="${SendInvitation}">
                                    <article class="style0">
                                        <span class="image">
                                            <a href="Skill.do?mark=2&id=${sendInvitation.othersSkill.skillId}">
                                                <img src="_homePage/images/pic04.jpg" alt="" />
                                            </a>
                                        </span>

                                        <h2 class = "special">${sendInvitation.othersSkill.type.getTypeName()}</h2>

                                        <div>
                                            <h2 style="margin:1em;">以${sendInvitation.mySkill.type.typeName}技能邀請中
                                                    <input src="_homePage/images/no.png" type="image" onclick="window.location.href='Invitation.do?mark=0&sdr=${sendInvitation.othersSkill.skillId}&rcv=${sendInvitation.mySkill.skillId}'" style = "position: absolute; right:4%; bottom:6%;">

                                            </h2>
                                        </div>
                                    </article>
                                 </c:forEach>
							</section>
						</div>
					</div>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<section>
								<h2>Get in touch</h2>
								<forEachm method="post" action="#">
									<div class="field half first">
										<input type="text" name="name" id="name" placeholder="Name" />
									</div>
									<div class="field half">
										<input type="email" name="email" id="email" placeholder="Email" />
									</div>
									<div class="field">
										<textarea name="message" id="message" placeholder="Message"></textarea>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send" class="special" /></li>
									</ul>
								</forEachm>
							</section>
							<section>
								<h2>Follow</h2>
								<ul class="icons">
									<li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
									<li><a href="#" class="icon style2 fa-github"><span class="label">GitHub</span></a></li>
									<li><a href="#" class="icon style2 fa-500px"><span class="label">500px</span></a></li>
									<li><a href="#" class="icon style2 fa-phone"><span class="label">Phone</span></a></li>
									<li><a href="#" class="icon style2 fa-envelope-o"><span class="label">Email</span></a></li>
								</ul>
							</section>
							<ul class="copyright">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="_homePage/assets/js/jquery.min.js"></script>
			<script src="_homePage/assets/js/skel.min.js"></script>
			<script src="_homePage/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="_homePage/assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="_homePage/assets/js/main.js"></script>

	</body>
</html>