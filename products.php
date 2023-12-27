<?php
	include 'header.php';
    include 'conectare.php';
?>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

 <div class="main" data-page-type="overview">
  

    	<?php  
    		

    		$results_per_page = 6; //numarul de bijuterii afisate pe o pagina in site

            if(isset($_GET['info']) && $_GET['info'] == 'coliere'){
                $sql = "SELECT * FROM produse WHERE prod_category = 'Necklaces'";
                $result = mysqli_query($conectare, $sql);
                $number_of_results = mysqli_num_rows($result);

                $number_of_pages = ceil($number_of_results / $results_per_page);
            }elseif (isset($_GET['info']) && $_GET['info'] == 'bratari') {
                $sql = "SELECT * FROM produse WHERE prod_category = 'Bracelets'";
                $result = mysqli_query($conectare, $sql);
                $number_of_results = mysqli_num_rows($result);

                $number_of_pages = ceil($number_of_results / $results_per_page);
            }elseif (isset($_GET['info']) && $_GET['info'] == 'inele') {
                $sql = "SELECT * FROM produse WHERE prod_category = 'Rings'";
                $result = mysqli_query($conectare, $sql);
                $number_of_results = mysqli_num_rows($result);

                $number_of_pages = ceil($number_of_results / $results_per_page);
            }elseif(isset($_GET['info']) && $_GET['info'] == 'cercei'){
                $sql = "SELECT * FROM produse WHERE prod_category = 'Earrings'";
                $result = mysqli_query($conectare, $sql);
                $number_of_results = mysqli_num_rows($result);

                $number_of_pages = ceil($number_of_results / $results_per_page);
                
            }elseif(isset($_GET['info']) && $_GET['info'] == 'aurgalben'){
                $sql = "SELECT * FROM produse WHERE prod_material = 'Yellow Gold'";
                $result = mysqli_query($conectare, $sql);
                $number_of_results = mysqli_num_rows($result);

                $number_of_pages = ceil($number_of_results / $results_per_page);
            }elseif(isset($_GET['info']) && $_GET['info'] == 'auralb'){
                $sql = "SELECT * FROM produse WHERE prod_material = 'White Gold'";
                $result = mysqli_query($conectare, $sql);
                $number_of_results = mysqli_num_rows($result);

                $number_of_pages = ceil($number_of_results / $results_per_page);
            }elseif(isset($_GET['info']) && $_GET['info'] == 'aurroz'){
                $sql = "SELECT * FROM produse WHERE prod_material = 'Pink Gold'";
                $result = mysqli_query($conectare, $sql);
                $number_of_results = mysqli_num_rows($result);

                $number_of_pages = ceil($number_of_results / $results_per_page);
            }elseif(isset($_GET['info']) && $_GET['info'] == 'argintalb'){
                $sql = "SELECT * FROM produse WHERE prod_material = 'White Silver'";
                $result = mysqli_query($conectare, $sql);
                $number_of_results = mysqli_num_rows($result);

                $number_of_pages = ceil($number_of_results / $results_per_page);
            }elseif(isset($_GET['info']) && $_GET['info'] == 'argintgalben'){
                $sql = "SELECT * FROM produse WHERE prod_material = 'Yellow Silver'";
                $result = mysqli_query($conectare, $sql);
                $number_of_results = mysqli_num_rows($result);

                $number_of_pages = ceil($number_of_results / $results_per_page);
            }elseif(isset($_GET['info']) && $_GET['info'] == 'argintroz'){
                $sql = "SELECT * FROM produse WHERE prod_material = 'Pink Silver'";
                $result = mysqli_query($conectare, $sql);
                $number_of_results = mysqli_num_rows($result);

                $number_of_pages = ceil($number_of_results / $results_per_page);
            }else{
        		$sql = "SELECT * FROM produse";
        		$result = mysqli_query($conectare, $sql);
        		$number_of_results = mysqli_num_rows($result);

        		$number_of_pages = ceil($number_of_results / $results_per_page);
            }

    		if(!isset($_GET['page'])){
    			$page = 1;
    		}else{
    			$page = $_GET['page'];
    		}

    		$this_page_first_result = ($page - 1) * $results_per_page;


            if(isset($_GET['info']) && $_GET['info'] == 'coliere'){
                $sql = "SELECT * FROM produse WHERE prod_category = 'Necklaces' LIMIT " . $this_page_first_result . ',' . $results_per_page;
                $result = mysqli_query($conectare, $sql);
            }elseif (isset($_GET['info']) && $_GET['info'] == 'cercei') {
                $sql = "SELECT * FROM produse WHERE prod_category = 'Earrings' LIMIT " . $this_page_first_result . ',' . $results_per_page;
                $result = mysqli_query($conectare, $sql);
            }elseif (isset($_GET['info']) && $_GET['info'] == 'inele') {
                $sql = "SELECT * FROM produse WHERE prod_category = 'Rings' LIMIT " . $this_page_first_result . ',' . $results_per_page;
                $result = mysqli_query($conectare, $sql);
            }elseif (isset($_GET['info']) && $_GET['info'] == 'bratari') {
                $sql = "SELECT * FROM produse WHERE prod_category = 'Bracelets' LIMIT " . $this_page_first_result . ',' . $results_per_page;
                $result = mysqli_query($conectare, $sql);
            }elseif (isset($_GET['info']) && $_GET['info'] == 'aurgalben') {
                $sql = "SELECT * FROM produse WHERE prod_material = 'Yellow Gold' LIMIT " . $this_page_first_result . ',' . $results_per_page;
                $result = mysqli_query($conectare, $sql);
            }elseif (isset($_GET['info']) && $_GET['info'] == 'aurroz') {
                $sql = "SELECT * FROM produse WHERE prod_material = 'Pink Gold' LIMIT " . $this_page_first_result . ',' . $results_per_page;
                $result = mysqli_query($conectare, $sql);
            }elseif (isset($_GET['info']) && $_GET['info'] == 'auralb') {
                $sql = "SELECT * FROM produse WHERE prod_material = 'White Gold' LIMIT " . $this_page_first_result . ',' . $results_per_page;
                $result = mysqli_query($conectare, $sql);
            }elseif (isset($_GET['info']) && $_GET['info'] == 'argintgalben') {
                $sql = "SELECT * FROM produse WHERE prod_material = 'Yellow Silver' LIMIT " . $this_page_first_result . ',' . $results_per_page;
                $result = mysqli_query($conectare, $sql);
            }elseif (isset($_GET['info']) && $_GET['info'] == 'argintalb') {
                $sql = "SELECT * FROM produse WHERE prod_material = 'White Silver' LIMIT " . $this_page_first_result . ',' . $results_per_page;
                $result = mysqli_query($conectare, $sql);
            }elseif (isset($_GET['info']) && $_GET['info'] == 'argintroz') {
                $sql = "SELECT * FROM produse WHERE prod_material = 'Pink Silver' LIMIT " . $this_page_first_result . ',' . $results_per_page;
                $result = mysqli_query($conectare, $sql);
            }else{
                $sql = "SELECT * FROM produse LIMIT " . $this_page_first_result . ',' . $results_per_page;
                $result = mysqli_query($conectare, $sql);
            }

    		


            while($row = mysqli_fetch_array($result)){
    			?>
    			<!-- <div class="grid_1_of_4 images_1_of_4">   -->
    				<div class="col-md-4" style=" font-family:'Times New Roman';border:1px solid black; background-color:#f1f1f1; border-radius:5px; padding:60px;" align="center""><!--class="grid_1_of_4 images_3_of_2">-->
						<a href="preview.php?pid=<?php echo $row['prod_id']; ?>"><img src="<?php echo $row['prod_image'] ?>" style="width:300px; height:300px" class="img-responsive"/></a>
						<h3 class="text-info" style="color:#800080;"><?php echo $row['prod_name']  ?></h3>
						<!--<p><?php/* echo $row['prod_desc'] */ ?></p>-->
						<span class="price" class="text-danger"><?php echo '  $'.$row['prod_price']  ?></span>
						<!-- <div class="button" class="btn btn-success" name="add_to_cart"><span><img src="images/cart.jpg"/><a href="cart_page.php" name="shoping_cart" class="btn btn-success">Add to Cart</a></span> </div>-->
					    <div class="button"><span><a href="preview.php?pid=<?php echo $row['prod_id']; ?>" class="details" style="color:#800080;">Details</a></span></div>
					</div>

    			<?php
    		}

    	?>

    		<div class="clear"></div>
    	</div>
			</div>

			<div align="center" style="font-size:20px;">
			<?php
			echo "Page: ";
			for ($page = 1; $page <= $number_of_pages; $page++) {
    			if(isset($_GET['info'])){
                    echo '<a href="products.php?info=' . $_GET['info'] . '&page=' . $page . '" >' . $page . '</a> ';
                }else{
                    echo '<a href="products.php?page=' . $page . '" >' . $page . '</a> ';
                }
    		}
			
    		?>
    		</div>
    		<br><br>
			
    </div>
 </div>
</div>
   
<?php
	include 'footer.php';

