<%@page import="airline.managerment.utility.Variables"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="decorator"
	uri="http://claudiushauptmann.com/jsp-decorator/"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
	<decorator:decorate filename='/master'>
		<decorator:content placeholder='replace'>
			<div class="bgSearchnView">
				<div class="MainColumn">

					<link
						href=${pageContext.request.contextPath}/Styles/vemaybayonline/SearchnView.css
						rel="stylesheet" type="text/css" />
					<script type="text/javascript"
						src='${pageContext.request.contextPath}/Scripts/SearchForm.js'></script>
					<link
						href="${pageContext.request.contextPath}/Scripts/jquery.autocomplete.css"
						rel="stylesheet" type="text/css" />
					<script
						src="${pageContext.request.contextPath}/Scripts/jquery.autocomplete.js"
						type="text/javascript"></script>
					<script
						src="${pageContext.request.contextPath}/Scripts/jquery-ui-1.8.6.core.min.js"
						type="text/javascript"></script>
					<script
						src="${pageContext.request.contextPath}/Scripts/jquery-ui-1.8.17.custom.min.js"
						type="text/javascript"></script>
					<script type="text/javascript"
						src="${pageContext.request.contextPath}/Scripts/jquery/ui.datepicker.lunar.min.js"></script>
					<style type="text/css">
.txt-date {
	width: 1px;
	z-index: -1000;
	position: absolute;
}

.timverenhat_btn {
	overflow: hidden;
	margin-bottom: 18px;
	float: left;
	width: 50%;
}

.timverenhat_btn input {
	float: left;
	margin-right: 6px;
	margin-top: 2px;
}

.timverenhat_btn label {
	font-size: 14px;
	color: #fbbb00;
	line-height: 20px;
	float: left;
	position: inherit;
}

.timverenhat_btn label:before, .timverenhat_btn label:after {
	content: '';
	display: none;
}
</style>
					<script type="text/javascript">
						function isEmpty(obj) {
							if (typeof obj == 'undefined' || obj === null
									|| obj === '')
								return true;
							if (typeof obj == 'number' && isNaN(obj))
								return true;
							if (obj instanceof Date && isNaN(Number(obj)))
								return true;
							return false;
						}
						$(document)
								.ready(
										function() {
											var currentDate = new Date();
											var maxDate = new Date(currentDate
													.getFullYear() + 1,
													currentDate.getMonth(), 1);
											maxDate
													.setDate(maxDate.getDate() - 1);
											$('.txt-date')
													.datepickerlunar(
															{
																minDate : 0,
																showOn : "button",
																buttonImage : "/images/date.png",
																buttonImageOnly : true,
																buttonText : "Chọn ngày theo ngày âm",
																maxDate : maxDate
															});
											$(".txt-date")
													.change(
															function() {
																var dateType = $(
																		this)
																		.attr(
																				'datetype');
																var d = $(this)
																		.datepickerlunar(
																				"getDate");
																$(
																		'.cbo-'
																				+ dateType
																				+ '-day')
																		.val(
																				d
																						.getDate());
																var month = d
																		.getMonth() + 1;
																var str = (month < 10 ? "0"
																		+ month
																		: month)
																		+ '/'
																		+ d
																				.getFullYear();
																$(
																		'.cbo-'
																				+ dateType
																				+ '-month')
																		.val(
																				str);
															});
											$('.cbo-datetype')
													.change(
															function() {
																var dateType = $(
																		this)
																		.attr(
																				'datetype');
																$(
																		'.txt-date-'
																				+ dateType)
																		.val(
																				$(
																						'.cbo-'
																								+ dateType
																								+ '-day')
																						.val()
																						+ '/'
																						+ $(
																								'.cbo-'
																										+ dateType
																										+ '-month')
																								.val());
															});
											$(".startplace")
													.click(
															function() {
																$(
																		'#list-arrival')
																		.dialog(
																				"close");
															});
											$(".endplace")
													.click(
															function() {
																$(
																		'#list-departure')
																		.dialog(
																				"close");
															});
											$(".startplace,.endplace")
													.focus(
															function() {
																$(this)
																		.addClass(
																				'focus-input');
																var dateType = $(
																		this)
																		.attr(
																				'datetype');
																var deOffset = $(
																		'.startplace')
																		.offset();
																var arrOffset = $(
																		'.endplace')
																		.offset();
																var inputHeight = $(
																		'.endplace')
																		.height()
																		+ 2
																		- $(
																				window)
																				.scrollTop();
																$(
																		"#list-departure")
																		.dialog(
																				{
																					autoOpen : false,
																					width : 580,
																					// modal: true,
																					position : [
																							deOffset.left,
																							deOffset.top
																									+ inputHeight ]
																				});
																$(
																		"#list-arrival")
																		.dialog(
																				{
																					autoOpen : false,
																					width : 580,
																					//  modal: true,
																					position : [
																							arrOffset.left,
																							deOffset.top
																									+ inputHeight ]
																				});
																// $("#inter-city-" + dateType).focus();
																$(
																		"#list-"
																				+ dateType)
																		.dialog(
																				"open");
																if ($(
																		"#list-departure")
																		.dialog(
																				"isOpen")) {
																	$(
																			"#inter-city-departure")
																			.focus();
																}
																if ($(
																		"#list-arrival")
																		.dialog(
																				"isOpen")) {
																	$(
																			"#inter-city-arrival")
																			.focus();
																}
																var interCityInput = '';
																$(
																		"#inter-city-"
																				+ dateType)
																		.keyup(
																				function() {
																					interCityInput = $(
																							this)
																							.val();
																				});
																var depCity = $(
																		'.startplace')
																		.val();
																var arrCity = $(
																		'.endplace')
																		.val();
																if (isEmpty(interCityInput)) {
																	$(
																			"#submit-departure")
																			.click(
																					function() {
																						var val = $(
																								"#inter-city-departure")
																								.val()
																								.trim();
																						if (val == '') {
																							$(
																									'.error-departure')
																									.text(
																											'Xin hãy nhập tên thành phố hoặc sân bay để tiếp tục.');
																							$(
																									"#inter-city-departure")
																									.val(
																											val);
																							return;
																						}
																						$(
																								'.error-departure')
																								.text(
																										' ');
																						$(
																								'.startplace')
																								.attr(
																										'value',
																										val);
																						$(
																								'.dialog')
																								.dialog(
																										"close");
																						if (!$(
																								'.endplace')
																								.hasClass(
																										'choosen'))
																							$(
																									'.endplace')
																									.focus();
																					});
																	$(
																			"#submit-arrival")
																			.click(
																					function() {
																						var val = $(
																								"#inter-city-arrival")
																								.val()
																								.trim();
																						if (val == '') {
																							$(
																									'.error-arrival')
																									.text(
																											'Xin hãy nhập tên thành phố hoặc sân bay để tiếp tục.');
																							$(
																									"#inter-city-arrival")
																									.val(
																											val);
																							return;
																						}
																						$(
																								'.error-arrival')
																								.text(
																										' ');
																						$(
																								'.endplace')
																								.addClass(
																										'choosen');
																						$(
																								'.endplace')
																								.attr(
																										'value',
																										val);
																						$(
																								'.dialog')
																								.dialog(
																										"close");
																						if (isEmpty(depCity))
																							$(
																									'.startplace')
																									.focus();
																					});
																}
																// close dialog when click outside dialog
																$(document)
																		.click(
																				function() {
																					$(
																							'.dialog')
																							.dialog(
																									"close");
																				});
																$(
																		'.startplace, .endplace, .dialog')
																		.click(
																				function(
																						event) {
																					event
																							.stopPropagation();
																				});
																$(
																		'.ui-widget-overlay')
																		.live(
																				'click',
																				function() {
																					$(
																							'#book-form input')
																							.removeClass(
																									'focus-input');
																					$(
																							'.dialog')
																							.dialog(
																									"close");
																				});
																// get data from dialog when click
																$(
																		'#list-departure a')
																		.click(
																				function() {
																					//$('.startplace').attr('value', $(this).value());
																					$(
																							'.startplace')
																							.attr(
																									'value',
																									$(
																											this)
																											.text());
																					$(
																							'#list-departure')
																							.dialog(
																									"close");
																					if ($(
																							'.endplace')
																							.hasClass(
																									'choosen')
																							&& !isEmpty(arrCity)) {
																						$(
																								".startdate")
																								.focus();
																					} else
																						$(
																								".endplace")
																								.focus();
																					return false;
																				});
																$('.startplace')
																		.focus(
																				function() {
																					$(
																							"#inter-city-departure")
																							.focus();
																				});
																$(
																		'#list-arrival a')
																		.click(
																				function() {
																					$(
																							'.endplace')
																							.addClass(
																									'choosen');
																					$(
																							'.endplace')
																							.attr(
																									'value',
																									$(
																											this)
																											.text());
																					$(
																							'#list-arrival')
																							.dialog(
																									"close");
																					if (isEmpty(depCity))
																						$(
																								'.startplace')
																								.focus();
																					else {
																						$(
																								'.dialog')
																								.dialog(
																										"close");
																						$(
																								".startdate")
																								.focus();
																					}
																					return false;
																				});
															});

										});
					</script>
					<style type="text/css">
.item-warning {
	white-space: nowrap;
	text-decoration: none;
	clear: both;
	float: left;
	margin-bottom: 5px;
}

.highlight {
	background: url('images/animation/highlight1.gif');
	font-weight: bold;
	line-height: 25px;
}

.dialog {
	display: none;
}

.ui-widget-overlay {
	background: transparent !important;
}

.ui-widget-overlay {
	background: transparent !important;
}

.ui-dialog {
	background: #FCFBBB !important;
}

label.selected {
	color: #ff7b0f;
}

#book-form .focus-input {
	background-color: #FCFBBB !important;
	border: 1px solid #E78F08 !important;
	-moz-box-shadow: 0 0 3px #E78F08;
	-webkit-box-shadow: 0 0 3px #E78F08;
	box-shadow: 0 0 3px #E78F08;
}

#book-form input.disabled {
	background-color: #dcdcdc !important;
	color: #dcdcdc !important;
}
/* List city */
.listCity td {
	vertical-align: top;
}

.listCity ul {
	list-style: none;
	float: left;
	clear: both;
}

.listCity ul li {
	float: left;
	clear: both;
	padding: 0 5px 0 0;
	width: 115px;
}

.listCity ul li.title {
	font-weight: bold;
	font-size: 13px;
	padding: 5px 0 7px 0;
	color: #ff7b0f;
	text-transform: uppercase;
}

.listCity ul li a {
	float: left;
	width: 106px;
	padding: 3px 5px;
}

.listCity ul li a:hover {
	background: #ff7b0f;
}

.listCity ul li a:hover * {
	color: #fff;
}

.listCity ul li a:hover b {
	font-weight: bold;
}

.listCity ul li a b {
	float: left;
	font-weight: normal;
}

.listCity ul li a span {
	float: right;
	font-weight: bold;
	font-size: 10px;
	color: #999;
	display: none;
}

.domestic-col {
	float: left;
	padding-right: 15px;
	font-size: 12px;
}

.internation-city {
	float: left;
	width: 260px;
}

.internation-city h3 {
	font-size: 13px;
	padding: 5px 0;
	margin: 0;
	color: #ff7b0f;
	text-transform: uppercase;
}

.internation-city p {
	font-size: 11px;
	color: #888;
}

.internation-city input {
	height: 24px;
	width: 250px;
	border: 1px solid #ccc;
	padding: 2px 5px;
	margin: 7px 0;
}

.select-date {
	padding-top: 10px;
}

.select-date select {
	height: 26px;
}

.cbo-return-day {
	
}

.warningOrange1 {
	
}

.txt-date-return {
	
}

.cbo-return-month {
	
}

.cbo-datetype {
	
}

.cbo-departure-month {
	
}

.cbo-departure-day {
	
}

.txt-date-departure {
	
}

.error-departure {
	
}

.txtFlightCity {
	
}

.error-arrival {
	
}

.arrival {
	
}
</style>

					<div id="listCity" style="display: none;">
						<div id="list-departure" class="dialog listCity"
							title='Lựa chọn thành phố hoặc sân bay xuất phát'>
							<div class="domestic-col">
								<ul>
									<li class="title">Miền Bắc</li>
									<li><a airportcode="HAN" href="#"><b>Hà Nội </b><span>(HAN)</span>
									</a></li>
									<li><a airportcode="HPH" href="#"><b>Hải Phòng</b> <span>(HPH)</span>
									</a></li>
									<li><a airportcode="DIN" href="#"><b>Điện Biên</b> <span>(DIN)</span>
									</a></li>
								</ul>
								<ul>
									<li class="title">Miền Trung</li>
									<li><a airportcode="THD" href="#"><b>Thanh Hóa</b> <span>(THD)</span>
									</a></li>
									<li><a airportcode="VII" href="#"><b>Vinh</b> <span>(VII)</span>
									</a></li>
									<li><a airportcode="HUI" href="#"><b>Huế</b> <span>(HUI)</span>
									</a></li>
									<li><a airportcode="VDH" href="#"><b>Đồng Hới</b> <span>(VDH)</span>
									</a></li>
									<li><a airportcode="DAD" href="#"><b>Đà Nẵng</b> <span>(DAD)</span>
									</a></li>
									<li><a airportcode="PXU" href="#"><b>Pleiku</b> <span>(PXU)</span>
									</a></li>
									<li><a airportcode="TBB" href="#"><b>Tuy Hòa</b> <span>(TBB)</span>
									</a></li>
								</ul>
							</div>
							<div class="domestic-col">
								<ul>
									<li class="title">Miền Nam</li>
									<li><a airportcode="SGN" href="#"><b>Hồ Chí Minh </b><span>(SGN)</span>
									</a></li>
									<li><a airportcode="CXR" href="#"><b>Nha Trang</b> <span>(CXR)</span>
									</a></li>
									<li><a airportcode="DLI" href="#"><b>Đà Lạt</b> <span>(DLI)</span>
									</a></li>
									<li><a airportcode="PQC" href="#"><b>Phú Quốc</b> <span>(PQC)</span>
									</a></li>
									<li><a airportcode="TMK" href="#"><b>Tam Kỳ</b> <span>(VCL)</span>
									</a></li>
									<li><a airportcode="UIH" href="#"><b>Qui Nhơn</b> <span>(UIH)</span>
									</a></li>
									<li><a airportcode="VCA" href="#"><b>Cần Thơ</b> <span>(VCA)</span>
									</a></li>
									<li><a airportcode="VCS" href="#"><b>Côn Đảo</b> <span>(VCS)</span>
									</a></li>
									<li><a airportcode="BMV" href="#"><b>Ban Mê Thuột</b>
											<span>(BMV)</span> </a></li>
									<li><a airportcode="VKG" href="#"><b>Rạch Giá</b> <span>(VKG)</span>
									</a></li>
									<li><a airportcode="CAH" href="#"><b>Cà Mau</b> <span>(CAH)</span>
									</a></li>
								</ul>
							</div>
							<div class="internation-city">
								<h3 style="font-weight: bold; font-size: 13px;">Quốc tế</h3>
								<p>
									<b style="color: black; font-weight: bold"> Hãy nhập vào
										tên thành phố hoặc mã sân bay</b>
								</p>
								<p class="error-departure" style="color: red;">&nbsp;</p>
								<input id="inter-city-departure"
									class="inter-city txtFlightCity" datatype='departure'
									style="font-size: 13px" name="" type="text"></input>
								<p>
									<span id="submit-departure" class="submit"> Chọn </span>
								</p>
							</div>
						</div>
						<div id="list-arrival" class="dialog listCity"
							title='Lựa chọn thành phố hoặc sân bay đến'>
							<div class="domestic-col">
								<ul>
									<li class="title">Miền Bắc</li>
									<li><a airportcode="HAN" href="#"><b>Hà Nội </b><span>(HAN)</span>
									</a></li>
									<li><a airportcode="HPH" href="#"><b>Hải Phòng</b> <span>(HPH)</span>
									</a></li>
									<li><a airportcode="DIN" href="#"><b>Điện Biên</b> <span>(DIN)</span>
									</a></li>
								</ul>
								<ul>
									<li class="title">Miền Trung</li>
									<li><a airportcode="THD" href="#"><b>Thanh Hóa</b> <span>(THD)</span>
									</a></li>
									<li><a airportcode="VII" href="#"><b>Vinh</b> <span>(VII)</span>
									</a></li>
									<li><a airportcode="HUI" href="#"><b>Huế</b> <span>(HUI)</span>
									</a></li>
									<li><a airportcode="VDH" href="#"><b>Đồng Hới</b> <span>(VDH)</span>
									</a></li>
									<li><a airportcode="DAD" href="#"><b>Đà Nẵng</b> <span>(DAD)</span>
									</a></li>
									<li><a airportcode="PXU" href="#"><b>Pleiku</b> <span>(PXU)</span>
									</a></li>
									<li><a airportcode="TBB" href="#"><b>Tuy Hòa</b> <span>(TBB)</span>
									</a></li>
								</ul>
							</div>
							<div class="domestic-col">
								<ul>
									<li class="title">Miền Nam</li>
									<li><a airportcode="SGN" href="#"><b>Hồ Chí Minh </b><span>(SGN)</span>
									</a></li>
									<li><a airportcode="CXR" href="#"><b>Nha Trang</b> <span>(CXR)</span>
									</a></li>
									<li><a airportcode="DLI" href="#"><b>Đà Lạt</b> <span>(DLI)</span>
									</a></li>
									<li><a airportcode="PQC" href="#"><b>Phú Quốc</b> <span>(PQC)</span>
									</a></li>
									<li><a airportcode="TMK" href="#"><b>Tam Kỳ</b> <span>(VCL)</span>
									</a></li>
									<li><a airportcode="UIH" href="#"><b>Qui Nhơn</b> <span>(UIH)</span>
									</a></li>
									<li><a airportcode="VCA" href="#"><b>Cần Thơ</b> <span>(VCA)</span>
									</a></li>
									<li><a airportcode="VCS" href="#"><b>Côn Đảo</b> <span>(VCS)</span>
									</a></li>
									<li><a airportcode="BMV" href="#"><b>Ban Mê Thuột</b>
											<span>(BMV)</span> </a></li>
									<li><a airportcode="VKG" href="#"><b>Rạch Giá</b> <span>(VKG)</span>
									</a></li>
									<li><a airportcode="CAH" href="#"><b>Cà Mau</b> <span>(CAH)</span>
									</a></li>
								</ul>
							</div>
							<div class="internation-city">
								<h3 style="font-weight: bold; font-size: 13px;">Quốc tế</h3>
								<p>
									<b style="color: black; font-weight: bold"> Hãy nhập vào
										tên thành phố hoặc mã sân bay</b>
								</p>
								<p class="error-arrival" style="color: red;">&nbsp;</p>
								<input id="inter-city-arrival" class="inter-city txtFlightCity"
									datatype='arrival' style="font-size: 13px" name="" type="text" />
								<p>
									<span id="submit-arrival" class="submit"> Chọn </span>
								</p>
							</div>
						</div>
					</div>
					<form
						action="${pageContext.request.contextPath}/OrderTicketServlet?type=<%=Variables.SEARCH_TICKET%>"
						method="post">
						<div class="SearchBox">
							<h2>Đặt vé máy bay</h2>
							<div class="contentSearchBox">
								<a href="http://thanhhoang.com"> </a>
								<script type="text/javascript">
									$(document)
											.ready(
													function() {
														if ($('.oneway input:checked').length > 0) {
															$('.return input')
																	.attr(
																			"disabled",
																			"true")
																	.addClass(
																			'disabled');
														}
														if ($('.round-trip input:checked').length > 0) {
															$('.return input')
																	.removeAttr(
																			"disabled")
																	.removeClass(
																			'disabled');
														}
														$(".oneway input")
																.click(
																		function() {
																			$(
																					"td.return input")
																					.attr(
																							"disabled",
																							"true")
																					.addClass(
																							'disabled');
																			$('.spanoneway').hide();
																		});
														$(".round-trip input")
																.click(
																		function() {
																			$(
																					"td.return input")
																					.removeAttr(
																							'disabled')
																					.removeClass(
																							'disabled');
																			$('.spanoneway').show();
																		});
													});
								</script>
								<table width="100%">
									<tr>
										<td colspan="2"><span class="round-trip"><input
												id="rb_roundtrip" type="radio" name="rbCheck"
												value="" checked="checked" /></span> Khứ
												hồi &nbsp; &nbsp; &nbsp; &nbsp; <span class="oneway"><input
												id="rb_oneway" type="radio" name="rbCheck"
												value="" /></span> Một chiều</td>
									</tr>
									<tr>
										<td colspan="2"><span class="text">Điểm đi</span></td>
										<td colspan="2"><span>Điểm đến</span></td>
									</tr>
									<tr>
										<td colspan="2" height="45" valign="top"><input
											name="txtFrom"
											type="text" value="Hồ Chí Minh (SGN)"
											id="CphContent_UsrSearchFormMainV31_txtFrom"
											class="PlaceText startplace city departure"
											datetype="departure" onclick="select()"
											style="margin-right: 18px;" /></td>
										<td colspan="2"><input
											name="txtTo"
											type="text" value="Hà Nội (HAN)"
											id="CphContent_UsrSearchFormMainV31_txtTo"
											class="PlaceText endplace city arrival" datetype="arrival"
											onclick="select()" /></td>
									</tr>
									<tr>
										<td colspan="2"><span class="text">Ngày đi</span></td>
										<td colspan="2"><span class="spanoneway">Ngày về</span></td>
									</tr>
									<tr>
										<td colspan="2"><input
											name="txtDateFrom"
											type="text"
											id="CphContent_UsrSearchFormSub1_txtDepartureDate"
											class="date-input  depDate mid" /> <script
												type="text/javascript">
												$(function() {
													$(
															"#CphContent_UsrSearchFormSub1_txtDepartureDate")
															.datepicker(
																	{
																		dateFormat : 'dd/mm/yy',
																		minDate : 0
																	});
												});
											</script></td>
										<td colspan="2" class="return"><span class="spanoneway"><input
											name="txtDateTo"
											type="text" id="CphContent_UsrSearchFormSub1_txtReturnDate"
											class="date-input  retDate mid" /></span> <script
												type="text/javascript">
												$(function() {
													$(
															"#CphContent_UsrSearchFormSub1_txtReturnDate")
															.datepicker(
																	{
																		dateFormat : 'dd/mm/yy',
																		minDate : 0
																	});
												});
											</script></td>
									</tr>
								</table>
								<div class="line-search"></div>
								<table width="100%" style="margin-top: 10px;">
									<tr>
										<td width="36%">Người lớn <br /> <span>(&gt;12
												tuổi)</span>
										</td>
										<td width="32%">Trẻ em <br /> <span>(từ 2-12
												tuổi)</span>
										</td>
										<td width="32%">Em bé <br /> <span>(&lt;2 tuổi)</span>
										</td>
									</tr>
									<tr>
										<td><label> <select
												name="slAdult"
												id="CphContent_UsrSearchFormMainV31_cboAdult" class="Per">
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>


											</select>
										</label></td>
										<td><label> <select
												name="slChild"
												id="CphContent_UsrSearchFormMainV31_cboChild" class="Per">
													<option value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>

											</select>
										</label></td>
										<td><label> <select
												name="slInfant"
												id="CphContent_UsrSearchFormMainV31_cboInfant" class="Per">
													<option value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>

											</select>
										</label></td>
									</tr>
								</table>

							</div>

							<div class="timverenhat_btn">
								<input id="CphContent_UsrSearchFormMainV31_chkSearchVeRe"
									type="checkbox"
									name="ctl00$CphContent$UsrSearchFormMainV31$chkSearchVeRe" /><label
									for="CphContent_UsrSearchFormMainV31_chkSearchVeRe">Tìm
									vé rẻ nhất</label>&nbsp;
							</div>
							<div class="Xemdonhang_onSearchbox">
								<a id="go" rel="leanModal" name="signup" href="#signup">Xem
									lại đơn hàng</a>
							</div>
							<div class="clear"></div>
							<div align="center" class="button-search">
								<input type="submit"
									name="ctl00$CphContent$UsrSearchFormMainV31$btnSearch"
									value="Tìm Chuyến Bay"
									id="CphContent_UsrSearchFormMainV31_btnSearch"
									class="searchBtn" />
							</div>
						</div>
					</form>
					<img alt=""
						src="${pageContext.request.contextPath}/Images/loading-b.gif"
						style="display: none;" />
					<script type="text/javascript">
						$(function() {
							$("#CphContent_UsrSearchFormMainV31_btnSearch")
									.click(function() {
										$(this).attr({
											value : 'Đang xử lý'
										});
										$(this).addClass('waiting-b');
									});
						});
					</script>

					<link href="${pageContext.request.contextPath}/Styles/Popup.css"
						rel="stylesheet" type="text/css" />
					<script type="text/javascript"
						src="${pageContext.request.contextPath}/Scripts/jquery.leanModal.min.js"></script>
					<script type="text/javascript">
						$(function() {
							var height = $(window).height()
									- $('#signup').height();
							$('a[rel*=leanModal]').leanModal({
								top : parseInt(height / 2),
								closeButton : ".modal_close"
							});
						});

						function CheckData() {
							var orderId = $.trim($('.txtOrderId').val());
							var phone = $.trim($('.txtPhone').val());
							if (orderId == '' || phone == '') {
								$('.error-message')
										.text(
												'Xin hãy nhập mã đơn hàng và số điện thoại để tiếp tục xem đơn hàng.');
								return false;
							}
							if (!$.isNumeric(orderId)) {
								$('.error-message').text(
										'Mã đơn hàng không hợp lệ');
								return false;
							}
							return true;
						}
					</script>
					<!----------Xem lại đơn hàng----------------------->
					<div id="signup">
						<div id="signup-ct">
							<div id="signup-header">
								<h2>XEM LẠI ĐƠN HÀNG</h2>
								<a class="modal_close" href="javascript:void()"></a>
							</div>
							<div class="mainForm">
								<p>Xin vui lòng nhập mã đơn hàng và số điện thoại (hoặc địa
									chỉ email) đã sử dụng tại thời điểm đặt vé.</p>
								<div class="error-message">&nbsp;</div>
								<div class="left_Xemdonhang">
									<table>
										<tr class="item">
											<td>
												<p>Mã đơn hàng:</p> <input
												name="ctl00$CphContent$UsrSearchFormMainV31$UsrXemDonHang1$txtOrderId"
												type="text"
												id="CphContent_UsrSearchFormMainV31_UsrXemDonHang1_txtOrderId"
												class="madonhang_onpopup txtOrderId" />
											</td>
										</tr>
										<tr class="item">
											<td>
												<p>Số điện thoại hoặc Email:</p> <input
												name="ctl00$CphContent$UsrSearchFormMainV31$UsrXemDonHang1$txtPhone"
												type="text"
												id="CphContent_UsrSearchFormMainV31_UsrXemDonHang1_txtPhone"
												class="madonhang_onpopup txtPhone" />
											</td>
										</tr>
										<tr>
											<td style="text-align: center;"><input type="submit"
												name="ctl00$CphContent$UsrSearchFormMainV31$UsrXemDonHang1$btnViewOrder"
												value="Xem Đơn Hàng" onclick="return CheckData();"
												id="CphContent_UsrSearchFormMainV31_UsrXemDonHang1_btnViewOrder"
												class="btn_xemmadonhang_onPopup" /></td>
										</tr>
									</table>
								</div>
								<div class="Right_Xemdonhang">
									<p>Bạn có thể nhận được Mã Đơn Hàng từ E-mail xác nhận
										chúng tôi đã gửi cho bạn như trong hình dưới đây :</p>
									<img src="Images/Xemlaidonhang/MaDonHang.gif" width="360px"
										alt="Xem lai don hang" />
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<!----------Xem lại đơn hàng----------------------->
				</div>
				<div class="SubColumn">

					<link
						href="${pageContext.request.contextPath}/Styles/skitter.styles.css"
						rel="stylesheet" type="text/css" />
					<script type="text/javascript"
						src="${pageContext.request.contextPath}/Scripts/jquery.easing.1.3.js"></script>
					<script type="text/javascript"
						src="${pageContext.request.contextPath}/Scripts/jquery.skitter.min.js"></script>
					<script type="text/javascript">
						$(document).ready(function() {
							$('.box_skitter_large').skitter({
								animation : 'randomSmart',
								numbers_align : 'right',
								navigation : true,
								interval : 10000,
								numbers : true
							});
						});
					</script>
					<div class="box_skitter box_skitter_large">
						<ul>
							<li><a
								href="/tin-tuc-chi-tiet/ve-may-bay-gia-re-cua-jetstar-ram-ro-len-san.html"
								target="_self"> <img
									src="${pageContext.request.contextPath}/Images/Tintuc/vemaybayonline.net.vn/ve-may-bay-gia-re-cua-jetstar-ram-ro-len-san.png"
									style="width: 402px; height: 193px;" alt="">
							</a>
								<div class="label_text">
									<div class="background"></div>
									<p>Vé máy bay giá rẻ của Jetstar rầm rộ “lên sàn”</p>
								</div></li>

							<li><a
								href="/tin-tuc-chi-tiet/san-da-tay-ve-may-bay-di-uc-gia-re.html"
								target="_self"> <img
									src="${pageContext.request.contextPath}/Images/Tintuc/vemaybayonline.net.vn/san-da-tay-ve-may-bay-di-uc-gia-re.png"
									style="width: 402px; height: 193px;" alt="">
							</a>
								<div class="label_text">
									<div class="background"></div>
									<p>“Săn” đã tay vé máy bay đi Úc giá rẻ</p>
								</div></li>

							<li><a
								href="/tin-tuc-chi-tiet/vietnam-airlines-bat-ngo-ban-ve-may-bay-ha-noi-pleiku-gia-re.html"
								target="_self"> <img
									src="${pageContext.request.contextPath}/Images/Tintuc/vemaybayonline.net.vn/vietnam-airlines-bat-ngo-ban-ve-may-bay-ha-noi-pleiku-gia-re.jpg"
									style="width: 402px; height: 193px;" alt="">
							</a>
								<div class="label_text">
									<div class="background"></div>
									<p>Vietnam Airlines bất ngờ bán vé máy bay Hà Nội – Pleiku
										giá rẻ</p>
								</div></li>

							<li><a
								href="/tin-tuc-chi-tiet/tha-ga-bay-noi-dia-voi-ve-chi-599-000-dong-cua-vietnam-airlines.html"
								target="_self"> <img
									src="${pageContext.request.contextPath}/Images/Tintuc/vemaybayonline.net.vn/tha-ga-bay-noi-dia-voi-ve-chi-599-000-dong-cua-vietnam-airlines.jpg"
									style="width: 402px; height: 193px;" alt="">
							</a>
								<div class="label_text">
									<div class="background"></div>
									<p>Thả ga bay nội địa với vé chỉ 599.000 ĐỒNG của Vietnam
										Airlines</p>
								</div></li>

							<li><a
								href="/tin-tuc-chi-tiet/vietnam-airlines-bat-ngo-ban-ve-may-bay-di-chau-my-voi-gia-uu-dai.html"
								target="_self"> <img
									src="${pageContext.request.contextPath}/Images/Tintuc/vemaybayonline.net.vn/vietnam-airlines-bat-ngo-ban-ve-may-bay-di-chau-my-voi-gia-uu-dai.jpg"
									style="width: 402px; height: 193px;" alt="">
							</a>
								<div class="label_text">
									<div class="background"></div>
									<p>Vietnam Airlines bất ngờ bán vé máy bay đi Châu Mỹ với
										giá ƯU ĐÃI</p>
								</div></li>
						</ul>
					</div>
					<div class="clear"></div>


					<div class="NewestTicket">
						<h2>
							<span>Xem Vé máy bay mới đặt</span>
						</h2>
						<div class="clear"></div>

						<ul>

							<li>
								<p>
									Khách đặt 1 vé máy bay <b>Thành phố Hồ Chí Minh - Vinh</b>
								</p> <img
								src="${pageContext.request.contextPath}/Images/Icon/Flight/Airline/AirlineLogo/smVJ.gif"
								class="Hangkhong" alt="" /> <span class="ngay">Ngày
									07/11</span> <span class="Price">599,000 VNĐ</span> <img
								src="${pageContext.request.contextPath}/Images/Newversion/LoadingIcon.png"
								class="imgloading" alt="" /> <span class="time">1 phút
									trước</span>
								<div class="clear"></div>
							</li>

							<li>
								<p>
									Khách đặt 1 vé máy bay <b>Matsuyama - Tô ky ô</b>
								</p> <img
								src="${pageContext.request.contextPath}/Images/Icon/Flight/Airline/AirlineLogo/smGK.gif"
								class="Hangkhong" alt="" /> <span class="ngay">Ngày
									14/10</span> <span class="Price">4,128,539 VNĐ</span> <img
								src="${pageContext.request.contextPath}/Images/Newversion/LoadingIcon.png"
								class="imgloading" alt="" /> <span class="time">1 phút
									trước</span>
								<div class="clear"></div>
							</li>

							<li>
								<p>
									Khách đặt 1 vé máy bay <b>Thành phố Hồ Chí Minh - Vinh</b>
								</p> <img
								src="${pageContext.request.contextPath}/Images/Icon/Flight/Airline/AirlineLogo/smBL.gif"
								class="Hangkhong" alt="" /> <span class="ngay">Ngày
									28/11</span> <span class="Price">590,000 VNĐ</span> <img
								src="${pageContext.request.contextPath}/Images/Newversion/LoadingIcon.png"
								class="imgloading" alt="" /> <span class="time">1 phút
									trước</span>
								<div class="clear"></div>
							</li>

						</ul>

					</div>

				</div>
				<div class="clear"></div>
			</div>

			<div class="httt_GiatriABAY">
				<div class="httt_vemaybayonline">
					<h3>
						<span>Hình thức thanh toán</span>
					</h3>
					<ul id="htttTrangchu">
						<li><span class="imgIcon"><img
								src="${pageContext.request.contextPath}/Images/Newversion/HomeIcon_tt.png"
								alt="" /></span>
							<div class="textHTTT">
								<h5>Thanh Toán tại nhà</h5>
								<p>Nhân viên ThanhHoang sẽ giao vé & thu tiền tại nhà theo
									địa chỉ quý khách cung cấp.</p>
							</div>
							<div class="clear"></div></li>
						<li><span class="imgIcon"><img
								src="${pageContext.request.contextPath}/Images/Newversion/cardIcon.png"
								alt="" /></span>
							<div class="textHTTT">
								<h5>Thanh Toán Qua Chuyển khoản</h5>
								<p>Quý khách có thể thanh toán cho chúng tôi bằng cách
									chuyển khoản trực tiếp tại ngân hàng, chuyển qua thẻ ATM, hoặc
									qua Internet banking.</p>
							</div>
							<div class="clear"></div></li>
						<li><span class="imgIcon"><img
								src="${pageContext.request.contextPath}/Images/Newversion/MoneyIcon.png"
								alt="" /></span>
							<div class="textHTTT">
								<h5>Thanh Toán Bằng tiền mặt tại văn phòng ABAY</h5>
								<p>Sau khi đặt hàng thành công, Quý khách vui lòng qua văn
									phòng ThanhHoang để thanh toán và nhận vé.</p>
							</div>
							<div class="clear"></div></li>
						<li class="lastItem"><span class="imgIcon"><img
								src="${pageContext.request.contextPath}/Images/Newversion/Congtt.png"
								alt="" /></span>
							<div class="textHTTT">
								<h5>Thanh Toán Qua các cổng thanh toán điện tử</h5>
								<p>Quý khách có thể thanh toán ngay (trực tuyến) thông qua
									cổng 123Pay, Senpay, Ngân Lượng.</p>
							</div>
							<div class="clear"></div></li>
					</ul>
				</div>

				<div class="GiatriABAY">
					<h3>
						<span>Giá trị chúng tôi mang lại</span>
					</h3>
					<ul>
						<li>
							<p>Đặt vé nhanh chóng chỉ với vài cú click chuột</p>
						</li>
						<li>
							<p>Các chương trình khuyến mại giảm giá hấp dẫn</p>
						</li>
						<li>
							<p>Hỗ trợ và chăm sóc khách hàng 24/24</p>
						</li>
						<li>
							<p>Chứng nhận đảm bảo là đại lý vé máy bay đạt nhiều danh
								hiệu uy tín chất lượng</p>
						</li>
						<li><p>Thanh toán tiện lợi</p></li>
						<li><p></p></li>
					</ul>
				</div>
				<div class="clear"></div>

			</div>
			<!--End: httt_GiatriABAY-->

			<div class="LogoNganhang">
				<img
					src="${pageContext.request.contextPath}/Images/Newversion/12nganhang.png"
					alt="" />
			</div>

			<div id="introsite1">
				<div class="IntroOnIndex">
					<img alt="" class="imgnv"
						src="${pageContext.request.contextPath}/Images/nvcty.jpg" />
					<p>
						Thanhhoang.com l&agrave; website của đại l&yacute; ThanhHoang -
						một trong những c&ocirc;ng ty v&eacute; m&aacute;y bay trực tuyến
						uy t&iacute;n v&agrave; lớn nhất Việt Nam hiện nay. Thanhhoang.com
						l&agrave; website đặt v&eacute; m&aacute;y bay tự động với giao
						diện v&agrave; c&aacute;c chức năng v&ocirc; c&ugrave;ng tiện lợi.
						Nhờ được thừa hưởng những b&iacute; quyết c&ocirc;ng nghệ của
						ThanhHoang, hệ thống website thanhhoang.com t&iacute;ch hợp
						c&aacute;c chức năng th&ocirc;ng minh gi&uacute;p người
						d&ugrave;ng tra cứu ng&agrave;y bay, giờ bay, gi&aacute; v&eacute;
						chi tiết từng chặng bay rất dễ d&agrave;ng. Hơn thế nữa,
						thanhhoang.com lu&ocirc;n cập nhật bảng b&aacute;o gi&aacute;
						v&eacute; m&aacute;y bay rẻ nhất của th&aacute;ng hiện tại
						v&agrave; 2 th&aacute;ng kế tiếp cũng như gi&aacute; v&eacute; của
						c&aacute;c chặng bay phổ biến gi&uacute;p bạn tiết kiệm thời gian
						khi nhanh ch&oacute;ng chọn cho m&igrave;nh được chuyến bay
						ph&ugrave; hợp m&agrave; kh&ocirc;ng mất nhiều c&ocirc;ng sức
						t&igrave;m kiếm như nhiều website đặt v&eacute; rườm r&agrave;
						kh&aacute;c. <a class="moreIntro" href="/gioi-thieu.html">[Xem
							th&ecirc;m...]</a><img class="nonefloat"
							src="${pageContext.request.contextPath}/Images/Newversion/dong.png"
							style="margin-left: 5px" />
					</p>

					<div class="clear"></div>
				</div>
				<!--End:IntroOnIndex-->
			</div>

			<div class="Box3">
				<div class="box3sub">
					<div id="introsite2" style="display: none;">
						<div class="IntroOnIndex">
							<img alt="" class="imgnv"
								src="${pageContext.request.contextPath}/Images/nvcty.jpg" />
							<p>
								Thanhhoang.com l&agrave; website của đại l&yacute; ThanhHoang -
								một trong những c&ocirc;ng ty v&eacute; m&aacute;y bay trực
								tuyến uy t&iacute;n v&agrave; lớn nhất Việt Nam hiện nay.
								Vemaybayonline.net.vn l&agrave; website đặt v&eacute; m&aacute;y
								bay tự động với giao diện v&agrave; c&aacute;c chức năng
								v&ocirc; c&ugrave;ng tiện lợi. Nhờ được thừa hưởng những
								b&iacute; quyết c&ocirc;ng nghệ của ThanhHoang, hệ thống website
								Thanhhoang.com t&iacute;ch hợp c&aacute;c chức năng th&ocirc;ng
								minh gi&uacute;p người d&ugrave;ng tra cứu ng&agrave;y bay, giờ
								bay, gi&aacute; v&eacute; chi tiết từng chặng bay rất dễ
								d&agrave;ng. Hơn thế nữa, thanhhoang.com lu&ocirc;n cập nhật
								bảng b&aacute;o gi&aacute; v&eacute; m&aacute;y bay rẻ nhất của
								th&aacute;ng hiện tại v&agrave; 2 th&aacute;ng kế tiếp cũng như
								gi&aacute; v&eacute; của c&aacute;c chặng bay phổ biến
								gi&uacute;p bạn tiết kiệm thời gian khi nhanh ch&oacute;ng chọn
								cho m&igrave;nh được chuyến bay ph&ugrave; hợp m&agrave;
								kh&ocirc;ng mất nhiều c&ocirc;ng sức t&igrave;m kiếm như nhiều
								website đặt v&eacute; rườm r&agrave; kh&aacute;c. <a
									class="moreIntro" href="/gioi-thieu.html">[Xem
									th&ecirc;m...]</a><img class="nonefloat"
									src="${pageContext.request.contextPath}/Images/Newversion/dong.png"
									style="margin-left: 5px" />
							</p>

							<div class="clear"></div>
						</div>
						<!--End:IntroOnIndex-->
					</div>

				</div>
				<div class="sub2News">
					<div class="emailRegister">
						<p>Đăng ký Email nhận tin khuyến mãi</p>
						<input type="text" class="EmailRegisterTextbox" /> <input
							type="button" class="btnEmailRegister" value="Gửi" />
						<div class="clear"></div>
					</div>

					<script type="text/javascript">
						$(document).ready(function() {
							if ($('.tintuc ul li').length > 5) {
								$('.tintuc ul li').hide();
								$('.tintuc ul li').eq(0).show();
								$('.tintuc ul li').eq(1).show();
								$('.tintuc ul li').eq(2).show();
								$('.tintuc ul li').eq(3).show();
								$('.tintuc ul li').eq(4).show();
								setInterval(Tick, 2000);
							}
						});

						function Tick() {
							$('.tintuc ul li:first-child').slideUp(function() {
								$(this).appendTo('.tintuc ul');
								$('.tintuc ul li').eq(4).slideDown();
							});
						}
					</script>

					<div class="tintuc">
						<h3>
							<a id="CphContent_UsrTopNews1_linkTinTuc" title="Tin tức"
								href="/Tin-tuc.aspx">Tin tức</a>
						</h3>
						<ul>
							<li class="news-item"><a
								href="/tin-tuc-chi-tiet/vietjet-khai-truong-va-mo-ban-ve-re-cho-hanh-trinh-tp-ho-chi-minh-yangon.html">
									<img
									src="${pageContext.request.contextPath}/Images/Tintuc/vemaybayonline.net.vn/vietjet-khai-truong-va-mo-ban-ve-re-cho-hanh-trinh-tp-ho-chi-minh-yangon.jpg"
									alt="Vietjet khai trương và mở bán vé rẻ cho hành trình Tp Hồ Chí Minh – Yangon"
									title="Vietjet khai trương và mở bán vé rẻ cho hành trình Tp Hồ Chí Minh – Yangon" />
							</a>
								<div class="rtext">
									<h5>
										<a
											href="/tin-tuc-chi-tiet/vietjet-khai-truong-va-mo-ban-ve-re-cho-hanh-trinh-tp-ho-chi-minh-yangon.html">Vietjet
											khai trương và mở bán vé rẻ cho hành trình Tp Hồ Chí Minh –
											Yangon</a>
									</h5>
									<span>Đường bay giữa Tp Hồ Chí Minh – Yangon được
										Vietjet khai thác với tần...</span> <br> <a
										href="/tin-tuc-chi-tiet/vietjet-khai-truong-va-mo-ban-ve-re-cho-hanh-trinh-tp-ho-chi-minh-yangon.html"
										class="xemthem view-more">xem tiếp</a>
								</div>
								<div class="clear"></div></li>

							<li class="news-item"><a
								href="/tin-tuc-chi-tiet/dat-ve-may-bay-tp-ho-chi-minh-di-phu-quoc-gia-re-nhat-trong-thang-10.html">
									<img
									src="${pageContext.request.contextPath}/Images/Tintuc/vemaybayonline.net.vn/dat-ve-may-bay-tp-ho-chi-minh-di-phu-quoc-gia-re-nhat-trong-thang-10.png"
									alt="Đặt vé máy bay Tp Hồ Chí Minh đi Phú Quốc giá rẻ nhất trong tháng 10"
									title="Đặt vé máy bay Tp Hồ Chí Minh đi Phú Quốc giá rẻ nhất trong tháng 10" />
							</a>
								<div class="rtext">
									<h5>
										<a
											href="/tin-tuc-chi-tiet/dat-ve-may-bay-tp-ho-chi-minh-di-phu-quoc-gia-re-nhat-trong-thang-10.html">Đặt
											vé máy bay Tp Hồ Chí Minh đi Phú Quốc giá rẻ nhất trong tháng
											10</a>
									</h5>
									<span>Biển dịu dàng, nắng dịu nhẹ đôi khi lại se se
										lạnh, Phú Quốc tháng...</span> <br> <a
										href="/tin-tuc-chi-tiet/dat-ve-may-bay-tp-ho-chi-minh-di-phu-quoc-gia-re-nhat-trong-thang-10.html"
										class="xemthem view-more">xem tiếp</a>
								</div>
								<div class="clear"></div></li>

							<li class="news-item"><a
								href="/tin-tuc-chi-tiet/dat-ve-may-bay-ha-noi-di-nha-trang-gia-re-nhat-trong-thang-10.html">
									<img
									src="${pageContext.request.contextPath}/Images/Tintuc/vemaybayonline.net.vn/dat-ve-may-bay-ha-noi-di-nha-trang-gia-re-nhat-trong-thang-10.png"
									alt="Đặt vé máy bay Hà Nội đi Nha Trang giá rẻ nhất trong tháng 10"
									title="Đặt vé máy bay Hà Nội đi Nha Trang giá rẻ nhất trong tháng 10" />
							</a>
								<div class="rtext">
									<h5>
										<a
											href="/tin-tuc-chi-tiet/dat-ve-may-bay-ha-noi-di-nha-trang-gia-re-nhat-trong-thang-10.html">Đặt
											vé máy bay Hà Nội đi Nha Trang giá rẻ nhất trong tháng 10</a>
									</h5>
									<span>Về với Nha Trang là về với sự trong trẻo và tinh
										khôi. Nha Trang...</span> <br> <a
										href="/tin-tuc-chi-tiet/dat-ve-may-bay-ha-noi-di-nha-trang-gia-re-nhat-trong-thang-10.html"
										class="xemthem view-more">xem tiếp</a>
								</div>
								<div class="clear"></div></li>

						</ul>

						<div class="clear"></div>
						<a id="CphContent_UsrTopNews1_linkViewMore"
							class="xemthem view-all" href="/Tin-tuc.aspx">» Xem thêm</a>
						<div class="clear"></div>
					</div>
					<!--End:Tintuc-->

					<div class="khachhangnoivechungtoi">
						<h3>Khách hàng nói về chúng tôi</h3>
						<ul>
							<li>

								<p>
									<span>Dịch vụ đặt vé nhanh chóng, chăm sóc khách hàng
										rất tốt, sẽ quay lại nếu có dịp</span> <span class="date_timePost">Gửi
										lúc: 22/10 16:02</span>
								</p>
								<div class="clear"></div>
							</li>

							<li>

								<p>
									<span>Nhiều thông tin du lịch khá là bổ ích, mong các
										bạn tiếp tục cập nhật nhiều hơn</span> <span class="date_timePost">Gửi
										lúc: 22/10 15:58</span>
								</p>
								<div class="clear"></div>
							</li>

							<li>

								<p>
									<span>Website giao diện khá dễ nhìn, chức năng rất tiện
										cho người dùng nhưng chưa có p...</span> <span class="date_timePost">Gửi
										lúc: 21/10 11:16</span>
								</p>
								<div class="clear"></div>
							</li>
						</ul>
						<a href="/Dich-vu/Y-kien-khach-hang.aspx" class="xemthem">&raquo;
							Xem thêm</a>
						<div class="clear"></div>
					</div>

					<div class="cauhoithuonggap">
						<h3>Câu hỏi thường gặp</h3>

						<ul>

							<li><a href="/Dich-vu/Cau-Hoi-Thuong-Gap.aspx"
								class="question"> <span class="number">1.</span> <span
									class="text"> Việt Nam có những hãng hàng không nào?</span>
									&nbsp;
							</a>
								<div class="clear"></div></li>

							<li><a href="/Dich-vu/Cau-Hoi-Thuong-Gap.aspx"
								class="question"> <span class="number">2.</span> <span
									class="text"> Tôi cần mang theo những loại giấy tờ gì
										khi đi máy bay?</span> &nbsp;
							</a>
								<div class="clear"></div></li>

							<li><a href="/Dich-vu/Cau-Hoi-Thuong-Gap.aspx"
								class="question"> <span class="number">3.</span> <span
									class="text"> Abay bán vé máy bay của những hãng hàng
										không nào?</span> &nbsp;
							</a>
								<div class="clear"></div></li>

							<li><a href="/Dich-vu/Cau-Hoi-Thuong-Gap.aspx"
								class="question"> <span class="number">4.</span> <span
									class="text"> Tôi có thể xem báo giá vé máy bay ở đâu?</span>
									&nbsp;
							</a>
								<div class="clear"></div></li>

							<li><a href="/Dich-vu/Cau-Hoi-Thuong-Gap.aspx"
								class="question"> <span class="number">5.</span> <span
									class="text"> Làm thế nào để mua được vé máy bay giá rẻ?</span>
									&nbsp;
							</a>
								<div class="clear"></div></li>

						</ul>

						<a href="/Dich-vu/Cau-Hoi-Thuong-Gap.aspx" class="xemthem">&raquo;
							Xem thêm</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</decorator:content>
	</decorator:decorate>
</body>
</html>