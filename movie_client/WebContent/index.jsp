<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>${lg["indexTitle"]}</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pop-up -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!--/web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
</head>
<body>
<!--/main-header-->
  <!--/banner-section-->
	<div id="demo-1" data-zs-src='["images/2.jpg", "images/1.jpg", "images/3.jpg","images/4.jpg"]' data-zs-overlay="dots">
		<div class="demo-inner-content">
		<!--/header-w3l-->
			   <div class="header-w3-agileits" id="home">
			     <div class="inner-header-agile">	
				<nav class="navbar navbar-default">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a  href="index.jsp"><span>M</span>ovies <span>P</span>ro</a></h1>
					</div>
					<!-- navbar-header -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
							<li class="active"><a href="index.jsp">${lg["indexMenuHome"]}</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">${lg["indexMenuGenre"] } <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="genre.jsp">${lg["indexMenuGenreAction"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreBiography"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreCrime"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreFamily"] }</a></li>
											<li><a href="horror.jsp">${lg["indexMenuGenreHorror"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreRomance"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreSports"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreWar"] }</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="genre.jsp">${lg["indexMenuGenreAdventure"] }</a></li>
											<li><a href="comedy.jsp">${lg["indexMenuGenreComedy"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreDocumentary"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreFantasy"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreThriller"] }</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="genre.jsp">${lg["indexMenuGenreAnimation"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreCostume"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreDrama"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreHistory"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenreMusical"] }</a></li>
											<li><a href="genre.jsp">${lg["indexMenuGenrePsychological"] }</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="series.jsp">${lg["indexMenuTvSeries"]}</a></li>
							<li><a href="news.jsp">${lg["indexMenuNews"]}</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">${lg["indexMenuCountry"]}<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genre.jsp">${lg["indexMenuCountryAsia"]}</a></li>
												<li><a href="genre.jsp">${lg["indexMenuCountryFrance"]}</a></li>
												<li><a href="genre.jsp">${lg["indexMenuCountryTaiwan"]}</a></li>
												<li><a href="genre.jsp">${lg["indexMenuCountryUnitedStates"]}</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genre.jsp">${lg["indexMenuCountryChina"]}</a></li>
												<li><a href="genre.jsp">${lg["indexMenuCountryHongCong"]}</a></li>
												<li><a href="genre.jsp">${lg["indexMenuCountryJapan"]}</a></li>
												<li><a href="genre.jsp">${lg["indexMenuCountryThailand"]}</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genre.jsp">${lg["indexMenuCountryEuro"]}</a></li>
												<li><a href="genre.jsp">${lg["indexMenuCountryIndia"]}</a></li>
												<li><a href="genre.jsp">${lg["indexMenuCountryKorea"]}</a></li>
												<li><a href="genre.jsp">${lg["indexMenuCountryUnitedKingdom"]}</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="list.jsp">${lg["indexMenuAZList"]}</a></li>
							<li><a href="contact.jsp">${lg["indexMenuContact"]}</a></li>
						</ul>

					</div>
					<div class="clearfix"> </div>	
				</nav>
					<div class="w3ls_search">
									<div class="cd-main-header">
										<ul class="cd-header-buttons">
											<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
										</ul> <!-- cd-header-buttons -->
									</div>
									<div id="cd-search" class="cd-search">
										<form action="#" method="post">
											<input name="Search" type="search" placeholder="Search...">
										</form>
									</div>
								</div>
	
			</div> 

			   </div>
		<!--//header-w3l-->
			<!--/banner-info-->
			   <div class="baner-info">
			      <h3>Latest <span>On</span>Line <span>Mo</span>vies</h3>
				  <h4>${lg["indexLastMovieName"]}</h4>
				  <a class="w3_play_icon1" href="#small-dialog1">
											${lg["indexWatchTrailer"]}
										</a>
			   </div>
			<!--/banner-ingo-->		
		</div>
    </div>
  <!--/banner-section-->
 <!--//main-header-->
	         <!--/banner-bottom-->
			  <div class="w3_agilits_banner_bootm">
			     <div class="w3_agilits_inner_bottom">
			            <div class="col-md-6 wthree_agile_login">
						     <ul>
									<li><i class="fa fa-phone" aria-hidden="true"></i> (+000) 009 455 4088</li>
									<li><a href="#" class="login"  data-toggle="modal" data-target="#myModal4">${lg["indexLogin"]}</a></li>
									<li><a href="#" class="login reg"  data-toggle="modal" data-target="#myModal5">${lg["indexRegister"]}</a></li>

								</ul>
						</div>
						 <div class="col-md-6 wthree_share_agile">
									
									<div class="single-agile-shar-buttons">
									<ul>
								<li>
									<div class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
									
								</li>
								<li>
									<div class="fb-share-button" data-href="" data-layout="button_count" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="">${lg["indexShare"]}</a></div>
								</li>
								
							</ul>
								</div>
						</div>
				</div>
			</div>
			<!--//banner-bottom-->
		     <!-- Modal1 -->
					<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" >

							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>${lg["indexLogin"]}</h4>
										<div class="login-form">
											<form action="#" method="post">
												<input type="email" name="email" placeholder='${lg["indexLoginEmail"]}' required="">
												<input type="password" name="password" placeholder='${lg["indexLoginPassword"]}' required="">
												<div class="tp">
													<input type="submit" value='${lg["indexLoginString"]}'>
												</div>
												<div class="forgot-grid">
												       <div class="log-check">
														<label class="checkbox"><input type="checkbox" name="checkbox">${lg["indexLoginRememberMe"]}</label>
														</div>
														<div class="forgot">
															<a href="#" data-toggle="modal" data-target="#myModal2">${lg["indexLoginForgotPassword"]}</a>
														</div>
														<div class="clearfix"></div>
													</div>
												
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
				<!-- //Modal1 -->
				  <!-- Modal1 -->
					<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" >

							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>${lg["indexRegister"] }</h4>
										<div class="login-form">
											<form action="#" method="post">
											    <input type="text" name="name" placeholder='${lg["indexRegisterName"]}' required="">
												<input type="email" name="email" placeholder='${lg["indexLoginEmail"]}' required="">
												<input type="password" name="password" placeholder='${lg["indexLoginPassword"]}' required="">
												<input type="password" name="conform password" placeholder='${lg["indexRegisterConfirmPassword"] }' required="">
												<div class="signin-rit">
													<span class="agree-checkbox">
														<label class="checkbox"><input type="checkbox" name="checkbox">${lg["indexRegisterAgree1"] } <a class="w3layouts-t" href="#" target="_blank">${lg["indexRegisterAgree2"] }</a> ${lg["indexRegisterAgree3"] } <a class="w3layouts-t" href="#" target="_blank">${lg["indexRegisterAgree4"] }</a></label>
													</span>
												</div>
												<div class="tp">
													<input type="submit" value='${lg["indexRegisterString"] }'>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
				<!-- //Modal1 -->
			<!--/content-inner-section-->
				<div class="w3_content_agilleinfo_inner">
					<div class="agile_featured_movies">
						<!--/agileinfo_tabs-->
					   <div class="agileinfo_tabs">
						<!--/tab-section-->
					    <div id="horizontalTab">
								<ul class="resp-tabs-list">
									<li>${lg["indexCenterChooseRecent"] }</li>
									<li>${lg["indexCenterChoosePopularity"] }</li>
									<li>${lg["indexCenterChooseTopRating"] } </li>
								</ul>
						<div class="resp-tabs-container">
							<div class="tab1">
								<div class="tab_movies_agileinfo">
										<div class="w3_agile_featured_movies">
											<div class="col-md-5 video_agile_player">
										            <div class="video-grid-single-page-agileits">
														<div data-video="f2Z65fobH2I" id="video"> <img src="images/11.jpg" alt="" class="img-responsive" /> </div>
													</div>


										
	        <div class="player-text">
												<p class="fexi_header">Force 2</p>
												<p class="fexi_header_para"><span class="conjuring_w3">Story Line<label>:</label></span>Presenting the official trailer of Force 2 starring John Abraham, Sonakshi Sinha and Tahir Raj Bhasin

A film by Abhinay Deo, Produced by Vipul Amrutlal Shah, JA entertainment Pvt. Ltd....</p>
												<p class="fexi_header_para"><span>Release On<label>:</label></span>Sep 29, 2016 </p>
												<p class="fexi_header_para">
													<span>Genres<label>:</label> </span>
													<a href="genre.jsp">Drama</a> | 
													<a href="genre.jsp">Adventure</a> | 
													<a href="genre.jsp">Family</a>								
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
												</p>
											</div>
										    </div>
										     <div class="col-md-7 wthree_agile-movies_list">
														<div class="w3l-movie-gride-agile">
															<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m1.jpg" title="Movies Pro" class="img-responsive" alt=" ">
																<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h6><a href="single.jsp">Swiss Army Man	</a></h6>						
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																		<p>2016</p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben">
																<p>NEW</p>
															</div>
													</div>
														<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m2.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Me Before you</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m3.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Deadpool</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m4.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Rogue One </a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m5.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Storks	</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m6.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Hopeless</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m7.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Mechanic</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m8.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Timeless</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
											 </div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
								</div>
							<div class="tab2">
								<div class="tab_movies_agileinfo">
										<div class="w3_agile_featured_movies">
											<div class="col-md-5 video_agile_player">
										            <div class="video-grid-single-page-agileits">
														<div data-video="fNKUgX8PhMA" id="video1"> <img src="images/22.jpg" alt="" class="img-responsive" /> </div>
													</div>


										        <div class="player-text">
												<p class="fexi_header">Me Before You </p>
												<p class="fexi_header_para"><span class="conjuring_w3">Story Line<label>:</label></span>Me Before You Official Trailer #2 (2016) - Emilia Clarke, Sam Claflin Movie HD

A girl in a small town forms an unlikely bond with a recently-paralyzed man she's taking care of....</p>
												<p class="fexi_header_para"><span>Release On<label>:</label></span>Feb 3, 2016 </p>
												<p class="fexi_header_para">
													<span>Genres<label>:</label> </span>
													<a href="genre.jsp">Drama</a> | 
													<a href="genre.jsp">Adventure</a> | 
													<a href="genre.jsp">Family</a>								
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
												</p>
											</div>

										    </div>
										     <div class="col-md-7 wthree_agile-movies_list">
														<div class="w3l-movie-gride-agile">
															<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m9.jpg" title="Movies Pro" class="img-responsive" alt=" ">
																<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h6><a href="single.jsp">Inferno</a></h6>							
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																		<p>2016</p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben">
																<p>NEW</p>
															</div>
													</div>
														<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m10.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Now You See Me 2</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m11.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Warcraft</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m12.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Money Monster</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m13.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Ghostbuster</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m14.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Rambo 4</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m15.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">RoboCop</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m16.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">X-Men</a></h6>					
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
											 </div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
							</div>
						<div class="tab3">
								<div class="tab_movies_agileinfo">
										<div class="w3_agile_featured_movies">
											<div class="col-md-5 video_agile_player">
										            <div class="video-grid-single-page-agileits">
														<div data-video="BXEZFd0RT5Y" id="video2"> <img src="images/44.jpg" alt="" class="img-responsive" /> </div>
													</div>

        <div class="player-text">
												<p class="fexi_header">Storks </p>
												<p class="fexi_header_para"><span class="conjuring_w3">Story Line<label>:</label></span>Starring: Andy Samberg, Jennifer Aniston, Ty Burrell Storks Official Trailer 3 (2016) - Andy Samberg Movie the company's top delivery stork, lands in hot water when the Baby Factory produces an adorable....... </p>
												<p class="fexi_header_para"><span>Release On<label>:</label></span>Aug 1, 2016 </p>
												<p class="fexi_header_para">
													<span>Genres<label>:</label> </span>
													<a href="genre.jsp">Drama</a> | 
													<a href="genre.jsp">Adventure</a> | 
													<a href="genre.jsp">Family</a>								
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
												</p>
											</div>

										    </div>
										     <div class="col-md-7 wthree_agile-movies_list">
														<div class="w3l-movie-gride-agile">
															<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m1.jpg" title="Movies Pro" class="img-responsive" alt=" ">
																<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h6><a href="single.jsp">Swiss Army Man	</a></h6>		
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																		<p>2016</p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben">
																<p>NEW</p>
															</div>
													</div>
														<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m2.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Me Before you</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m3.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Deadpool</a></h6>					
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m4.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Rogue One </a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m5.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Storks</a></h6>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m6.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Hopeless</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m7.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Mechanic</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m8.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Timeless</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
											 </div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
								</div>
							</div>
						</div>
						
					</div>
				<!--//tab-section-->	
				  <h3 class="agile_w3_title"> Latest <span>Movies</span></h3>
			<!--/movies-->				
			<div class="w3_agile_latest_movies">
			
				<div id="owl-demo" class="owl-carousel owl-theme">
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m5.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Storks	</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m6.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Hopeless</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m7.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Mechanic</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m8.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Timeless</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m3.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Deadpool</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m11.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Warcraft</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m14.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Rambo 4</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m13.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Ghostbuster</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>NEW</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m15.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">RoboCop</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>NEW</p>
							</div>
							</div>
						</div>
					   </div>
				    </div>
				<!--//movies-->
				 <h3 class="agile_w3_title">Requested <span>Movies</span> </h3>
				<!--/requested-movies-->
				     <div class="wthree_agile-requested-movies">
										<div class="col-md-2 w3l-movie-gride-agile requested-movies">
															<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m1.jpg" title="Movies Pro" class="img-responsive" alt=" ">
																<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h6><a href="single.jsp">Swiss Army Man</a></h6>							
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																		<p>2016</p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben one">
																<p>NEW</p>
															</div>
													</div>
											<div class="col-md-2 w3l-movie-gride-agile requested-movies">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m2.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Me Before you</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
											<div class="ribben one">
													<p>NEW</p>
												</div>
											</div>
											<div class="col-md-2 w3l-movie-gride-agile requested-movies">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m3.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Deadpool</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben one">
													<p>NEW</p>
												</div>
											</div>
											<div class="col-md-2 w3l-movie-gride-agile requested-movies">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m4.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Rogue One </a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
											<div class="ribben one">
													<p>NEW</p>
												</div>
											</div>
											<div class="col-md-2 w3l-movie-gride-agile requested-movies">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m5.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Storks	</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben one">
													<p>NEW</p>
												</div>
											</div>
											<div class="col-md-2 w3l-movie-gride-agile requested-movies">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m6.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Hopeless</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben one">
													<p>NEW</p>
												</div>
											</div>
											<div class="col-md-2 w3l-movie-gride-agile requested-movies">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m7.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Mechanic</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
											<div class="ribben one">
													<p>NEW</p>
												</div>
											</div>
											<div class="col-md-2 w3l-movie-gride-agile requested-movies">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m8.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Timeless</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
											<div class="ribben one">
													<p>NEW</p>
												</div>
											</div>
											<div class="col-md-2 w3l-movie-gride-agile requested-movies">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m9.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Inferno</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben one">
													<p>NEW</p>
												</div>
											</div>
											<div class="col-md-2 w3l-movie-gride-agile requested-movies">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m11.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Warcraft</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben one">
													<p>NEW</p>
												</div>
											</div>
												<div class="clearfix"></div>
						</div>
				<!--//requested-movies-->
				<!--/top-movies-->
					<h3 class="agile_w3_title">Top<span>Movies</span> </h3>
							<div class="top_movies">
								<div class="tab_movies_agileinfo">
										<div class="w3_agile_featured_movies two">
										
										     <div class="col-md-7 wthree_agile-movies_list second-top">
														<div class="w3l-movie-gride-agile">
															<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m1.jpg" title="Movies Pro" class="img-responsive" alt=" ">
																<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h6><a href="single.jsp">Swiss Army Man</a></h6>							
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																		<p>2016</p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben">
																<p>NEW</p>
															</div>
													</div>
														<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m2.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Me Before you</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m3.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Deadpool</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m4.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Rogue One </a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m5.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Storks	</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m6.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Hopeless</a></h6>	 						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m7.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Mechanic</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="single.jsp" class="hvr-sweep-to-bottom"><img src="images/m8.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6><a href="single.jsp">Timeless</a></h6>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p>2016</p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>NEW</p>
												</div>
											</div>
											 </div>
											 	<div class="col-md-5 video_agile_player second-top">
										            <div class="video-grid-single-page-agileits">
														<div data-video="BXEZFd0RT5Y" id="video3"> <img src="images/44.jpg" alt="" class="img-responsive" /> </div>
													</div>

        <div class="player-text two">
												<p class="fexi_header">Storks </p>
												<p class="fexi_header_para"><span class="conjuring_w3">Story Line<label>:</label></span>Starring: Andy Samberg, Jennifer Aniston, Ty Burrell
Storks Official Trailer 3 (2016) - Andy Samberg Movie  the company's top delivery stork, lands in hot water when the Baby Factory produces an adorable....... </p>
									<p class="fexi_header_para"><span>Release On<label>:</label></span>Aug 1, 2016 </p>
												
												<p class="fexi_header_para">
													<span>Genres<label>:</label> </span>
													<a href="genre.jsp">Drama</a> | 
													<a href="genre.jsp">Adventure</a> | 
													<a href="genre.jsp">Family</a>								
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
												</p>
											</div>

										    </div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
								</div>
					
				<!--//top-movies-->
			</div>
		</div>
			<!--//content-inner-section-->
		
	<!--/footer-bottom-->
		<div class="contact-w3ls" id="contact">
			<div class="footer-w3lagile-inner">
				<h2>Sign up for our <span>Newsletter</span></h2>
				<p class="para">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vitae eros eget tellus 
					tristique bibendum. Donec rutrum sed sem quis venenatis.</p>
				<div class="footer-contact">
					<form action="#" method="post">
						<input type="email" name="Email" placeholder="Enter your email...." required=" ">
						<input type="submit" value="Subscribe">
					</form>
				</div>
					<div class="footer-grids w3-agileits">
						<div class="col-md-2 footer-grid">
						<h4>Release</h4>
							<ul> 
								<li><a href="#" title="Release 2016">2016</a></li> 
								<li><a href="#" title="Release 2015">2015</a></li>
								<li><a href="#" title="Release 2014">2014</a></li> 
								<li><a href="#" title="Release 2013">2013</a></li> 
								<li><a href="#" title="Release 2012">2012</a></li>
								<li><a href="#" title="Release 2011">2011</a></li> 
							</ul>
						</div>
							<div class="col-md-2 footer-grid">
						<h4>Movies</h4>
							<ul>
								
								<li><a href="genre.jsp">ADVENTURE</a></li>
								<li><a href="comedy.jsp">COMEDY</a></li>
								<li><a href="series.jsp">FANTASY</a></li>
								<li><a href="series.jsp">ACTION  </a></li>
								<li><a href="genre.jsp">MOVIES  </a></li>
								<li><a href="horror.jsp">HORROR  </a></li>
								
							</ul>
						</div>
				

							<div class="col-md-2 footer-grid">
								<h4>Review Movies</h4>
									<ul class="w3-tag2">
									<li><a href="comedy.jsp">Comedy</a></li>
									<li><a href="horror.jsp">Horror</a></li>
									<li><a href="series.jsp">Historical</a></li>
									<li><a href="series.jsp">Romantic</a></li>
									<li><a href="series.jsp">Love</a></li>
									<li><a href="genre.jsp">Action</a></li>
									<li><a href="single.jsp">Reviews</a></li>
									<li><a href="comedy.jsp">Comedy</a></li>
									<li><a href="horror.jsp">Horror</a></li>
									<li><a href="series.jsp">Historical</a></li>
									<li><a href="series.jsp">Romantic</a></li>
									<li><a href="genre.jsp">Love</a></li>
									<li><a href="comedy.jsp">Comedy</a></li>
									<li><a href="horror.jsp">Horror</a></li>
									<li><a href="genre.jsp">Historical</a></li>
									
								</ul>


						</div>
								<div class="col-md-2 footer-grid">
						<h4>Latest Movies</h4>
							<div class="footer-grid1">
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/1.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">eveniet ut molesti</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="footer-grid1">
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/2.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">earum rerum tenet</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="footer-grid1">
							
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/4.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">eveniet ut molesti</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="footer-grid1">
								<div class="footer-grid1-left">
									<a href="single.jsp"><img src="images/3.jpg" alt=" " class="img-responsive"></a>
								</div>
								<div class="footer-grid1-right">
									<a href="single.jsp">earum rerum tenet</a>
									
								</div>
								<div class="clearfix"> </div>
							</div>


						</div>
						<div class="col-md-2 footer-grid">
						   <h4 class="b-log"><a href="index.jsp"><span>M</span>ovies <span>P</span>ro</a></h4>
							<div class="footer-grid-instagram">
							<a href="single.jsp"><img src="images/m1.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
							<a href="single.jsp"><img src="images/m2.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
								<a href="single.jsp"><img src="images/m3.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
							<a href="single.jsp"><img src="images/m4.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
								<a href="single.jsp"><img src="images/m5.jpg" alt=" " class="img-responsive"></a>
							</div>
							<div class="footer-grid-instagram">
							<a href="single.jsp"><img src="images/m6.jpg" alt=" " class="img-responsive"></a>
							</div>
								
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
						<ul class="bottom-links-agile">
								<li><a href="icons.jsp" title="Font Icons">Icons</a></li> 
								<li><a href="short-codes.jsp" title="Short Codes">Short Codes</a></li> 
								<li><a href="contact.jsp" title="contact">Contact</a></li> 
								
							</ul>
					</div>
					<h3 class="text-center follow">Connect <span>Us</span></h3>
						<ul class="social-icons1 agileinfo">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-youtube"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>	
					
			 </div>
						
			</div>
			<div class="w3agile_footer_copy">
				    <p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://www.17sucai.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
			</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="js/jquery-1.11.1.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
			<script>
				$(document).ready(function(){
					$(".dropdown").hover(            
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
							$(this).toggleClass('open');        
						},
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
							$(this).toggleClass('open');       
						}
					);
				});
			</script>
		<!-- //Dropdown-Menu-JavaScript -->


<script type="text/javascript" src="js/jquery.zoomslider.min.js"></script>
		<!-- search-jQuery -->
				<script src="js/main.js"></script>
			<script src="js/simplePlayer.js"></script>
			<script>
				$("document").ready(function() {
					$("#video").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video1").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video2").simplePlayer();
				});
			</script>
				<script>
				$("document").ready(function() {
					$("#video3").simplePlayer();
				});
			</script>

			<!-- pop-up-box -->  
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->

			<div id="small-dialog1" class="mfp-hide">
			<iframe src=""></iframe>
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<iframe src=""></iframe>
	</div>
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>
<script src="js/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		 autoPlay: 3000, //Set AutoPlay to 3 seconds
		  autoPlay : true,
		   navigation :true,

		  items : 5,
		  itemsDesktop : [640,4],
		  itemsDesktopSmall : [414,3]
	 
		});
	 
	}); 
</script> 

<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
<!--end-smooth-scrolling-->
	<script src="js/bootstrap.js"></script>

 

</body>
</html>