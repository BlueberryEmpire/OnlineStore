<html>
<?php $configuration = include("Configuration.php"); ?>

<head>
	<title><?php echo ($configuration["SiteTitle"]); ?> - Welcome</title>
	<link rel='stylesheet' href='Pages/Style.css'>
</head>

<body>

	<div class="divCentered">
		<label><b>Welcome!</b></label><br />
		<br />
		<a href="Pages/UserLogin.php">Log In</a><br />
	</div>

</body>

</html>
