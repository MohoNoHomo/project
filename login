<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
	<meta charset="utf-8">
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial=scale=1.0">
	<style>
		/* set your font here */
		@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
		@font-face
		{
		  font-family: 'xxx';
		  font-style: normal;
		  font-weight: 100;
		  font-family: 'Poppins', sans-serif;
		}
		*{
 			margin: 0;
  			padding: 0;
  			box-sizing: border-box;
  			font-family: 'Poppins', sans-serif;
		}
		html,body{
			display:grid;
			height: 100%;
			width: 100%;
			place-items: center;
			background: -webkit-linear-gradient(left,#440a67,#93329e)
		}
		
		.wrapper{
			overflow: hidden;
			max-width: 390px;
			background: #fff;
			padding: 30px;
			border-radius: 5px;
			box-shadow: 0px 15px 20px rgba(0,0,0,0,1)
		}

		.wrapper .title-text{
			display: flex;
			width: 200%;
		}

		.wrapper .title-text .title{
			width: 50%;
			font-size: 35px;
			font-weight: 600;
			text-align: center;
			transition: all 0.6s cubic-bezier(0.68,-0.55,0.265,1.55);
		}

		.wrapper .form-container{
			width: 100%;
			overflow: hidden;
		}

		.form-container .slide-controls{
			position: relative;
			display: flex;
			height: 50px;
			width: 100%;
			overflow: hidden;
			border-radius: 5px;
			margin: 30px 0 10px 0;
			justify-content: space-between;
			border: 1px solid lightgrey;
		}

		.slide-controls .slide{
		  height: 100%;
		  width: 100%;
		  z-index: 1;
		  color: #fff;
		  font-size: 18px;
		  font-weight: 500;
		  text-align: center;
		  line-height: 48px;
		  cursor: pointer;
		  transition: all 0.6s ease;
		}

		.slide-controls label.signup{
		  color: #000;
		}

		.slide-controls .slide-tab{
		  position: absolute;
		  height: 100%;
		  width: 50%;
		  left: 0;
		  z-index: 0;
		  border-radius: 5px;
		  transition: all 0.6s cubic-bezier(0.68, -0.55,0.265, 1.55);
		  background: -webkit-linear-gradient(left,#440a67,#93329e)
		}

		input[type="radio"]{
  		display: none;
		}

		#signup:checked ~ .slide-tab{
  		left: 50%;
		}

		#signup:checked ~ .signup{
		  color: #fff;
		  cursor: default;
		  user-select: none;
		}

		#signup:checked ~ .login{
		  color: #000;
		  cursor: default;
		  user-select: none;
		}

		.form-container .form-inner{
			display: flex;
			width: 200%;
		}

		.form-container .form-inner form{
			width: 50%;
			transition: all 0.6s cubic-bezier(0.68, -0.55,0.265, 1.55);
		}

		.form-inner  .field{
			height: 50px;
			width: 100%;
			margin-top: 20px;
		}


		.form-inner form .field input{
			height: 100%;
			width: 100%;
			outline: none;
			padding-left: 15px;
			border-radius: 5px;
			border: 1px solid lightgrey;
			border-bottom-width: 2px;
			font-size: 17px;
			transition: all 0.3s ease;
		}
		.form-inner form .field input:focus{
			border-color: #5f27cd;
		}
		.form-inner form .pass-link{
			margin-top: 15px;
		}
		.form-inner form .pass-link a,
		.form-inner form .signup-link a{
			color: #5f27cd;
			text-decoration: none;
		}
		.form-inner form .signup-link{
			text-align: center;
			margin-top: 30px;
		}


		.form-inner form .pass-link a:hover,
		.form-inner form .signup-link a:hover{
			text-decoration: underline;
		}
		form .field input[type="submit"]{
			width: 100%;
			color: #fff;
			font-size: 20px;
			font-weight: 500;
			padding-left: 0px;
			border: none;
			cursor: pointer;
			background: -webkit-linear-gradient(left,#440a67,#93329e)
		}
	</style>
</head>
<body>
	<div class="wrapper"> 
		<div class="title-text">
			<div class="title login">Login</div>
			<div class="title signup">Sign Up</div>
		</div>
		
		<div class = "form-container">
			<div class="slide-controls">
				<input type="radio" name="slide" id="login" checked>
            	<input type="radio" name="slide" id="signup">
				<label for="login" class="slide login">Login</label>
				<label for="signup" class="slide signup">Signup</label>
				<div class="slide-tab"></div>
			</div>
			<div class="form-inner">
				<form action="#" class="login">
					<div class="field">
						<input type="text" placeholder="Email Address" required>
					</div>
					<div class="field">
						<input type="passsword" placeholder="Passsword" required>
					</div>
					<div class="field">
						<input type="submit" value="Login">
					</div>
					<div class="signup-link">Not A Member?<a href="#">Sign Up Now!</a></div>
				</form>
				<form action="#" class="signup">
					<div class="field">
						<input type="text" placeholder="Email Address" required>
					</div>
					<div class="field">
						<input type="passsword" placeholder="Passsword" required>
					</div>
					<div class="field">
						<input type="passsword" placeholder="Confirm Passsword" required>
					</div>
					<div class="field">
						<input type="submit" value="Signup">
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		const loginText = document.querySelector(".title-text .login");
		const loginForm = document.querySelector("form.login");
		const signupForm = document.querySelector("form.signup");
		const loginBtn = document.querySelector("label.login");
      	const signupBtn = document.querySelector("label.signup");
      	const signupLink = document.querySelector("form .signup-link a");


      	signupBtn.onclick = (()=>{
      		loginForm.style.marginLeft = "-50%";
      		 loginText.style.marginLeft = "-50%";
      	});


      	loginBtn.onclick = (()=>{
        	loginForm.style.marginLeft = "0%";
            loginText.style.marginLeft = "0%";
      	});


      	signupLink.onclick = (()=>{
        	signupBtn.click();
        	return false;
      	});


	</script>
</body>

</body>
</html>
