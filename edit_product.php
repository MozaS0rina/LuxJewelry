<?php
	include 'header.php';
	include 'conectare.php';
?>

<?php
	
	$pid = "";
	$pname = "";
	$pbrand = "";
	$pprice = "";
	$pqty = "";
	$pdesc = "";
	$pspec = "";
	$pimage = "";
	$pcategory = "";

	function getPosts(){
		$posts = array();
		$posts[0] = $_POST['pid'];
		$posts[1] = $_POST['pname'];
		$posts[2] = $_POST['pmaterial'];
		$posts[3] = $_POST['pprice'];
		$posts[4] = $_POST['pqty'];
		$posts[5] = $_POST['pdesc'];
		$posts[6] = $_POST['pspec'];
		$posts[7] = $_POST['pimage'];
		$posts[8] = $_POST['pcategory'];

		return $posts;
	}



	if(isset($_POST['search'])){
		$data = getPosts();

		$search_query = "SELECT * FROM produse WHERE prod_name = '$data[1]'";

		$search_result = mysqli_query($conectare, $search_query);

		if($search_result){
			if(mysqli_num_rows($search_result)){
				while($row = mysqli_fetch_array($search_result)){
					$pid = $row['prod_id'];
					$pname = $row['prod_name'];
					$pbrand = $row['prod_material'];
					$pprice = $row['prod_price'];
					$pqty = $row['prod_qty'];
					$pdesc = $row['prod_desc'];
					$pspec = $row['prod_spec'];
					$pimage = $row['prod_image'];
					$pcategory = $row['prod_category'];
				}
			}else{
				echo 'No result for this name';
			}
		}else{
			echo 'Result error';
		}
	}

	
	if(isset($_POST['delete'])){
		$data = getPosts();

		//$message = "Doriti sa stergeti acest produs?";
		//echo "<script>alert('$message');</script>";
		//echo '<script>window.location="afisare_produse.php"</script>';


			$delete_query = sprintf("DELETE FROM produse WHERE prod_id = %s", $data[0]);

			$delete_result = mysqli_query($conectare, $delete_query);

			if($delete_result){
				if(mysqli_affected_rows($conectare)){
					echo 'Data Deleted';
				}else{
					echo 'Data NOT Deleted';
				}
			}else{
				echo 'Delete error';
			}
		
		
		exit();
	}


	if(isset($_POST['update'])){
		$data = getPosts();

		$update_query = sprintf("UPDATE produse SET prod_name = '%s', prod_material = '%s', prod_price = %s, prod_qty = %s, prod_desc = '%s', prod_spec = '%s', prod_image = '%s', prod_category = '%s' WHERE prod_id = %s", $data[1], $data[2], $data[3], $data[4], $data[5], $data[6], $data[7], $data[8], $data[0]);

		$update_result = mysqli_query($conectare, $update_query);

		if($update_result){
			if(mysqli_affected_rows($conectare)){
				echo 'Data Update';
			}else{
				echo 'Data NOT Update';
			}
		}else{
			echo 'Update error';
		}

		
		exit();
	}

	

?>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<br>
	<table style="width: 100%">
		<tr>
			<td>
	<form action="edit_product.php" method="POST">
		<input type="hidden" name="pid" placeholder="Id produs" value="<?php echo $pid; ?>">
		<label>Product Name</label><br>
		<input type="text" name="pname" placeholder="product name" value="<?php echo $pname; ?>"><br><br>
		<label>Product Material</label><br>
		<input type="text" name="pmaterial" placeholder="product material" value="<?php echo $pbrand; ?>"><br><br>
		<label>Product Price</label><br>
		<input type="number" name="pprice" placeholder="product price" value="<?php echo $pprice; ?>"><br><br>
		<label>Product cantity</label><br>
		<input type="number" name="pqty" placeholder="product cantity" value="<?php echo $pqty; ?>"><br><br>
		<label>Product Description</label><br>
		<textarea name="pdesc" placeholder="product description" value=""><?php echo $pdesc; ?></textarea><br><br>
		<label>Product Specifications</label><br>
		<textarea name="pspec" placeholder="product specifications" value=""><?php echo $pspec; ?></textarea><br><br>
		<label>Product Image</label><br>
		<input type="text" name="pimage" placeholder="product image" value="<?php echo $pimage; ?>"><br><br>
		<label>Product Category</label><br>
		<input type="text" name="pcategory" placeholder="product category" value=" <?php echo $pcategory; ?>"><br><br>
		<div>
			<input type="submit" name="update" style="background:#800080;color:white;" value="Update">
			<input type="submit" name="delete" value="Delete">
			<input type="submit" name="search" value="Find"><br><br>
		</div>
	</form>
</td>
<td>
	<img src="<?php echo $pimage; ?>">

</td>
</tr>
</table>
<?php
	include 'footer.php';
