<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
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
<c:if test="${movieList eq null}">
	<jsp:forward page="movie.s?method=findAllMovie"></jsp:forward>
</c:if>
<body>
<!--/main-header-->
  <!--/banner-section-->
	<div id="demo-1" data-zs-src='["<c:url value='${movieList[indexTime[0]].imgList[2].imgPath }' />", "<c:url value='${movieList[indexTime[1]].imgList[2].imgPath }' />", "<c:url value='${movieList[indexTime[2]].imgList[2].imgPath }' />","<c:url value='${movieList[indexTime[3]].imgList[2].imgPath }' />"]' data-zs-overlay="dots">
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
						<h1><a  href="index.html"><span>${lg["indexTitle_1"] }</span>${lg["indexTitle_2"] } <span>${lg["indexTitle_3"] }</span>${lg["indexTitle_4"] }</a></h1>
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
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreAction' />">${lg["indexMenuGenreAction"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreBiography' />">${lg["indexMenuGenreBiography"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreCrime' />">${lg["indexMenuGenreCrime"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreFamily' />">${lg["indexMenuGenreFamily"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreHorror' />">${lg["indexMenuGenreHorror"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreRomance' />">${lg["indexMenuGenreRomance"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreSports' />">${lg["indexMenuGenreSports"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreWar' />">${lg["indexMenuGenreWar"] }</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreAdventure' />">${lg["indexMenuGenreAdventure"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreComedy' />">${lg["indexMenuGenreComedy"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreDocumentary' />">${lg["indexMenuGenreDocumentary"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreFantasy' />">${lg["indexMenuGenreFantasy"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreThriller' />">${lg["indexMenuGenreThriller"] }</a></li>
										</ul>
									</div>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreAnimation' />">${lg["indexMenuGenreAnimation"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreCostume' />">${lg["indexMenuGenreCostume"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreDrama' />">${lg["indexMenuGenreDrama"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreHistory' />">${lg["indexMenuGenreHistory"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenreMusical' />">${lg["indexMenuGenreMusical"] }</a></li>
											<li><a href="<c:url value='/movie.s?method=goGenre&op=indexMenuGenrePsychological' />">${lg["indexMenuGenrePsychological"] }</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="series.jsp">${lg["indexMenuTvSeries"]}</a></li>
							<li><a href="news.jsp">${lg["indexMenuNews"]}</a></li>
							<li><a href="contact.jsp">${lg["indexMenuContact"]}</a></li>
							<li>
								<select style="margin:13px 10px 0 10px; width:80px;cursor:pointer;" id="languageChose">
								<c:choose>
									<c:when test="${lgType eq 'zh'}">
										<option name="china" selected="selected">中文</option>
										<option name="english">English</option>
									</c:when>
									<c:otherwise>
										<option name="china">中文</option>
										<option name="english" selected="selected">English</option>
									</c:otherwise>
								</c:choose>
								</select><font style="color:#ffffff;">${lg["language"]}</font>
							</li>
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
						<%--搜索框  hzr =========================================================--%>
						<div id="cd-search" class="cd-search">
							<form action="<c:url value='/movie.s' />" method="post">
								<input type="hidden" name="method" value="search">
								<input name="Search" type="search" placeholder="${lg['Search']}">
							</form>
						</div>
						<%--搜索框  hzr =========================================================--%>

					</div>
	
			</div> 

			   </div>
		<!--//header-w3l-->
			<!--/banner-info-->
			   <div class="baner-info">
			      <h3>${lg["title_1"] } <span>${lg["title_2"] }</span>${lg["title_3"] } <span>${lg["title_4"] }</span>${lg["title_5"] }</h3>
				  <h4>${lg["indexLastMovieName"]}</h4>
			   </div>
			<!--/banner-ingo-->		
		</div>
    </div>
  <!--/banner-section-->
 <!--//main-header-->
	         <!--/banner-bottom-->
			  <div class="w3_agilits_banner_bootm" style="width:auto;">
			     <div class="w3_agilits_inner_bottom" style="width:auto;">
			            <div class="col-md-6 wthree_agile_login" style="width:auto;">
						     <ul>
									<li style="margin-right:10px;"><i class="fa fa-phone" aria-hidden="true"></i> (+000) 009 455 4088</li>
									<c:choose>
										<c:when test="${empty loginedUser }">
											<li><a href="<c:url value='/user.s?method=loginSetReferer' />" class="login">${lg["indexLogin"]}</a></li>
										</c:when>
										<c:otherwise>
											<li style="margin-left:10px;">
												<img id="headImg" style="width:20px;height:20px;" src="<c:url value='${loginedUser.imgList[0].imgPath }' />" alt="图片">
												<font>${loginedUser.userAccount}</font>
											</li>
											<li style="margin-left:10px;">
												<select id="infoChange" style="color:#000000;" onchange="infoChange()">
													<option selected="selected">${lg['personalCenter'] }</option>
													<option>${lg['alterInfo'] }</option>
													<option>${lg['myIndent'] }</option>
													<option>${lg['loginOut'] }</option>
												</select>
											</li>
											<li>
												<i class="fa fa-lemon-o" aria-hidden="true" style="margin-left:10px;"><font style="font-size:15px;">&nbsp;${lg["grade"]} ${loginedUser.integral.integralCount }</font></i>
											</li>
										</c:otherwise>
									</c:choose>
								</ul>
						</div>
				</div>
			</div>
			<!--//banner-bottom-->
		    
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
														<div data-video="f2Z65fobH2I" id="video">
															<a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[indexTime[0]].movieId }' />">
																<img src="<c:url value='${movieList[indexTime[0]].imgList[2].imgPath}' />" alt="" class="img-responsive" />
															</a> 
														</div>
													</div>
			       									 <div class="player-text">
														<p class="fexi_header">${movieList[indexTime[0]].movieName }</p>
														<p class="fexi_header_para"><span class="conjuring_w3">${lg["indexNewOneStoryLine"] }<label>:</label></span>
														${movieList[indexTime[0]].movieDescribe }</p>
														<p class="fexi_header_para"><span>${lg["indexNewOneReleaseOn"] }<label>:</label></span>${fn:substring(movieList[indexTime[0]].movieCreateTime,0,10) }</p>
														<p class="fexi_header_para"><span>${lg["indexNewOneGenres"] }<label>:</label> </span>
															${movieList[indexTime[0]].classifysList[0].classifyNameObj.classifyNameString }  <%--先把第一个打印出来 --%>
															<c:forEach items="${movieList[indexTime[0]].classifysList}" var="bean" begin="1">
																 | ${bean.classifyNameObj.classifyNameString }
															</c:forEach>
														</p>
														<p class="fexi_header_para fexi_header_para1"><span>${lg["indexNewOneStarRating"] }<label>:</label></span>
															<c:set var="starNum" value="${movieList[indexTime[0]].movieGradeNum/2}"/>
															<c:forEach var="i" begin="1" end="${starNum }">
																<a><i class="fa fa-star" aria-hidden="true"></i></a>
															</c:forEach>
															<c:if test="${starNum%1 != 0}">
																<a><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
																<c:set var="starNum" value="${starNum+1}"/>
															</c:if>
															<c:forEach var="i" begin="${starNum+1}" end="5">
																<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
															</c:forEach>
														</p>
													</div>
										    </div>	
											<%--最新  最热    评分最高电影 --%>
										     <div class="col-md-7 wthree_agile-movies_list">
										     <c:forEach items="${indexTime }" var="index" begin="1" end="8">
														<div class="w3l-movie-gride-agile">
															<a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[index].movieId }' />" class="hvr-sweep-to-bottom" ><img src="<c:url value='${movieList[index].imgList[0].imgPath }' />" title="Movies Pro" class="img-responsive" alt=" ">
																<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h6><a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[index].movieId }' />" style="font-size:12px;">${movieList[index].movieName }	</a></h6>						
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																		<p>${fn:substring(movieList[index].movieCreateTime,0,4)}</p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">
																				<c:set var="starNum" value="${movieList[index].movieGradeNum/2}"/>
																					<c:forEach var="i" begin="1" end="${starNum }">
																						<a><i class="fa fa-star" aria-hidden="true"></i></a>
																					</c:forEach>
																					<c:if test="${starNum%1 != 0}">
																						<a><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
																						<c:set var="starNum" value="${starNum+1}"/>
																					</c:if>
																					<c:forEach var="i" begin="${starNum+1}" end="5">
																						<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
																					</c:forEach>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben">
																<p>${lg["New"]}</p>
															</div>
													</div>
												</c:forEach>
														
											 
											 </div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
								</div>
								
								
								<%--最热 --%>
								<div class="tab2">
								<div class="tab_movies_agileinfo">
										<div class="w3_agile_featured_movies">
											<div class="col-md-5 video_agile_player">
										            <div class="video-grid-single-page-agileits">
														<div data-video="f2Z65fobH2I" id="video"> 
															<a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[indexVisit[0]].movieId }' />">
																<img src="<c:url value='${movieList[indexVisit[0]].imgList[2].imgPath}' />" alt="" class="img-responsive" /> 
															</a>
														</div>
													</div>


										
	        <div class="player-text">
												<p class="fexi_header">${movieList[indexVisit[0]].movieName }</p>
												<p class="fexi_header_para"><span class="conjuring_w3">${lg["indexNewOneStoryLine"] }<label>:</label></span>
												${movieList[indexVisit[0]].movieDescribe }</p>
												<p class="fexi_header_para"><span>${lg["indexNewOneReleaseOn"] }<label>:</label></span>${fn:substring(movieList[indexVisit[0]].movieCreateTime,0,10) }</p>
												<p class="fexi_header_para"><span>${lg["indexNewOneGenres"] }<label>:</label> </span>
													${movieList[indexVisit[0]].classifysList[0].classifyNameObj.classifyNameString }  <%--先把第一个打印出来 --%>
													<c:forEach items="${movieList[indexVisit[0]].classifysList}" var="bean" begin="1">
														 | ${bean.classifyNameObj.classifyNameString }
													</c:forEach>
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>${lg["indexNewOneStarRating"] }<label>:</label></span>
													<c:set var="starNum" value="${movieList[indexVisit[0]].movieGradeNum/2}"/>
													<c:forEach var="i" begin="1" end="${starNum }">
														<a><i class="fa fa-star" aria-hidden="true"></i></a>
													</c:forEach>
													<c:if test="${starNum%1 != 0}">
														<a><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
														<c:set var="starNum" value="${starNum+1}"/>
													</c:if>
													<c:forEach var="i" begin="${starNum+1}" end="5">
														<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
													</c:forEach>
												</p>
											</div>
										    </div>	
											<%--最新  最热    评分最高电影 --%>
										     <div class="col-md-7 wthree_agile-movies_list">
										     <c:forEach items="${indexVisit }" var="index" begin="1" end="8">
														<div class="w3l-movie-gride-agile">
															<a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[index].movieId }' />" class="hvr-sweep-to-bottom"><img src="<c:url value='${movieList[index].imgList[0].imgPath }' />" title="Movies Pro" class="img-responsive" alt=" ">
																<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h6><a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[index].movieId }' />" style="font-size:12px;">${movieList[index].movieName }	</a></h6>						
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																		<p>${fn:substring(movieList[index].movieCreateTime,0,4)}</p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">
																				<c:set var="starNum" value="${movieList[index].movieGradeNum/2}"/>
																					<c:forEach var="i" begin="1" end="${starNum }">
																						<a><i class="fa fa-star" aria-hidden="true"></i></a>
																					</c:forEach>
																					<c:if test="${starNum%1 != 0}">
																						<a><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
																						<c:set var="starNum" value="${starNum+1}"/>
																					</c:if>
																					<c:forEach var="i" begin="${starNum+1}" end="5">
																						<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
																					</c:forEach>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben">
																<p>${lg["New"]}</p>
															</div>
													</div>
												</c:forEach>
														
											 
											 </div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
								</div>
								
								<%--评价最高 --%>
								<div class="tab3">
								<div class="tab_movies_agileinfo">
										<div class="w3_agile_featured_movies">
											<div class="col-md-5 video_agile_player">
										            <div class="video-grid-single-page-agileits">
														<div data-video="f2Z65fobH2I" id="video"> 
															<a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[indexGrade[0]].movieId }' />">
																<img src="<c:url value='${movieList[indexGrade[0]].imgList[2].imgPath}' />" alt="" class="img-responsive" />
															</a> 
														</div>
													</div>


										
	        <div class="player-text">
												<p class="fexi_header">${movieList[indexGrade[0]].movieName }</p>
												<p class="fexi_header_para"><span class="conjuring_w3">${lg["indexNewOneStoryLine"] }<label>:</label></span>
												${movieList[indexGrade[0]].movieDescribe }</p>
												<p class="fexi_header_para"><span>${lg["indexNewOneReleaseOn"] }<label>:</label></span>${fn:substring(movieList[indexGrade[0]].movieCreateTime,0,10) }</p>
												<p class="fexi_header_para"><span>${lg["indexNewOneGenres"] }<label>:</label> </span>
													${movieList[indexGrade[0]].classifysList[0].classifyNameObj.classifyNameString }  <%--先把第一个打印出来 --%>
													<c:forEach items="${movieList[indexGrade[0]].classifysList}" var="bean" begin="1">
														 | ${bean.classifyNameObj.classifyNameString }
													</c:forEach>												</p>
												<p class="fexi_header_para fexi_header_para1"><span>${lg["indexNewOneStarRating"] }<label>:</label></span>
													<c:set var="starNum" value="${movieList[indexGrade[0]].movieGradeNum/2}"/>
													<c:forEach var="i" begin="1" end="${starNum }">
														<a><i class="fa fa-star" aria-hidden="true"></i></a>
													</c:forEach>
													<c:if test="${starNum%1 != 0}">
														<a><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
														<c:set var="starNum" value="${starNum+1}"/>
													</c:if>
													<c:forEach var="i" begin="${starNum+1}" end="5">
														<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
													</c:forEach>
												</p>
											</div>
										    </div>	
											<%--最新  最热    评分最高电影 --%>
										     <div class="col-md-7 wthree_agile-movies_list">
										     <c:forEach items="${indexGrade }" var="index" begin="1" end="8">
														<div class="w3l-movie-gride-agile">
															<a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[index].movieId }' />" class="hvr-sweep-to-bottom"><img src="<c:url value='${movieList[index].imgList[0].imgPath}' />" title="Movies Pro" class="img-responsive" alt=" ">
																<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h6><a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[index].movieId }' />" style="font-size:12px;">${movieList[index].movieName }	</a></h6>						
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																		<p>${fn:substring(movieList[index].movieCreateTime,0,4)}</p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">
																				<c:set var="starNum" value="${movieList[index].movieGradeNum/2}"/>
																					<c:forEach var="i" begin="1" end="${starNum }">
																						<a><i class="fa fa-star" aria-hidden="true"></i></a>
																					</c:forEach>
																					<c:if test="${starNum%1 != 0}">
																						<a><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
																						<c:set var="starNum" value="${starNum+1}"/>
																					</c:if>
																					<c:forEach var="i" begin="${starNum+1}" end="5">
																						<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
																					</c:forEach>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben">
																<p>${lg["New"]}</p>
															</div>
													</div>
												</c:forEach>
														
											 
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
				  <h3 class="agile_w3_title"> ${lg["Latest"] } <span>${lg["Movies"] }</span></h3>
			<!--/movies-->				
			
			<div class="w3_agile_latest_movies">
			
				<div id="owl-demo" class="owl-carousel owl-theme">
				<c:forEach  items="${indexTime }" var="index">
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[index].movieId }' />" class="hvr-sweep-to-bottom"><img src="${pageContext.request.contextPath }${movieList[index].imgList[0].imgPath }" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[index].movieId }' />">${movieList[index].movieName }	</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>${fn:substring(movieList[index].movieCreateTime,0,4)}</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<c:set var="starNum" value="${movieList[index].movieGradeNum/2}"/>
												<c:forEach var="i" begin="1" end="${starNum }">
													<a><i class="fa fa-star" aria-hidden="true"></i></a>
												</c:forEach>
												<c:if test="${starNum%1 != 0}">
													<a><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
													<c:set var="starNum" value="${starNum+1}"/>
												</c:if>
												<c:forEach var="i" begin="${starNum+1}" end="5">
													<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
												</c:forEach>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>${lg["New"]}</p>
							</div>
						</div>
					</div>
					</c:forEach>
					   </div>
				    </div>
				<!--//movies-->
				 <h3 class="agile_w3_title">${lg["Requested"] } <span>${lg["Movies"] }</span> </h3>
				<!--/requested-movies-->
				
					<c:forEach items="${indexVisit }" var="index" end="9">
				     <div class="wthree_agile-requested-movies">
						<div class="col-md-2 w3l-movie-gride-agile requested-movies">
							<a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[index].movieId }' />" class="hvr-sweep-to-bottom"><img src="${pageContext.request.contextPath }${movieList[index].imgList[0].imgPath }" title="Movies Pro" class="img-responsive" alt=" ">
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[index].movieId }' />">${movieList[index].movieName }</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>${fn:substring(movieList[index].movieCreateTime,0,4)}</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<c:set var="starNum" value="${movieList[index].movieGradeNum/2}"/>
												<c:forEach var="i" begin="1" end="${starNum }">
													<a><i class="fa fa-star" aria-hidden="true"></i></a>
												</c:forEach>
												<c:if test="${starNum%1 != 0}">
													<a><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
													<c:set var="starNum" value="${starNum+1}"/>
												</c:if>
												<c:forEach var="i" begin="${starNum+1}" end="5">
													<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
												</c:forEach>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							<div class="ribben one">
								<p>${lg["New"]}</p>
							</div>
						</div>
					</c:forEach>
						<div class="clearfix"></div>
						</div>
				<!--//requested-movies-->
				<!--/top-movies-->
					<h3 class="agile_w3_title">${lg["Top"] } <span>${lg["Movies"] }</span> </h3>
							<div class="top_movies">
								<div class="tab_movies_agileinfo">
										<div class="w3_agile_featured_movies two">
										
										     <div class="col-md-7 wthree_agile-movies_list second-top">
		     	
											<c:forEach items="${indexGrade }" var="index" begin="1" end="8">	
													<div class="w3l-movie-gride-agile">
														<a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[index].movieId }' />" class="hvr-sweep-to-bottom"><img src="${pageContext.request.contextPath }${movieList[index].imgList[0].imgPath }" title="Movies Pro" class="img-responsive" alt=" ">
															<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
														</a>
															<div class="mid-1 agileits_w3layouts_mid_1_home">
																<div class="w3l-movie-text">
																	<h6><a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[index].movieId }' />" style="font-size:12px;">${movieList[index].movieName }</a></h6>							
																</div>
																<div class="mid-2 agile_mid_2_home">
																	<p>${fn:substring(movieList[index].movieCreateTime,0,4)}</p>
																	<div class="block-stars">
																		<ul class="w3l-ratings">
																			<c:set var="starNum" value="${movieList[index].movieGradeNum/2}"/>
																			<c:forEach var="i" begin="1" end="${starNum }">
																				<a><i class="fa fa-star" aria-hidden="true"></i></a>
																			</c:forEach>
																			<c:if test="${starNum%1 != 0}">
																				<a><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
																				<c:set var="starNum" value="${starNum+1}"/>
																			</c:if>
																			<c:forEach var="i" begin="${starNum+1}" end="5">
																				<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
																			</c:forEach>
																		</ul>
																	</div>
																	<div class="clearfix"></div>
																</div>
															</div>
														<div class="ribben">
															<p>${lg["New"]}</p>
														</div>
												</div>
											</c:forEach>
											 </div>
											
											 	<div class="col-md-5 video_agile_player second-top">
										            <div class="video-grid-single-page-agileits">
														<div data-video="BXEZFd0RT5Y" id="video3"> 
															<a href="<c:url value='/movie.s?method=singleShow&type=movie&id=${movieList[indexGrade[0]].movieId }' />">
																<img src="<c:url value='${movieList[indexGrade[0]].imgList[2].imgPath}' />" alt="" class="img-responsive" /> 
															</a>
														</div>
													</div>

        <div class="player-text two">
												<p class="fexi_header">${movieList[indexGrade[0]].movieName } </p>
												<p class="fexi_header_para"><span class="conjuring_w3">${lg["indexNewOneStoryLine"] }<label>:</label></span>
												${movieList[indexGrade[0]].movieDescribe } </p>
									<p class="fexi_header_para"><span>${lg["indexNewOneReleaseOn"] }<label>:</label></span>${fn:substring(movieList[indexGrade[0]].movieCreateTime,0,10) } </p>
												
												<p class="fexi_header_para">
													<span>${lg["indexNewOneGenres"] }<label>:</label> </span>
													${movieList[indexGrade[0]].classifysList[0].classifyNameObj.classifyNameString }  <%--先把第一个打印出来 --%>
													<c:forEach items="${movieList[indexGrade[0]].classifysList}" var="bean" begin="1">
														 | ${bean.classifyNameObj.classifyNameString }
													</c:forEach>
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>${lg["indexNewOneStarRating"] }<label>:</label></span>
													<c:set var="starNum" value="${movieList[indexGrade[0]].movieGradeNum/2}"/>
													<c:forEach var="i" begin="1" end="${starNum }">
														<a><i class="fa fa-star" aria-hidden="true"></i></a>
													</c:forEach>
													<c:if test="${starNum%1 != 0}">
														<a><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
														<c:set var="starNum" value="${starNum+1}"/>
													</c:if>
													<c:forEach var="i" begin="${starNum+1}" end="5">
														<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
													</c:forEach>
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
		<c:if test="${! empty msg }">
			<script type="text/javascript">
				alert('${msg}');
			</script>
		</c:if>
	<!--/footer-bottom-->
	<%@ include file="footer.jsp"%>

</body>
</html>