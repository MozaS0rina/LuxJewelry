<?php
	include 'header.php';
?>

	<div class="register_account" >
    		<h3>Create New Account</h3>
    		<form method="POST" action="signup.inc.php">
		   					<div><input type="text" name="nume" placeholder="Surname"  ></div>
		    				<div><input type="text" name="prenume" placeholder="First Name"></div>
                            <div><input type="text" name="telefon" placeholder="Phone"></div>
                            <div><input type="text" name="email" placeholder="Email"></div>
		    				<div><input type="text" name="username" placeholder="Username" ></div>
		    				<div><input type="password" name="password" placeholder="Password" ></div>
		    	<br>
		        <div class="buttons"><div><button class="grey">Create account</button></div></div>
		        <br>
		        <?php
		        	if(isset($_GET['info']) && $_GET['info'] == 'ok'){
		        		echo '<p style="text-align: center; color: green; font-size: 20px;">The account was succesfully created!</p>';
		        	}elseif (isset($_GET['info']) && $_GET['info'] == 'eroare') {
		        		echo '<p style="text-align: center; color: red; font-size: 20px;">Complete all the textboxes!</p>';
		        	}elseif (isset($_GET['info']) && $_GET['info'] == 'exista') {
		        		echo '<p style="text-align: center; color: red; font-size: 20px;">This username already exists!</p>';
		        	}
		        	
		       ?>
			  
		     <div class="clear"></div>
		    </form>
    	</div>  	
		
	
    
    	<div class="login_panel" align="center">
        	<h3>Existing Customers</h3>
        	<form method="POST" action="login.inc.php">
                	<input type="text" name="username" placeholder="Username">
                    <input type="password" name="password" placeholder="Password">
                    <!--<input type="submit" name="Sign in">-->
                    <div class="buttons"><div><button type="submit" class="grey">Sign In</button></div></div>
            <?php
                if (isset($_GET['info']) && $_GET['info'] == 'eroare_conectare') {
		        	echo '<p style="text-align: center; color: red; font-size: 20px;">Wrong username or password!</p>';
		        }
		    ?>
    		    <div class="clear"></div>
			</form>
        </div>
   
		
		
		
       <div class="clear"></div>
 
<?php
	include 'footer.php';

