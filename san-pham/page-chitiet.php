<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="fb:app_id" content="<span style="color: #ff0000;">149524728806232</span>" />
<meta property="fb:admins" content="<span style="color: #ff0000;">100002892025234</span>"/>
<link rel="stylesheet" type="text/css" href="../css/style.css"/>
<link rel="stylesheet" type="text/css" href="../css/reset.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js' type='text/javascript'></script>
<title>Thao Cosmetic</title>
<script>	
	$(document).ready(function() {
	function ativeMenuLoaiDa(var_e,var_t)
	{
		$('#loaida').find('.iconE').removeClass("iconEavtive");$(var_e).find('.iconE').addClass("iconEavtive");$('#loaidaval').val("Da "+var_t);
	}

	});
</script>


</head>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.7&appId=149524728806232";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<body>

<div id ="wrapper">
<?php 
	include("../index/connect.php");

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
					echo '<img src="../images/'.$logo_items['image_logo'].'" alt="'.$logo_items['name_logo'].'" tittle="'.$logo_items['name_logo'].'"/>';
				}
			?>
            </a>
        </div><!--end logo-->
    	<div class="search">
        	<form class="searchform" action="../index/search.php" method="get">
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
		
					echo "<div class='menu_leve_1'><a href = '../".$menu_items['link_menu']."' class='parent'>".$menu_items['name_menu']."</a>
					<ul class='menuHiden' style='display: none;margin-bottom: 0px;margin-top: 0px;padding-left: 0px;padding-right:10px;'>";
						
						
						if($menu_items["name_menu"] == 'M??? Ph???m')
						{
							echo "<li class='active'><a href='cham-soc-da-mat.php'><br/>CH??M S??C DA M???T</a>
									<ul style='padding-left:0px;padding-bottom:10px;'>";
									while($sub_csdm_items = mysqli_fetch_array($sub_csdm_res,MYSQLI_ASSOC))
									{
										echo"<li><a href='".$sub_csdm_items['link_sub']."'>". $sub_csdm_items['name_sub']." </a></li>";
									}
							echo "
									</ul>
									</li>";
							/*------------------*/
							echo "<li class='active'><a href='cham-soc-body.php'><br/>CH??M S??C BODY</a>
									<ul style='padding-left:0px;'>";
									while($sub_csbd_items = mysqli_fetch_array($sub_csbd_res,MYSQLI_ASSOC))
									{
										echo"<li><a href='". $sub_csbd_items['link_sub']."'>". $sub_csbd_items['name_sub']." </a></li>";
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
            	<a href="../index.php">Trang ch???</a>
                 ??? 
            </span><!--end home-->
            <span class="home">
            	<?php
					$id = $_GET['id'];
					$mypham_query ="SELECT * FROM product where id_product=".$id;
					$mypham_res = mysqli_query($conn,$mypham_query) or die("Cannot select table!");
					while ($mypham_items = mysqli_fetch_array($mypham_res))
					{
						echo'
								'.$mypham_items["parent_product"].'
							';
					
				echo '???';
				?>
            </span><!--home-->
            <span class="home">
            	<?php 
					echo ''.$mypham_items["type_product"].'';
					echo ' ???';
					
				?>
            </span><!--home-->
            <span class="tittleRum">
            	<?php 
					echo ''.$mypham_items["name_product"].'';
					}
				?>
            </span><!--tittle rum-->
        </div><!--end blackRum-->
    </div> <!--end navigation-->
    <section class="product_d content_ld">
    	<div class="detailP">
        	<aside class="images_d">
            	<div class="images_d_list owl-carousel owl-theme" style="opacity: 1; display: block;">
                	<div class="owl-wrapper-outer">
                    	<div class="owl-wrapper" style="width: 712px; left: 0px; display: block; transition: all 1000ms ease; transform: translate3d(0px, 0px, 0px);">
                        	<div class="owl-item" style="width: 356px;">
                            	<?php
                                	$id = $_GET['id'];
									$mypham_query ="SELECT * FROM product where id_product=".$id;
									$mypham_res = mysqli_query($conn,$mypham_query) or die("Cannot select table!");
									while ($mypham_items = mysqli_fetch_array($mypham_res))
									{
										echo'<img src="../images/'.$mypham_items["image_product"].'">';
									
								?>
                            </div>
                        </div>
                    </div>
                </div>
            </aside><!--end images_d-->
            <aside class="desProduct">
            	<h1 class="detailPT">
                	<?php
                    	echo $mypham_items["name_product"];
						
					?>
                </h1>
                <div class="des">
                	<?php
									echo $mypham_items['describe_product'];
									
					?>
                </div><!--des-->
                <div class="proFtiter">
                	<?php
									echo 'Xu???t x???:';
									echo "<span>".$mypham_items['xuatxu']."</span>";
									echo '&nbsp;&nbsp;Quy c??ch:';
									echo "<span>".$mypham_items['quy_cach']."</span>";
									echo '&nbsp;&nbsp;T??nh tr???ng:';
									echo "<span>".$mypham_items['tinh_trang']."</span>";
									
					?>
                </div><!--proFtiter-->
                <div class="pr_det_price ">
                	<span class="tittle">Gi?? b??n:</span><!--tittle-->
                    <div class="price">
                	<?php
									echo "".number_format($mypham_items['price_product'])." VN??";
									}
					?>
                    </div><!--end price-->
                </div><!--pr_det_price -->
                <div class="pro_dg">
                	<div class="pro_dg_tt">
                    	<div class="pro_dg_tt">
                        	<div class='ratings'>
								<div class='rating-box'>
									<div style='width:100%;' class='rating'></div><!--end rating-->
								</div><!--end ratingbox-->
							</div><!--end ratings-->
                        </div><!--end pro_dg_tt-->
                    </div><!--end pro_dg_tt-->
                    <a target="_blank" href="http://www.facebook.com/sharer.php?u=http://localhost:3030/webmypham/san-pham/page-chitiet.php?id=<?php echo $id; ?>" class="fb shareFa"></a>
                </div><!--end pro_dg-->
                <div class="proDha">
                	<div class="btDah">
                    	<span class="bttOp">?????T H??NG NHANH GIAO H??NG NGAY</span>
                        <span class="btBt">Xem h??ng t???i nh?? kh??ng mua kh??ng sao</span>
                    </div><!--end btDah-->
                    	
                    <div class="btYctuv"> Y??U C???U T?? V???N </div><!--end btYctuv-->
                </div><!--end proDha-->
                <div class="goiTongDa">
                	<i class="icon"></i>G???I T?? V???N
                    <span>0911 404 519 - 0812 404 519</span>
                </div><!--goiTongDa-->
                <div class="hotroMnd">
                	<span>????? chuy??n vi??n nhi???u kinh nghi???m h??? tr??? b???n c??ch ch??m s??c da c??ng nh?? ch???n mua s???n ph???m ph?? h???p v???i t??nh tr???ng da c???a b???n.</span>
                </div><!--end hotroMnd-->
            </aside><!--desProduct-->
            <aside class="ckProduct">
            	<div class="titile">
                	CAM K???T KHI MUA H??NG T???I <span>THAO COSMETIC</span>
                    
                </div><!--titile-->
                <div class="deCk deCkTtct">
                	<span class="icon"></span><!--end icon-->
                    <span class="ttCK">Nh???n h??ng trong <b class="30p">30 ph??t</b> t???i C???n Th?? (Thanh to??n ti???n m???t ho???c chuy???n kho???n)</span><!--end ttCK-->
                </div><!--deCk deCkTtct-->
                <div class="deCk deCkGhMpTq">
                	<span class="icon"></span><!--end icon-->
                    <span class="ttCK">Giao h??ng mi???n ph?? to??n Qu???c</span><!--end ttCK-->
                </div><!--Endd eCk deCkGhMpTq-->
                
                <div class="deCk deCkHln">
                	<span class="icon"></span><!--end icon-->
                    <span class="ttCK">Xem h??ng t???i nh?? h??i l??ng m???i thanh to??n</span><!--end ttCK-->
                </div><!--end deCk deCkHln-->
                <div class="deCk deCkHlndt">
                	<span class="icon"></span><!--end icon-->
                    <span class="ttCK">???????c ?????i tr??? trong v??ng 7 ng??y v???i ch??nh s??ch ?????c bi???t thu???n l???i</span><!--end ttCK-->
                </div><!--end deCk deCkHlndt-->
                
                <div class="deCk deCkTlnq">
                	<span class="icon"></span><!--end icon-->
                    <span class="ttCK">Nh???n ngay m???u th??? mi???n ph?? - T??ch l??y nh???n qu??</span><!--end ttCK-->
                </div><!--end deCk deCkTlnq-->
            </aside><!--end ckProduct-->
        </div><!--end detailP-->
        <div class="clear10px"></div><!--end clear10px-->
        <aside class="product">
        	<article>
            	<?php
                	$id = $_GET['id'];
					$mypham_query ="SELECT * FROM product where id_product=".$id;
					$mypham_res = mysqli_query($conn,$mypham_query) or die("Cannot select table!");
					while ($mypham_items = mysqli_fetch_array($mypham_res))
					{
						echo '<h2 style="text-align: center;" class="uppercaseh2"><strong><span style="font-size:20px">'.$mypham_items['name_product'].'</span></strong></h2>';
						echo $mypham_items["noi_dung"];
					}
				?>
            </article><!---end article-->
            <!--B??nh lu???n -->
            <div class="rightDetailHA">
            	<b class="cmt">M???I C??C B???N B??NH LU???N</b>
                <div class="fb-comments" data-href="page-chitiet.php?id=<?php echo $id; ?>" data-width="100%" data-numposts="10">
                
                </div>
            </div>
        </aside><!--end product-->
        <aside class="productEditQri">
        	<div class="pright_product_pos">
            	<div class="right_roduct_hd">
                	<div class="btDah">
                    	<span class="bttOp">?????T H??NG NHANH GIAO H??NG NGAY</span>
                        <span class="btBt">Xem h??ng t???i nh?? kh??ng mua kh??ng sao </span>
                    </div><!--end btDah-->
                    <div class="btYctuv">
                    	<span class="bttOp">Y??U C???U CHUY??N GIA T?? V???N </span>
                        <span class="btBt">Chuy??n vi??n s??? g???i l???i v?? t?? v???n c??ch ch??m s??c da t???t nh???t cho b???n.</span>
                    </div>
                    <div class="phone_product">
                    	0911 404 519 - 0812 404 519
                    </div>
                    <p class="detRight_ban_bt">
                    	<img class="udct" src="../images/uudaict.jpg"/>
					</p>
                </div><!--end right_roduct_hds-->
            </div><!--end pright_product_pos-->
            
        </aside><!--end productEditQri-->
    </section>
    	
    


<!------------------------------------------FOOTER------------------------------------------------------>

<div class="footer">
	<div class="homeEmail">
    	<div class="container">
        	<div class="connect">
			Li??n h???: 
                <a title="Facebook Th???o Nguy???n" href="https://www.facebook.com/profile.php?id=100009354002889" rel="nofollow" target="_blank" class="fb"></a>
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