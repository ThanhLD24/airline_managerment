<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="decorator"
	uri="http://claudiushauptmann.com/jsp-decorator/"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TH-Vé Máy Bay Trực Tuyến</title>

<link
	href="${pageContext.request.contextPath}/Styles/vemaybayonline/reset-css.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/Styles/jquery-ui-1.8.7.all.css"
	rel="stylesheet" type="text/css" />
<link
	href=${pageContext.request.contextPath}/Styles/vemaybayonline/layout.css
	rel="stylesheet" type="text/css" />
<link
	href=${pageContext.request.contextPath}/images/newversion/favicon.ico
	rel="icon" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Scripts/jquery-1.7.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Scripts/jquery.input-hint.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Scripts/AbayCommon.js"></script>

<style type="text/css">
.textMarquee {
	margin: 10px 20px 0 10px;
}

.textMarquee span {
	font-size: 15px;
	color: #fd8208;
	font-weight: bold;
	line-height: 15px;
	text-decoration: none
}

.textMarquee img {
	margin: 0px 5px;
}
</style>

<link
	href=${pageContext.request.contextPath}/Styles/vemaybayonline/ContentHompage.css
	rel="stylesheet" type="text/css" />

<meta name="description"
	content="Đặt mua vé máy bay giá rẻ trực tuyến, đại lý book vé máy bay online tiện lợi chỉ với vài cú click chuột. Hệ thống tìm bảng giá vé máy bay chuyên nghiệp uy tín vemaybayonline.net.vn." />
</head>
<body>
	<div id="wrapper" class="container">
		<!-- <div id="hotline-left">
				<div id='hotline-left' class=""
					style="position: fixed; top: 96px; margin-left: -162px;">
					<a
						href='/tin-tuc-chi-tiet/dat-ve-may-bay-tren-mobile-dien-thoai-di-dong.html'><img
						src="Images/mobile-ve-may-bay-online.png"
						alt="Đặt vé máy bay trên mobile, điện thoại di động tại vemaybayonline.net.vn"
						title="Đặt vé máy bay trên mobile, điện thoại di động tại vemaybayonline.net.vn"></a>
					<br> 
					<a
						href='/tin-tuc-chi-tiet/ra-mat-chuc-nang-tim-kiem-gia-ve-re-nhat-theo-thang.html'
						style='display: block; margin-top: 5px;'><img
						src="Images/tim-ve-theo-thang.png"
						alt="tìm kiếm giá vé rẻ nhất theo tháng tại vemaybayonline.net.vn"
						title="tìm kiếm giá vé rẻ nhất theo tháng tại vemaybayonline.net.vn"></a>
				</div>
			</div>
			<div id="Hotline-right" class=""
				style="width: 160px; position: fixed; top: 106px; margin-left: 970px;">
				<div class="HotlineRight">
					<h4>
						<span>Hotline</span> <br /> HỖ trợ
					</h4>

					<p class="hotline2">0165.966.0338</p>

					<p class="hotline2">0165.964.1464</p>

					<div class="yhSp2">
						<a id="lnkYahoo" class="yahoo2" href="ymsgr:sendim?abayhn21">Hỗ
							trợ Thanh Hoàng</a>
					</div>
					<div class="FBG">
						<p align="center">Nhấn like và +1 để nhận tin vé rẻ</p>
						<table>
							<tr>
								<td style="padding-right: 5px;">
									<div id="fb-root"></div> <script>
										(function(d, s, id) {
											var js, fjs = d
													.getElementsByTagName(s)[0];
											if (d.getElementById(id))
												return;
											js = d.createElement(s);
											js.id = id;
											js.src = "/connect.facebook.net/en_US/all.js#xfbml=1";
											fjs.parentNode
													.insertBefore(js, fjs);
										}(document, 'script', 'facebook-jssdk'));
									</script>
									<div class="fb-like"
										data-href="https://www.facebook.com/vemaybayonline.net.vn"
										data-width="10" data-height="The pixel height of the plugin"
										data-colorscheme="light" data-layout="button_count"
										data-action="like" data-show-faces="true" data-send="false"></div>
								</td>
								<td>
									Place this tag where you want the +1 button to render.
									<div class="g-plusone" data-size="medium"></div> Place this tag after the last +1 button tag.
									<script type="text/javascript">
										(function() {
											var po = document
													.createElement('script');
											po.type = 'text/javascript';
											po.async = true;
											po.src = 'https://apis.google.com/js/plusone.js';
											var s = document
													.getElementsByTagName('script')[0];
											s.parentNode.insertBefore(po, s);
										})();
									</script>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="" style="margin-top: 10px">
					<img style='width: 160px'
						src="Images/sanphamtincay-dvhoanhao_Ve.png"
						alt="Ve may bay online - Chung nhan dich vu hoan hao" />
				</div>
			</div> -->

		<script type="text/javascript">
			$(function() {
				$('ul table.sub').hover(function() {
					$(this).prev().css({
						'color' : '#055588',
						'text-shadow' : 'none'
					});
				}, function() {
					$(this).prev().css({
						'color' : '#fff',
						'text-shadow' : '1px 1px #033c7e'
					});
				});
			});
		</script>
		<div class="FlowerTop">
			<div id="Header">
				<a href="http://fb.com/duy.lee.7" class="Logo"> <img
					src="${pageContext.request.contextPath}/Images/vemaybayonline.jpg"
					alt="Vé máy bay Online" />
				</a>
				<div class="HotroOnHeader">

					<div class="yhSp">
						<a id="UsrHeader1_lnkYahoo" class="yahoo"
							href="ymsgr:sendim?abayhn21">Hỗ trợ viên Duy Thanh</a> <br /> <a
							id="UsrHeader1_lnkYahoo2" class="yahoo"
							href="ymsgr:sendim?abayhn21">Hỗ trợ viên Duy Hoàng</a>

					</div>
					<div class="hotlineS">
						<a class="hotline1">0165.966.0338</a> <br /> <a class="hotline1">0165.964.1464</a>
					</div>

					<div class="HotlineHeader">
						<p></p>
						<a> 1900 8198 </a>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<!--End: Header-->
		</div>

		<div id="navMenu">
			<ul>
				<li><a class="mMenu" href="home.php">Trang chủ</a></li>

				<li><a class="mMenu" href="/ve-may-bay-noi-dia.html">Vé nội
						địa</a>

					<table id="UsrHeader1_rpt_dlSubMenu_1" class="sub" cellspacing="0">
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-sai-gon.html">Vé
									máy bay đi Sài Gòn</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-quy-nhon.html">Vé
									máy bay đi Quy Nhơn</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-ha-noi.html">Vé
									máy bay đi Hà Nội</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-nha-trang.html">Vé
									máy bay đi Nha Trang</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-da-nang.html">Vé
									máy bay đi Đà Nẵng</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-can-tho.html">Vé
									máy bay đi Cần Thơ</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-vinh.html">Vé
									máy bay đi Vinh</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-dong-hoi.html">Vé
									máy bay đi Đồng Hới</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-hai-phong.html">Vé
									máy bay đi Hải Phòng</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-tam-ky.html">Vé
									máy bay đi Tam Kỳ</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-da-lat.html">Vé
									máy bay đi Đà Lạt</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-con-dao.html">Vé
									máy bay đi Côn Đảo</a></td>
						</tr>
						<tr>
							<td><a class="sMenu"
								href="/ve-may-bay-di-buon-me-thuot.html">Vé máy bay đi Buôn
									Mê Thuột</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-thanh-hoa.html">Vé
									máy bay đi Thanh Hóa</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-phu-quoc.html">Vé
									máy bay đi Phú Quốc</a></td>
							<td><a class="sMenu"
								href="/ve-may-bay-di-dien-bien-phu.html">Vé máy bay đi Điện
									Biên</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-hue.html">Vé
									máy bay đi Huế</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-tuy-hoa.html">Vé
									máy bay đi Tuy Hòa</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-pleiku.html">Vé
									máy bay đi Pleiku</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-rach-gia.html">Vé
									máy bay đi Rạch Giá</a></td>
						</tr>
					</table></li>

				<li><a class="mMenu" href="/ve-may-bay-quoc-te.html">Vé
						quốc tế</a>

					<table id="UsrHeader1_rpt_dlSubMenu_2" class="sub" cellspacing="0">
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-thai-lan.html">Vé
									máy bay đi Thái Lan</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-han-quoc.html">Vé
									máy bay đi Hàn Quốc</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-singapore.html">Vé
									máy bay đi Singapore</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-duc.html">Vé
									máy bay đi Đức</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-trung-quoc.html">Vé
									máy bay đi Trung Quốc</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-lao.html">Vé
									máy bay đi Lào</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-my.html">Vé
									máy bay đi Mỹ</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-dai-loan.html">Vé
									máy bay đi Đài Loan</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-malaysia.html">Vé
									máy bay đi Malaysia</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-canada.html">Vé
									máy bay đi Canada</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-nhat-ban.html">Vé
									máy bay đi Nhật Bản</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-campuchia.html">Vé
									máy bay đi Campuchia</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-uc.html">Vé
									máy bay đi Úc</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-indonesia.html">Vé
									máy bay đi Indonesia</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-phap.html">Vé
									máy bay đi Pháp</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-myanmar.html">Vé
									máy bay đi Myanmar</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-hong-kong.html">Vé
									máy bay đi Hong Kong</a></td>
							<td><a class="sMenu" href="/ve-may-bay-di-new-zealand.html">Vé
									máy bay đi New Zealand</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-di-anh.html">Vé
									máy bay đi Anh</a></td>
							<td><a class="sMenu" href="/ve-may-bay-quoc-te.html">Vé
									máy bay đi Quốc gia khác...</a></td>
						</tr>
					</table></li>

				<li><a class="mMenu" href="/ve-may-bay-theo-hang.html">Vé
						theo hãng</a>

					<table id="UsrHeader1_rpt_dlSubMenu_3" class="sub" cellspacing="0">
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-vietjet-air.html">Vé
									máy bay Vietjet Air</a></td>
						</tr>
						<tr>
							<td><a class="sMenu"
								href="/ve-may-bay-vietnam-airlines.html">Vé máy bay Vietnam
									Airlines</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-jetstar.html">Vé
									máy bay Jetstar</a></td>
						</tr>
						<tr>
							<td><a class="sMenu"
								href="/ve-may-bay-china-southern-airlines.html">Vé máy bay
									China Southern Airlines</a></td>
						</tr>
						<tr>
							<td><a class="sMenu"
								href="/ve-may-bay-malaysia-airlines.html">Vé máy bay
									Malaysia Airlines</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-qatar-airways.html">Vé
									máy bay Qatar Airways</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-thai-airways.html">Vé
									máy bay Thai Airways</a></td>
						</tr>
						<tr>
							<td><a class="sMenu"
								href="/ve-may-bay-singapore-airlines.html">Vé máy bay
									Singapore Airlines</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-theo-hang.html">Vé
									máy bay Hãng khác...</a></td>
						</tr>
					</table></li>

				<li><a class="mMenu" href="/ve-may-bay-tet.html">Vé Tết
						2016</a></li>

				<li><a class="mMenu" href="/tin-tuc/tin-khuyen-mai.html">Tin
						khuyến mại</a></li>

				<li><a class="mMenu" href="/Dich-vu/Cau-Hoi-Thuong-Gap.aspx">Tư
						vấn</a>

					<table id="UsrHeader1_rpt_dlSubMenu_6" class="sub" cellspacing="0">
						<tr>
							<td><a class="sMenu" href="/hinh-thuc-dat-ve.html">Hướng
									dẫn đặt vé</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/hinh-thuc-thanh-toan.html">Hướng
									dẫn thanh toán</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/ve-may-bay-gia-re.html">Hướng
									dẫn săn vé máy bay giá rẻ</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/Dich-vu/Cau-Hoi-Thuong-Gap.aspx">Câu
									hỏi thường gặp</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/Dich-vu/Y-kien-khach-hang.aspx">Ý
									kiến khách hàng</a></td>
						</tr>
						<tr>
							<td><a class="sMenu" href="/Dich-vu/Xem-don-hang.aspx">Tra
									cứu đơn hàng</a></td>
						</tr>
					</table></li>

				<li><a class="mMenu" href="/gioi-thieu.html">Giới thiệu</a></li>

				<li><a class="mMenu" href="/lien-he.html">Liên hệ</a></li>
			</ul>
		</div>
		<!--End: navMenu-->
		<div class="textMarquee">
			<marquee behavior="scroll" scrollamount="3" scrolldelay="10">
				<img
					src="${pageContext.request.contextPath}/Images/lefft_icon_scrolltop.png"
					alt="" /> <span>Ra mắt chức năng tìm giá vé rẻ nhất | TH
					bán vé máy bay &amp; hỗ trợ khách hàng đến <span
					style="color: #d51317;">12H ĐÊM</span> tại tất cả tỉnh thành
				</span> <img
					src="${pageContext.request.contextPath}/Images/Right_Icon_scrolltop.png"
					alt="" />
			</marquee>
		</div>

		<div id="ContentHomepage">

			<h1
				style="height: 0 !important; width: 0 !important; overflow: hidden !important">Đặt
				mua vé máy bay giá rẻ trực tuyến, đại lý book vé máy bay online tiện
				lợi chỉ với vài cú click chuột. Hệ thống tìm bảng giá vé máy bay
				chuyên nghiệp uy tín http://thanhhoang.com</h1>
			<decorator:placeholder name='replace' />
			<!-- <div class="LogoNganhang"></div>-->

			<div class="LandingPageLink">
				<div class='col '>
					<h4>
						<a href='/ve-may-bay-noi-dia.html' title='Vé máy bay nội địa'>Vé
							máy bay nội địa</a>
					</h4>
					<ul>
						<li><a href='/ve-may-bay-di-buon-me-thuot.html'
							title='Vé máy bay đi Buôn Mê Thuột'>Vé máy bay đi Buôn Mê
								Thuột</a></li>
						<li><a href='/ve-may-bay-di-da-lat.html'
							title='Vé máy bay đi Đà Lạt'>Vé máy bay đi Đà Lạt</a></li>
						<li><a href='/ve-may-bay-di-da-nang.html'
							title='Vé máy bay đi Đà Nẵng'>Vé máy bay đi Đà Nẵng</a></li>
						<li><a href='/ve-may-bay-di-ha-noi.html'
							title='Vé máy bay đi Hà Nội'>Vé máy bay đi Hà Nội</a></li>
						<li><a href='/ve-may-bay-di-hai-phong.html'
							title='Vé máy bay đi Hải Phòng'>Vé máy bay đi Hải Phòng</a></li>
						<li><a href='/ve-may-bay-di-hue.html'
							title='Vé máy bay đi Huế'>Vé máy bay đi Huế</a></li>
						<li><a href='/ve-may-bay-di-nha-trang.html'
							title='Vé máy bay đi Nha Trang'>Vé máy bay đi Nha Trang</a></li>
						<li><a href='/ve-may-bay-di-phu-quoc.html'
							title='Vé máy bay đi Phú Quốc'>Vé máy bay đi Phú Quốc</a></li>
						<li><a href='/ve-may-bay-di-sai-gon.html'
							title='Vé máy bay đi Sài Gòn'>Vé máy bay đi Sài Gòn</a></li>
						<li><a href='/ve-may-bay-di-vinh.html'
							title='Vé máy bay đi Vinh'>Vé máy bay đi Vinh</a></li>
					</ul>
				</div>
				<div class='col '>
					<h4>
						<a href='/ve-may-bay-quoc-te.html' title='Vé máy bay quốc tế'>Vé
							máy bay quốc tế</a>
					</h4>
					<ul>
						<li><a href='/ve-may-bay-di-malaysia.html'
							title='Vé máy bay đi Malaysia'>Vé máy bay đi Malaysia</a></li>
						<li><a href='/ve-may-bay-di-my.html' title='Vé máy bay đi Mỹ'>Vé
								máy bay đi Mỹ</a></li>
						<li><a href='/ve-may-bay-di-nhat-ban.html'
							title='Vé máy bay đi Nhật Bản'>Vé máy bay đi Nhật Bản</a></li>
						<li><a href='/ve-may-bay-di-phap.html'
							title='Vé máy bay đi Pháp'>Vé máy bay đi Pháp</a></li>
						<li><a href='/ve-may-bay-di-singapore.html'
							title='Vé máy bay đi Singapore'>Vé máy bay đi Singapore</a></li>
						<li><a href='/ve-may-bay-di-thai-lan.html'
							title='Vé máy bay đi Thái Lan'>Vé máy bay đi Thái Lan</a></li>
						<li><a href='/ve-may-bay-di-trung-quoc.html'
							title='Vé máy bay đi Trung Quốc'>Vé máy bay đi Trung Quốc</a></li>
						<li><a href='/ve-may-bay-di-uc.html' title='Vé máy bay đi Úc'>Vé
								máy bay đi Úc</a></li>
					</ul>
				</div>
				<div class='col '>
					<h4>
						<a href='/ve-may-bay-theo-hang.html' title='Vé máy bay theo hãng'>Vé
							máy bay theo hãng</a>
					</h4>
					<ul>
						<li><a href='/ve-may-bay-jetstar.html'
							title='Vé máy bay Jetstar'>Vé máy bay Jetstar</a></li>
						<li><a href='/ve-may-bay-vietjet-air.html'
							title='Vé máy bay Vietjet Air'>Vé máy bay Vietjet Air</a></li>
						<li><a href='/ve-may-bay-vietnam-airlines.html'
							title='Vé máy bay Vietnam Airlines'>Vé máy bay Vietnam
								Airlines</a></li>
					</ul>
				</div>
				<div class='col lastItem'>
					<h4>
						<a href='/ve-may-bay-theo-loai.html' title='Vé máy bay theo loại'>Vé
							máy bay theo loại</a>
					</h4>
					<ul>
						<li><a href='/ve-may-bay-gia-re.html'
							title='Vé máy bay giá rẻ'>Vé máy bay giá rẻ</a></li>
						<li><a href='/ve-may-bay-tet.html'
							title='Vé máy bay Tết 2016'>Vé máy bay Tết 2016</a></li>
						<li><a href='/ve-may-bay-theo-doan-tour.html'
							title='Vé máy bay theo đoàn'>Vé máy bay theo đoàn</a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>

	<div id="Footer">
		<div class="container">
			<div class="Top_Footer">
				<div class="mxh">
					<a href="http://www.facebook.com/duy.lee.7"><img
						src="${pageContext.request.contextPath}/Images/Newversion/FacebookIcon.png"
						alt="" /></a> <a href=""><img
						src="${pageContext.request.contextPath}/Images/Newversion/TwitterIcon.png"
						alt="" /></a> <a href=""><img
						src="${pageContext.request.contextPath}/Images/Newversion/G.png"
						alt="" /></a> <br /> <a href="#" align="right"><img
						src="${pageContext.request.contextPath}/Images/Newversion/Logo_Footer.png"
						width="207" height="60" class="logoFooter" alt="" /></a>
					<p align="right" class="copyright"></p>
				</div>
				<div class="Thacmac">
					<h6>Thắc mắc?</h6>
					<ul>
						<li><a href="">&rsaquo; Hướng dẫn thanh toán</a></li>
						<li><a href="">&rsaquo; Hướng dẫn đặt vé</a></li>
						<li><a href="">&rsaquo; Câu hỏi thường gặp</a></li>
						<li><a href="">&rsaquo; Tư vấn</a></li>
						<li><a href="/thong-tin-chuyen-khoan.html">&rsaquo; Thông
								tin chuyển khoản</a></li>
					</ul>
				</div>
				<div class="Thacmac">
					<h6>Về chúng tôi</h6>
					<ul>
						<li><a href="">&rsaquo; Giới thiệu</a></li>
						<li><a href="/">&rsaquo; Sitemaps</a></li>
						<li><a href="/">&rsaquo; Tin tức</a></li>
						<li><a href="">&rsaquo; Điều khoản sử dụng</a></li>
						<li><a href="">&rsaquo; Chính sách bảo mật</a></li>
					</ul>
				</div>
				<div class="Thacmac">
					<h6>Quản lý đặt hàng</h6>
					<ul>
						<li><a href="">&rsaquo; Xem đơn hàng</a></li>
						<li><a href="">&rsaquo; In vé điện tử</a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			<div class="bottomFooter">
				<!-- <div class="hanoi">
						<h5>Đại lý vé máy bay online giá rẻ ThanhHoang</h5>
					</div>
					<div class="hcm">
						<h5>Đại lý vé máy bay online giá rẻ ThanhHoang</h5>
					</div>
					<div class="clear"></div> -->
				<div class="dmca" align="right">

					<p style="color: white; font-size: 11px;">
						Phát triển nội dung: <a href="" style="text-decoration: none;"
							rel="author">Lê Duy Thanh</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</body>