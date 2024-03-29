<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge" />
		<link href="https://fonts.googleapis.com/css?family=Roboto|Space+Mono&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
		<link rel="stylesheet" href="./style1.css" />
		<script src="https://code.jquery.com/jquery-3.4.1.js"> </script>
		<title> Stadia of Olympus </title>
			<link rel="shortcut icon" href="./img/logo.ico" />
	</head>

	<body>
		<?php
		session_start();
		if(isset($_SESSION['uid'])){
			 header("Location: games.html");
		}
		?>

		<header class="h">
			<div class="logo-container">
				<img src="./img/logo.png" alt="logo" class="sdo" />
				<h4 class="logo" style="padding-top:1vh;">Stadia of Olympus</h4>
			</div>
			<nav class="navigator">
				<ul class="nav-link">
					<li><a class="nav-link login-button" href="#">LOGIN / SIGN UP</a></li>
					<li><a class="nav-link about-button" href="#bottom">CONTACT US</a></li>
					<li><a class="nav-link contact-button" href="aboutus.html">ABOUT US</a></li>
				</ul>
			</nav>
		</header>

		<main>

			<section class="presentation">
				<div class="introduction">
					<div class="intro-text1">
						<h1>The Most Advanced Tournament Engine </h1>
						<p>
							With our state-of-the-art tournament structures, we provide a professional-ready solution for esport organizers to create and manage their competitions.
						</p>
					</div>
				</div>
				<div class="cover">
					<img class="dota1" src="./img/d5.png" alt="sickMonster" />
				</div>
			</section>

			<section class="presentation">
				<div class="cover">
					<img class="pubg" src="./img/fn1.png" alt="sickMonster" />
				</div>
				<div class="introduction">
					<div class="intro-text2">
						<h1>An All-Inclusive Participant Management System </h1>
						<p>
							Our participant functionalities alleviate the organizer’s questions of registrations and data, while giving players a good experience.
						</p>
					</div>
				</div>
			</section>

			<section class="presentation">
				<div class="introduction">
					<div class="intro-text1">
						<h1>Find your game and compete </h1>
						<p>
							A one click solution where players can easily find the best event happening near them and compete with thousand other players.						</p>
					</div>
				</div>
				<div class="cover">
					<img class="dota2" src="./img/apex.png" alt="sickMonster" />
				</div>
			</section>
			<div class="one">
				<img class="grad-hex" src="./img/1.svg" alt="" />
				<img class="right-hex" src="./img/2.svg" alt="" />
				<img class="left-hex" src="./img/3.svg" alt="" />
				<!--<img class="pink-hex" src="./img/4.svg" alt="" />-->
			</div>
			<div class="two">
					<img class="grad-hex" src="./img/1.svg" alt="" />
					<img class="left-hex" src="./img/3.svg" alt="" />
			</div>
			<div class="three">
					<img class="grad-hex" src="./img/1.svg" alt="" />
					<img class="right-hex" src="./img/2.svg" alt="" />
					<img class="pink-hex" src="./img/4.svg" alt="" />
			</div>

			<div class="cta">
						<button class="cta-join">JOIN</button>
			</div>

			<div class="bg-modal">
				<div class="modal-contents">
					<div class="signup">SIGN UP</div>
					<div class="login">LOGIN</div><br>
					<div class="close">+</div>
					<div class="sign-up-form">

							<form action="signup.php" method="POST" >
								<ul class="user">
									<li class="user2"><i class="fa fa-user "></i></li>
									<li class="user1"><input class="user4" type="text" name="uname" placeholder="Name" required></li>
								</ul>

								<ul class="email">
									<li class="email2"><i class="fa fa-envelope"></i></li>
								<li class="email1"><input class="email4" type="email" name="mail" placeholder="Email" required></li>
								</ul>

								<ul class="pass">
										<li class="pass2"><i class="fa fa-lock"></i></li>
										<li class="pass1"><input class="pass4" type="password" placeholder="Password" name="pass" required></li>
								</ul>


								<button type="submit" class="submit-signup-button" value="submit"> SUBMIT </button>
							</form>

					</div>



					<div class="login-form">


						<form action="login.php" method="POST">
							<ul class="email">
								<li class="email2"><i class="fa fa-envelope"></i></li>
							<li class="email1"><input class="email4" type="email" placeholder="E-Mail" name= "email"></li>
							</ul>

							<ul class="pass">
									<li class="pass2"><i class="fa fa-lock"></i></li>
									<li class="pass1"><input class="pass4" type="password" placeholder="Password" name="password"></li>
							</ul>

							<button href="#" class="submit-login-button">Login</button>
						</form>


					</div>

					<div class="contact-us">
						<form action="mail.php" method="POST">
						<ul class="user">
							<li class="user2"><i class="fa fa-user "></i></li>
							<li class="user1"><input class="user4" type="text" name="user" placeholder="Name"></li>
						</ul>

						<ul class="email">
							<li class="email2"><i class="fa fa-envelope"></i></li>
						<li class="email1"><input class="email4" type="email" name="usermail" placeholder="E-Mail"></li>
						</ul>

						<textarea rows="8" class="feedback" placeholder="Your feedback" name="feedback"></textarea>

						<button href="#" class="submit-feedback-button">SEND</button>
					</form>

					</div>

				</div>

			</div>
		</main>

	<footer class="social-footer" >
  	<div id="bottom" class="social-footer-icons">
    <ul class="linkk">
      <li><a class="linkk" href="https://www.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
      <li><a class="linkk" href="https://www.instagram.com/?hl=en"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
      <li><a class="linkk" href="https://www.github.com/kaushikkateel"><i class="fa fa-github" aria-hidden="true"></i></a></li>
      <li><a class="linkk" href="https://twitter.com/?lang=en"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
     </ul>
		<ul class="feedbackdiv" >
			<li><a class="feedbackdiv2"  id='f'href="#">feedback</a></li>
		</ul>
  </div>

</footer>

<script	src="./main.js">

</script>


	</body>
</html>
