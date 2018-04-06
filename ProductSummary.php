<?php include "Common.php"; ?>

<html>
<body>

	<label>Products Available:</label>
	<div>
	<?php 
		$persistenceClient = $_SESSION["PersistenceClient"];
		$session = $_SESSION["Session"];
		$userLoggedIn = $session->user;
		$productsAll = $persistenceClient->productsGetAll();
		foreach ($productsAll as $product)
		{	
			$productName = $product->name;
			echo($productName);
			
			$productID = $product->productID;
			echo " ";
			$isProductLicensedByUserLoggedIn = $userLoggedIn->isProductWithIDLicensed($productID);
			if ($isProductLicensedByUserLoggedIn == true)
			{
				echo "(Owned)";
			}
			else
			{
				echo "<a href='Product.php?productID=" . $productID . "'>Details</a>";
			}
			echo("<br />");
		}
	?>	
	</div>
	
</body>
</html>