<?php include "Common.php"; ?>

<html>
<body>
	<label><b>Current Order:</b></label><br />
	<form name="formOrderCurrent" action="" method="post">
	<div>
	<?php 	
		$session = $_SESSION["Session"];
		$userLoggedIn = $session->user;
		$orderCurrent = $userLoggedIn->orderCurrent;
		$orderID = $orderCurrent->orderID;
		$productBatchesInOrder = $orderCurrent->productBatches;
		$persistenceClient = $_SESSION["PersistenceClient"];
		$productsAll = $persistenceClient->productsGetAll();
		$numberOfBatches = count($productBatchesInOrder);
		if ($numberOfBatches == 0)
		{
			echo "(no items)";
		}
		else
		{
			for ($i = 0; $i < count($orderCurrent->productBatches); $i++)
			{
				$productBatch = $orderCurrent->productBatches[$i];
				$productID = $productBatch->productID;
				$product = $productsAll[$productID];
				$productName = $product->name;
				$controlID = "Product" . $productID . "Quantity";
				if (isset($_POST[$controlID]) == true)
				{
					$quantityChanged = $_POST[$controlID];
					if ($quantityChanged != null)
					{
						$productBatch->quantity = $quantityChanged;
						
					}
					if ($productBatch->quantity <= 0)
					{
						array_splice($orderCurrent->productBatches, $i, 1);
						$i--;
						$persistenceClient->orderSave($order);
					}	
				}
				else
				{
					$quantity = $productBatch->quantity;					
					echo($productName);				
					$productQuantitySelect = " <input id='" . $controlID . "' name='" . $controlID . "' type='number' value='" . $quantity . "' onchange='document.forms[0].submit();'></input>\n";
					echo("\n");
					echo($productQuantitySelect);
					$productRemoveLink = " <a href='' onclick='document.getElementById(\"" . $controlID . "\").value = 0;'>Remove</a>\n";
					echo($productRemoveLink);
					echo("<br />");
				}
			}
		}
	?>	
	</div>
	<a href='OrderCheckout.php'>Checkout</a>
		
	<a href="ProductSummary.php">Browse Available Products</a>
	
</body>
</html>