<%@ page import="org.springframework.ui.Model" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ru">
	<head>
		<title>${title}</title>
		<meta name="description" content="${description}"/>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="yandex-verification" content="c85cf43ea52c6174" />
		<meta name="google-site-verification" content="jqTOSWJ8QuhcenMvotX8akgbrGxgvmFHIuHlXp-HzRI" />
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
		<link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon">

		<!-- Yandex.RTB -->
		<script>window.yaContextCb=window.yaContextCb||[]</script>
		<script src="https://yandex.ru/ads/system/context.js" async></script>
	</head>
	<body class="is-preload homepage">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<header id="header" class="container">

						<!-- Logo -->
							<div id="logo">
								<h1><a href="/">EasyCalc</a></h1>
								<span>для агентов по недвижимости и юристов</span>
							</div>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li class="current"><a href="/">С чего начать?</a></li>
									<li>
										<a href="#">Калькуляторы</a>
										<ul>
											<li><a href="/overstatement/">Расчёт завышения</a></li>
											<li><a href="/part/">Расчёт доли - опека</a></li>
											<li><a href="/motherCapital/">Расчёт долей по МК</a></li>
											<li><a href="/commission/">Расчёт услуг</a></li>
										</ul>
									</li>
								</ul>
							</nav>

					</header>

					<div class="box container" style="margin-top: 40px; padding: 0px">
						<!-- Yandex.RTB R-A-2121732-1 -->
						<div id="yandex_rtb_R-A-2121732-1"></div>
						<script>window.yaContextCb.push(()=>{
							Ya.Context.AdvManager.render({
								renderTo: 'yandex_rtb_R-A-2121732-1',
								blockId: 'R-A-2121732-1'
							})
						})</script>
					</div>
				</div>


				<jsp:include page="${includeIndex}"/>


			<!-- Footer -->
				<div id="footer-wrapper">
					<footer id="footer" class="container">
						<div class="row">
							<div class="col-3 col-6-medium col-12-small">

								<!-- Links -->
									<section class="widget links">
										<h3>Наши проекты</h3>
										<ul class="style2">
											<li><a href="https://law-notes.ru">Юридические заметки</a></li>
											<li><a href="https://law-treaty.ru">Конструктор соглашений</a></li>
											<li><a href="https://thebestsoft.ru">Наши WEB инструменты</a></li>
										</ul>
									</section>

							</div>
							<div class="col-3 col-6-medium col-12-small">

								<!-- Links -->
									<section class="widget links">
										<h3>Есть идеи для WEB приложений?</h3>
										<ul class="style2">
											<li>Пишите! admin@law-notes.ru</li>
										</ul>
									</section>

							</div>
							<div class="col-3 col-6-medium col-12-small">

								<!-- Links -->
									<%--<section class="widget links">
										<h3>Здесь должна быть шутка</h3>
										<ul class="style2">
											<li>Но её нет..</li>
										</ul>
									</section>--%>

							</div>
							<div class="col-3 col-6-medium col-12-small">

								<!-- Contact -->
									<section class="widget contact last">
										<h3>Контакты</h3>
										<p>law-notes.ru<br />
										admin@law-notes.ru<br />
										</p>
									</section>

							</div>
						</div>

						<div class="row">
							<div class="col-12">
								<div id="copyright">
									<ul class="menu">
										<li>&copy; 2022. Все права защищены</li><li>Design: HTML5 UP</li>
									</ul>
								</div>
							</div>
						</div>
					</footer>
				</div>

			</div>

		<!-- Scripts -->

			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="/resources/assets/js/browser.min.js"></script>
			<script src="/resources/assets/js/breakpoints.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<script src="/resources/assets/js/main.js"></script>

		<!-- Yandex.Metrika counter -->
		<script type="text/javascript" >
			(function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
				m[i].l=1*new Date();
				for (var j = 0; j < document.scripts.length; j++) {if (document.scripts[j].src === r) { return; }}
				k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
			(window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

			ym(91205176, "init", {
				clickmap:true,
				trackLinks:true,
				accurateTrackBounce:true,
				webvisor:true
			});
		</script>
		<noscript><div><img src="https://mc.yandex.ru/watch/91205176" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
		<!-- /Yandex.Metrika counter -->
	</body>
</html>