<?php

header('Content-Type: text/html; charset=utf-8');

$header = <<<PL

<!DOCTYPE HTML>
<html lang="pl">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Robert Saternus - portfolio webdevelopera</title>
    <meta name = "description" content ="Portfolio freelancera - webdevelopera. Tworzenie stron internetowych, wizytówek, portfolia, sklepy internetowe, blogi, aplikacje. Potrzebujesz stworzyć wyjątkową stronę, serwis lub sklep internetowy. Zajrzyj tutaj!"/>
    <meta name ="keywords" content = "portfolio webdevelopera, tworzenie stron internetowych, sklep internetowy, strona www, serwis internetowy, portfolio"/>
    <meta name="author" content="Robert Saternus">

    <link href="http://fonts.googleapis.com/css?family=Lato:400,900&subset=latin,latin-ext" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/icon">

    <script src="assets/sliderparallax/js/modernizr.custom.28468.js"></script>
    <link rel="stylesheet" type="text/css" href="css/mainpage.css">
    <link rel="stylesheet" type="text/css" href="assets/sliderparallax/css/parallax-slider.css">

</head>

PL;


$header_content = <<<PL

    <body>

	<header id="home">
		<nav class="navigation">
			<ul>
				<li class="scroll"><a href="#home">HOME</a></li>
				<li class="scroll"><a href="#kim">KIM JESTEM?</a></li>
				<li class="scroll"><a href="#technologie">TECHNOLOGIE</a></li>
				<li class="special scroll"><a href="#projekty">PROJEKTY</a></li>
				<li class="scroll"><a href="#kontakt">KONTAKT</a></li>
			</ul>
		</nav>

		<div class="burger">
			<button type="button" class="tcon tcon-menu--xbutterfly" aria-label="toggle menu">
				<span class="tcon-menu__lines" aria-hidden="true"></span>
				<span class="tcon-visuallyhidden">toggle menu</span>
			</button>

			<div class="traggle">
				<ul>
					<li class="scroll"><a href="#home">HOME</a></li>
					<li class="scroll"><a href="#kim">KIM JESTEM?</a></li>
					<li class="scroll tech"><a href="#technologie">TECHNOLOGIE</a></li>
					<li class="special scroll"><a href="#projekty">PROJEKTY</a></li>
					<li class="scroll"><a href="#kontakt">KONTAKT</a></li>
				</ul>
			</div>
		</div>



		<div id="imie">
			<h1>Robert Saternus <br /><strong><span>portfolio</span> webdevelopera</strong></h1>
			<a class="button scroll" href="#projekty"> ZOBACZ PROJEKTY  </a>
		</div>

	</header>



PL;

$section_kim = <<<PL

    <section id="kim">
    <div class="container">
        <div class="row">
            <div class="omnie col-md-6 col-xs-12">
                <h2>Kila słów <span>o mnie</span></h2>
                <p>Student geofizyki, <span>webdeveloper z pasji</span>. Na co dzień freelancer, który tworzy strony i serwisy internetowe, co sprawia mu ogromną radość. Głównie tworzy kod w technologiach <span>front-end-owych</span> ale w głębi duszy jest ogromnym fanem języka <span>PHP</span>. Od czasu do czasu zajmuje się również prostą grafiką</p> <p>W wolnych chwilach podróżuje po świecie, biega w maratonach i uwielbia wszystko co zwiększa poziom adrenaliny.</p><p>Zobacz co piszą o mnie osoby, z którymi współpracowałem: <a href="https://www.freelancer.com/u/robertsaternus.html#resume" target="_blank">Robert Saternus - opinie</a></p>
            </div>

            <div class="col-md-6 col-xs-12">
                <img src="img/o-mnie.JPG" alt="Robert Saternus"/>
            </div>
        </div>
    </div>
</section>

PL;

$section_tech = <<<PL
    <section id="technologie">
    <div class="container-fluid">
        <div class="row">
            <div class="parallax col-xs-12">
                <h2><span>Technologie</span>, z którymi pracuję</h2>
            </div>

            <div id="da-slider" class="da-slider">
                <div class="col-md-6 col-xs-12 da-slide">
                    <h2>Front-end</h2>
                    <p>Swoje projekty koduję w zastosowaniu o najnowsze technologie, takie jak <span>HTML5, CSS3 czy JavaScript</span>. Dzięki czemu strony, które tworzę są zgodne z najnowszymi wytycznymi światowych organizacji oraz są przyjazne dla wyszukiwarek.</p>
                    <div class="da-img button"><img class="img-responsive" src="img/html5-css-javascript.png" alt="html5 css3 javascript" /></div>
                </div>
                <div class="da-slide">
                    <h2>Back-end</h2>
                    <p>Język <span>PHP</span> to technologia, którą fascynuję się najbardziej. Umożliwia mi tworzenie niezwykłych rzeczy w wirtualnym świecie a wykorzystanie frameworka <span> Symfony</span> umożliwia mi zadowolenie nawet najbardziej "niecierpliwych" klientów </p>
                    <div class="da-img button"><img  class="img-responsive"  src="img/php.png" alt="PHP" /></div>
                </div>
                <div class="da-slide">
                    <h2>Systemy CMS</h2>
                    <p>Specjalizuję się w systemie <span>Wordpress</span> i właśnie na tą platformę najchętniej wykonuję projekty od stron wizytówek po sklepy online. Natomiast jeżeli potrzebujesz bardziej złożonego sklepu internetowego, chętnie wykonam go na platformie <span>Prestashop</span>. Wszystko to pozwoli Ci na bardzo łatwe aktualizacje zawartości stworzonego serwisu, bez znajomości programowania</p>
                    <div class="da-img"><img  class="img-responsive" src="img/wordpress.png" alt="CSM" /></div>
                </div>
                <div class="da-slide">
                    <h2>Grafika</h2>
                    <p>Choć nie uważam się za grafika, to również zdarza mi się tworzenie szblonów jak i graficznych elementów na strony komercyjne. W tym celu wykorzystuję takie programy jak <span>Photoshop i Ilustrator</span></p>
                    <div class="da-img"><img  class="img-responsive" src="img/photo_ilu.png" alt="photoshop&ilustrator" /></div>
                </div>
                <nav class="da-arrows">
                    <span class="da-arrows-prev"></span>
                    <span class="da-arrows-next"></span>
                </nav>
            </div>
        </div>
    </div>
</section>

PL;

$section_projekty = <<<PL
     <section id="projekty">
    <div class="container">
        <div class="row">
            <div class="parallax col-xs-12">
                <h2>Moje najnowsze <span>projekty</span></h2>
            </div>

            <!--PROJEKT I-->
            <div class="row row1">
                <div class="col-md-6 computer parallax_left">
                    <img src="img/pidsthailand.jpg" alt="PIDS Thailand - szkoła nurkowania" class="img-responsive" />
                </div>

                <div class="col-md-6 project_desc parallax_right">
                    <h3>Centrum nurkowania w Tajlandii</h3>
                    <p>Projekt dla szkoły nurkowania z Tajlandii. W rzeczywistości jest to połączenie strony firmowej, bazy wiedzy oraz sklepu internetowego. Całość oparta na systemie WordPress (system sklepowy: WooCommerce). Dodatkowo zaimplementowany został blog oraz forum dla pracowników i klientów. Odpowiadam za stworzenie serwisu, administrację oraz SEO.</p>
                    <ul>
                        <li>HTML 5</li>
                        <li>CSS 3</li>
                        <li>PHP</li>
                        <li>jQuery</li>
                        <li>Wordpress</li>
                        <li>WooCommerce</li>
                        <li>Administracja</li>
                        <li>SEO</li>
                    </ul>
                    <a class="button" href="http://pidsthailand.com/" target="_blank"> Zobacz projekt </a>
                </div>
            </div>

            <div class="separator">
                <div class="mask"></div>
            </div>


            <!--PROJEKT II-->
            <div class="row row2">
                <div class="col-md-6 col-md-push-6 parallax_right computer">
                    <img src="img/freelancelot.jpg" alt="FreeLancelot - podróże freelancera" class="img-responsive" />
                </div>

                <div class="col-md-6 col-md-pull-6 project_desc">
                    <h3>FreeLancelot.pl - projekt podróżniczy</h3>
                    <p>Strona FreeLancelot.pl to projekt blogowy o podróżach, niezależności oraz spełnianiu marzeń. Strona stworzona w całości przeze mnie od projektu graficznego aż do stworzenia autorskiego szablonu WordPress. Dodatkowo wdrożyłem kilka własnych plugin-ów. Ponadto jestem administratorem oraz odpowiadam za dalszy rozwój projektu.</p>
                    <ul>
                        <li>HTML 5</li>
                        <li>SCSS</li>
                        <li>jQuery</li>
                        <li>Bootstrap</li>
                        <li>PHP</li>
                        <li>Wordpress - tworzenie motywów</li>
                        <li>Administracja</li>
                        <li>SEO</li>
                        <li>Photoshop</li>
                    </ul>
                    <a class="button" href="http://freelancelot.pl" target="_blank" >Zobacz projekt</a>
                </div>
            </div>

            <div class="separator">
                <div class="mask"></div>
            </div>

            <!--PROJEKT III-->
            <div class="row row3">
                <div class="col-md-6 parallax_left computer">
                    <img src="img/elektromaniak.jpg" alt="Projekt Elektromaniak.pl" class="img-responsive" />
                </div>

                <div class="col-md-6 project_desc">
                    <h3>Elektromaniak - sklep dla elektroników</h3>
                    <p>Sklep Elektromaniak.pl to serwis dla pasjonatów elektroniki. System został oparty o platformę PrestaShop. Odpowiadam za dostosowanie szablonu pod wymagania klienta oraz całą konfigurację serwisu. Zaimplementowałem również system blogowy oraz forum. Dodatkowo wykonałem migrację danych (produkty, klienci, zamówienia itp.) ze starego sklepu klienta.</p>
                    <ul>
                        <li>HTML 5</li>
                        <li>CSS 3</li>
                        <li>JavaScript</li>
                        <li>SQL</li>
                        <li>E-commerce</li>
                        <li>PrestaShop</li>
                    </ul>
                    <a class="button" href="http://elektromaniak.pl/" target="_blank">Zobacz projekt</a>
                </div>
            </div>

            <div class="separator">
                <div class="mask"></div>
            </div>

            <!--PROJEKT IV-->
            <div class="row row4">
                <div class="col-md-6 col-md-push-6 parallax_right computer">
                    <img src="img/bwhs_mocaps.jpg" alt="Projekt BWHS" class="img-responsive" />
                </div>

                <div class="col-md-6 col-md-pull-6 project_desc">
                    <h3>BWHS - Kancelaria adwokacka</h3>
                    <p>Strona BWHS to projekt stworzony dla kancelarii prawniczej. Całość oparta o system WordPress. Moim zadaniem było dostosowanie szablonu pod projekt graficzny dostarczony przez firmę web-bespokers.com. Dodatkowo również wykonałem wielojęzyczność serwisu oraz przeniesienie całej treści ze starej strony klienta.</p>
                    <ul>
                        <li>HTML5</li>
                        <li>CSS3</li>
                        <li>jQuery</li>
                        <li>Bootstrap</li>
                        <li>Wordpress</li>
                        <li>Genesis framework</li>
                        <li>Wielojęzyczność</li>
                    </ul>
                    <a class="button" href="http://web-programista.pl/bwhs/" target="_blank" >Zobacz projekt</a>
                </div>
            </div>

            <div class="separator">
                <div class="mask"></div>
            </div>

            <!--PROJEKT V-->
            <div class="row row5">
                <div class="col-md-6 parallax_left computer">
                    <img src="img/gosbud_mocaps.jpg" alt="Firma budowlana" class="img-responsive" />
                </div>

                <div class="col-md-6 project_desc">
                    <h3>Firma budowlana GOS-BUD</h3>
                    <p>Projekt zrealizowany dla firmy budowlanej Gos-Bud z Sulejowa. Strona jest oparta o system zarządzania treścią Wordpress, co pozwala właścicielom strony na łatwą modyfikację treści oraz dodawanie nowych realizacji budowlanych do portfolia na stronie. Projekt bazujący na gotowym szablonie. Moim zadaniem było zaprojektować stronę oraz zmodyfikować szablon pod wymagania klienta.</p>
                    <ul>
                        <li>HTML5</li>
                        <li>CSS3</li>
                        <li>JavaScript</li>
                        <li>Wordpress</li>
                        <li>Photoshop</li>
                    </ul>
                    <a class="button" href="http://gos-bud.com.pl/" target="_blank" >Zobacz projekt</a>
                </div>
            </div>
        </div>
    </div>
</section>

PL;

$section_wspolpraca = <<<PL

    <section id="wspolpraca">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-6 col-sm-5 hidden-xs"></div>
            <div class="col-lg-4 col-md-6 col-sm-7 col-xs-12">
                <h2>Zapraszam do współpracy</h2>
                <p>Jako wolny strzelec, nie muszący opłacać biura czy pracowników, oferuję bardzo konkurencyjne ceny. Specjalizuję się w <span> systemie Wodpress (tworzenie szablonów, pluginów)</span>. Wykonuję praktycznie każdy rodzaj stron:<span> wizytówki firm, sklepy internetowe, blogi, portfolia</span> oraz <span>aplikacje webowe.</span> </p>
            </div>
        </div>
    </div>
</section>

PL;

$section_kontakt = <<<PL
    <section id="kontakt">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6">
                <h2>KONTAKT</h2>
                <p><span>email:</span> robert.saternus<span>@</span>gmail.com</p>
                <p><span>skype:</span> roberto93123</p>
            </div>

            <div class="col-xs-12 col-sm-6">
                <form class="form-horizontal" method="post" action="index.php#kontakt">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="text" class="form-control" id="name" name="name" placeholder="Imię i nazwisko" value="">
                            <input type="email" class="form-control" id="email" name="email" placeholder="Twój adres e-mail" value="">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <textarea class="form-control" rows="4" name="wiadomosc" placeholder="Treść wiadomości"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input id="submit" name="submit" type="submit" value="WYŚLIJ" class="btn btn-primary">
                        </div>
                    </div>

                    <input type="hidden" name="checker" value="1" />
                </form>
            </div>
        </div>
    </div>
</section>
PL;

$footer = <<<PL

	<footer> &copy; Projekt i realizacja: Robert Saternus 2016</footer>

	<div class="flag">
        <a href="http://localhost/portfolio/en"><img src="img/English_flag.jpg" alt="Flaga eng"></a>
    </div>

<script src="js/jquery-2.1.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="assets/sliderparallax/js/jquery.cslider.js"></script>
<script src="js/jquery.scrollTo-1.4.3.1-min.js"></script>
<script src="js/transformico.js"></script>
<script src="js/jquery.bgswitcher.js"></script>
<script src="js/main_script.js"></script>

</body>

</html>
PL;


?>