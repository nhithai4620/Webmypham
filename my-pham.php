<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<?php
	session_start();
	ini_set("display_errors","0");
?>
<?php
 // so san pham da add vao cart
	$prd = 0;
	if(isset($_SESSION['cart']))
	{
		$prd = count($_SESSION['cart']);
	}
?>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link rel="stylesheet" type="text/css" href="css/reset.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js' type='text/javascript'></script>
<title>Thao Cosmetic shop</title>
<script>	
	$(document).ready(function() {
	function ativeMenuLoaiDa(var_e,var_t)
	{
		$('#loaida').find('.iconE').removeClass("iconEavtive");$(var_e).find('.iconE').addClass("iconEavtive");$('#loaidaval').val("Da "+var_t);
	}

	});
</script>

<script type='text/javascript'>
$(function() {
				 $(window).scroll(function() {
				 if ($(this).scrollTop() != 0) 
				 {
					$('.backtop').fadeIn();
				 } else {
					$('.backtop').fadeOut();
				 }
 				 });
		$('.backtop').click(function() {
			$('body,html').animate({scrollTop: 0}, 800);
 		});
});
		
</script>
</head>

<body>

<div id ="wrapper">
<?php 
	include("index/connect.php");

?>
<div id ="header">

	<div class ="topbar">
    <div class ="container">
    	<div class="logo">
        	<a href="#">
            <?php
            	$logo_query = mysqli_query($conn,"SELECT * FROM logo_website ORDER BY  id_logo DESC limit 1");
				while($logo_items = mysqli_fetch_array($logo_query))
				{
					echo '<img src="images/'.$logo_items['image_logo'].'" alt="'.$logo_items['name_logo'].'" tittle="'.$logo_items['name_logo'].'"/>';
				}
			?>
            </a>
        </div><!--end logo-->
    	<div class="search">
        	<form class="searchform" action="index/search.php" method="get">
			<input class="s" onfocus="if (this.value == 'T??m ki???m ???') {this.value = '';}" onblur="if (this.value == '') {this.value =		 		'T??m ki???m ???';}" type="text" name="timkiem" value="T??m ki???m ???" width="300px" />
        	<button class="searchsubmit" name="btTimkiem" type="submit" value=""> </button>
			</form>
        </div><!-----end search---->
       
     </div><!--end container-->
    </div><!--End topbar--->
    
    <div class="menu">
    	<div class="container">
        	<div class="nav">
        	<?php
				$menu_query = "SELECT * FROM menu";
				$menu_result = mysqli_query($conn,$menu_query) or die ('Cannot connect table!'.mysqli_error($conn));
		
				while ($menu_items = mysqli_fetch_array($menu_result,MYSQLI_ASSOC))
				{
					$submenu_query = "  SELECT * 
										FROM submenu
										WHERE parent =".$menu_items['id_menu'];
					$submenu_res = mysqli_query ($conn,$submenu_query) or die ('Cannot select menu'.mysqli_error($conn));
					
					/*--------------------------------CHAM SOC BODY-------------------------------------------*/
					
					$sub_csbd_query ="SELECT * FROM submenu WHERE type_sub=N'ch??m s??c body' and parent=".$menu_items['id_menu'];
					$sub_csbd_res = mysqli_query($conn,$sub_csbd_query) or die ('cannot select menu'.mysqli_error($conn));
					
					/*-------------------------------------CHAM SOC DA MAT-------------------------------------*/
					$sub_csdm_query ="SELECT * FROM submenu WHERE type_sub=N'ch??m s??c da m???t' and parent=".$menu_items['id_menu'];
					$sub_csdm_res = mysqli_query($conn,$sub_csdm_query) or die ('cannot select menu'.mysqli_error($conn));
					/*-------------------------------------TRANG ??I???M-------------------------------------*/
					$sub_m_query ="SELECT * FROM submenu WHERE type_sub=N'm???t' and parent=".$menu_items['id_menu'];
					$sub_m_res = mysqli_query($conn,$sub_m_query) or die ('cannot select menu'.mysqli_error($conn));
					/*----------------------------------------------------------------------------------------*/
					$sub_mt_query ="SELECT * FROM submenu WHERE type_sub=N'm???tt' and parent=".$menu_items['id_menu'];
					$sub_mt_res = mysqli_query($conn,$sub_mt_query) or die ('cannot select menu'.mysqli_error($conn));
					/*---------------------------------------UONG DEP DA-----------------------------------------*/
					$sub_udd_query ="SELECT * FROM submenu WHERE type_sub=N'u???ng ?????p da' and parent=".$menu_items['id_menu'];
					$sub_udd_res = mysqli_query($conn,$sub_udd_query) or die ('cannot select menu'.mysqli_error($conn));
					/*---------------------------------------l??m ?????p-----------------------------------------*/
					$sub_ldep_query ="SELECT * FROM submenu WHERE type_sub=N'l??m ?????p' and parent=".$menu_items['id_menu'];
					$sub_ldep_res = mysqli_query($conn,$sub_ldep_query) or die ('cannot select menu'.mysqli_error($conn));
		
					echo "<div class='menu_leve_1'><a href = '".$menu_items['link_menu']."' class='parent'>".$menu_items['name_menu']."</a>
					<ul class='menuHiden' style='display: none;margin-bottom: 0px;margin-top: 0px;padding-left: 0px;padding-right:10px;'>";
						
						
						if($menu_items["name_menu"] == 'M??? Ph???m')
						{
							echo "<li class='active'><a href='san-pham/cham-soc-da-mat.php'><br/>CH??M S??C DA M???T</a>
									<ul style='padding-left:0px;padding-bottom:10px;'>";
									while($sub_csdm_items = mysqli_fetch_array($sub_csdm_res,MYSQLI_ASSOC))
									{
										echo"<li><a href='san-pham/".$sub_csdm_items['link_sub']."'>". $sub_csdm_items['name_sub']." </a></li>";
									}
							echo "
									</ul>
									</li>";
							/*------------------*/
							echo "<li class='active'><a href='san-pham/cham-soc-body.php'><br/>CH??M S??C BODY</a>
									<ul style='padding-left:0px;'>";
									while($sub_csbd_items = mysqli_fetch_array($sub_csbd_res,MYSQLI_ASSOC))
									{
										echo"<li><a href='san-pham/". $sub_csbd_items['link_sub']."'>". $sub_csbd_items['name_sub']." </a></li>";
									}
							echo "
									</ul>
									</li>";
						}
						/*------------------*/
						if($menu_items["name_menu"] == 'Trang ??i???m')
							{
							echo "<li class='active'><a href='#'><br/>M???T</a>
									<ul style='padding-left:0px;padding-bottom:10px;'>";
									while($sub_m_items = mysqli_fetch_array($sub_m_res,MYSQLI_ASSOC))
									{
										echo"<li><a href='#'>". $sub_m_items['name_sub']." </a></li>";
									}
							echo "
									</ul>
									</li>";
								/*------------------*/	
							echo "<li class='active'><a href='#'><br/>M???T</a>
									<ul style='padding-left:0px;padding-bottom:10px;'>";
									while($sub_mt_items = mysqli_fetch_array($sub_mt_res,MYSQLI_ASSOC))
									{
										echo"<li><a href='#'>". $sub_mt_items['name_sub']." </a></li>";
									}
							echo "
									</ul>
									</li>";
									
							}
							/*---------------------------------------------------------*/
							if($menu_items["name_menu"] == "Dinh D?????ng - S???c Kh???e")
							{
								echo "<li class='active'><a href='#'><br/>U???NG ?????P DA</a>
									<ul style='padding-left:0px;padding-bottom:10px;'>";
									while($sub_udd_items = mysqli_fetch_array($sub_udd_res,MYSQLI_ASSOC))
									{
										echo"<li><a href='#'>". $sub_udd_items['name_sub']." </a></li>";
									}
							echo "
									</ul>
									</li>";
							}
							/*---------------------------------------------------------*/
							if($menu_items["name_menu"] == "L??m ?????p")
							{
								echo "<li class='active'><a href='#'><br/></a>
									<ul style='padding-left:0px;padding-bottom:10px;'>";
									while($sub_ldep_items = mysqli_fetch_array($sub_ldep_res,MYSQLI_ASSOC))
									{
										echo"<li><a href='#'>". $sub_ldep_items['name_sub']." </a></li>";
									}
							echo "
									</ul>
									</li>";
							}
							else
							{}
						
						
							
							
					
						//END WHILE $submenu_items
						
						/*while ($sub_csbd_items =mysqli_fetch_array($sub_csbd_res,MYSQLI_ASSOC))
						{
							echo "<li><a href ='#'>".$sub_csbd_items['name_sub']."</a></li>";
						}*/
					echo "</ul></div>";				
				}
			?>
            <a href="#" class="cart_top">
            	<span class="count">0</span><!--end count-->
    			<span class="tit">Gi??? h??ng</span><!--end tit-->
    		</a>
            </div><!--end nav-->
            
        </div><!--end container-->
    </div><!---menu-->    
</div><!--End Header--->

	<div class="navigation">
    	<div class="blackRum">
        	<span class="home">
            	<a href="index.php">Trang ch???</a>
                 ??? 
            </span><!--end home-->
            <span class="tittleRum">
            	<?php 
					$mypham_query ="SELECT * FROM menu where name_menu=N'M??? Ph???m'";
					$mypham_res = mysqli_query($conn,$mypham_query) or die("Cannot select table!");
					while ($mypham_items = mysqli_fetch_array($mypham_res))
					{
						echo'
								'.$mypham_items["name_menu"].'
							';
					}
				?>
            </span><!--tittle rum-->
        </div><!--end blackRum-->
    </div> <!--end navigation-->
    <section class="content_ld">
    	
        <aside class="filter" id="filter_cate">
        	<div class="filter_v">
            	<div class="general" id="loaida">
                <ul class="menu_left">
                <?php
					$menu_left_query ="select * from submenu where type_sub =N'ch??m s??c da m???t'";
					$menu_left_res =mysqli_query($conn,$menu_left_query);
					echo "<li><a href='san-pham/cham-soc-da-mat.php' class='tittlea'>CH??M S??C DA M???T</a>
									<ul class='menu_in_left'>";
									while($menu_left_items = mysqli_fetch_array($menu_left_res))
									{
										echo"<li><a href='san-pham/".$menu_left_items['link_sub']."'>".$menu_left_items['name_sub']." </a></li>";
									}
					echo "
									</ul>
						</li>";
				?>
                </ul>
                </div><!--end general loaida-->
                
                <div class="clear15px"></div>
                <div class="general" id="loaida">
                <ul class="menu_left" >
                <?php
					$menu_left2_query ="select * from submenu where type_sub =N'ch??m s??c body'";
					$menu_left2_res =mysqli_query($conn,$menu_left2_query);
					echo "<li><a href='san-pham/cham-soc-body.php' class='tittlea'>CH??M S??C BODY</a>
									<ul class='menu_in_left'>";
									while($menu_left2_items = mysqli_fetch_array($menu_left2_res))
									{
										echo"<li><a href='san-pham/".$menu_left2_items['link_sub']."'>".$menu_left2_items['name_sub']." </a></li>";
									}
					echo "
									</ul>
						</li>";
				?>
                </ul>
                </div><!--end general loaida-->
                
                
                <div class="clear15px"></div>
                <div class="general" id="loaida">
                <ul class="menu_left" >
                <?php
					$menu_left5_query ="select * from submenu where type_sub =N'u???ng ?????p da'";
					$menu_left5_res =mysqli_query($conn,$menu_left5_query);
					echo "<li><a href='#' class='tittlea'>DINH D?????NG - S???C KH???E</a>
									<ul class='menu_in_left'>";
									while($menu_left5_items = mysqli_fetch_array($menu_left5_res))
									{
										echo"<li><a href='#'>".$menu_left5_items['name_sub']." </a></li>";
									}
					echo "
									</ul>
						</li>";
				?>
                </ul>
                </div><!--end general loaida-->
                
                <div class="clear15px"></div>
                
                
            </div><!--end filter_v-->
        </aside><!--end filter -->
        <aside class="product_l">
        	<div class="product_boder">
            	<?php 
								// tong so records
								$result =mysqli_query($conn,"select count(id_product) as total from product where parent_product=N'M??? Ph???m'");
								$row = mysqli_fetch_assoc($result);
								$total_records = $row['total'];
								// tim limit va current 
								$current_page = isset($_GET['page']) ? $_GET['page']:1;
								$litmit =12;
								$total_page =  ceil($total_records / $litmit);
								if($current_page > $total_page )
								{
									$current_page = $total_page;
								}
								else if($current_page < 1 )
								{
									$current_page = 1;
								}
								$start = ($current_page - 1) * $litmit;
								$result = mysqli_query($conn,"SELECT * FROM product where parent_product =N'M??? Ph???m' LIMIT $start, $litmit");
								
				?>
                <?php
					while ($row = mysqli_fetch_assoc($result))
					{
						echo"<div class='product_item'>";
						echo"
							<a href='#' class='images'>
							<img alt='".$row['name_product']."' src='images/".$row['image_product']."'>
							</a>
							<h2 style='margin-top:0px;margin-bottom:0px;'>
							<a title='".$row['name_product']."' href='#'>".$row['name_product']."</a>
							</h2>
							<div class='price'>".number_format($row['price_product'])." VN??</div><!--end price-->
							<div class='ratings'>
								<div class='rating-box'>
									<div style='width:100%;' class='rating'></div><!--end rating-->
								</div><!--end ratingbox-->
							</div><!--end ratings-->
							<a href='san-pham/add-cart.php?id=".$row['id_product']."'><div class='add_cart'><i></i>MUA NGAY</div></a>
							";
							echo "</div><!--end product_items-->";
					}
				?>
            </div><!--end product_boder-->
            <div class="phan_trang">
            	<?php
                	if($current_page > 1 && $total_page > 1)
					{
						echo "<a href='my-pham.php?page=".($current_page - 1)."'>
								<b class='prev'></b>
							</a>";
					}
					echo"<ul class='ul_phan_page'>";
					for($i = 1;$i <= $total_page;$i++)
					{
						
						if($i == $current_page)
						{
							echo "<li><span class='color_current'>".$i."</span></li>";
						}
						else
						echo "<li><a href='my-pham.php?page=".$i."'>".$i."</a></li>";
						
					}
					echo"</ul>";
					if($current_page < $total_page  && $total_page > 1)
					{
						echo "<a href='my-pham.php?page=".($current_page + 1)."'>
							<b class='next'></b>
						</a>";
					}
					
				?>
            </div><!--end phan_page-->
            
        </aside><!--end product_l-->
    </section><!--end content ld-->


<!------------------------------------------FOOTER------------------------------------------------------>

<div class="footer">
	<div class="homeEmail">
    	<div class="container">
        	<div class="connect">
            	Li??n h???:
                <a title="Facebook Th???o Nguy???n" href="https://www.facebook.com/profile.php?id=100009354002889&sk=stories_archive" rel="nofollow" target="_blank" class="fb"></a>
                <div class="backtop">
    				<b></b>
				</div><!--end backtop-->
            </div><!--end connect--->
            
        </div><!--end container footer-->
    </div><!---end homeEmail-->
    <div class="container">
    	<div class="link">
        	<div class="tittleSk"><img class="logo_T" src="./images/logo_T.png" alt="logoWebsite"> About the Cosmetic shop:</div><!--end tittleSk-->
            <ul>
				<li><p>Thao Cosmetic shop t??? h??o l?? ?????a ch??? tin c???y h??ng ?????u </p></li>
				<li><p>cung c???p s???n ph???m m??? ph???m, d?????c m??? ph???m x??ch tay</p></li>
				<li><p>ch??nh h??ng, ch???t l?????ng, gi?? t???t nh???t.</p></li>
                
            </ul>
        </div><!--end link-->
        <div class="link call"> Li??n h??? tr???c ti???p Thao Cosmetic shop:<br/>
        	<span class="tongtaituphone">S??T: 0911404519 - 0812404519 (Th???o)</span><!--end tongdaituphone--><br/>
            <span class="tongtaituphone">?????a ch???: 58 ???????ng 3/2, p. Xu??n Kh??nh, q. Ninh Ki???u, tp. C???n Th??</span><!--end tongdaituphone--><br/>
            <span class="tongtaituphone">Email: thaob1809645@student.ctu.edu.vn</span><!--end tongdaituphone-->
        </div><!--end link call-->
    </div><!--end container footer-->
    <div class="clear"></div><!--end clear-->
    <div class="footerAdd">Design by Thao cosmetic shop ?? 2021.<br/>
    ?????a ch??? : 58 ???????ng 3/2 ph?????ng Xu??n Kh??nh, Ninh Ki???u, C???n Th??.
    
    </div><!--end footeradd-->
    <div class="footeraou"></div><!--footeraou-->
</div><!---end footer-->

</div><!--End Wrapper---> 
</body>
</html>