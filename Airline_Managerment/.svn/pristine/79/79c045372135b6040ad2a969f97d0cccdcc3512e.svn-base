<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://claudiushauptmann.com/jsp-decorator/"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<decorator:decorate filename='/master'>
		<decorator:content placeholder='replace'>
			<div id="main" class="MainContent">

				<fieldset class="breadcrumb" data-limit="2">
					<span class="crumbs"> <span class="crust"> <a
							href="home.php" class="crumb" rel="up" itemprop="url"><span
								itemprop="title">Trang chủ</span></a> <span class="arrow"><span>&gt;</span></span>
					</span> <span class="crust deactive"> <a href="choose.php" class="crumb"
							rel="up" itemprop="url"><span itemprop="title">Chọn
									chuyến bay</span></a> <span class="arrow"><span>&gt;</span></span>
					</span> <span class="crust deactive"> <a href="contact.php" class="crumb" rel="up"
							itemprop="url"><span itemprop="title">Thông tin liên hệ</span></a> <span class="arrow"><span>&gt;</span></span>
					</span> <span class="crust deactive"> <a href="passenger.php" class="crumb" rel="up"
							itemprop="url"><span itemprop="title">Thông tin khách đi</span></a> <span
							class="arrow"><span>&gt;</span></span>
					</span> <span class="crust active"> <a class="crumb" rel="up"
							itemprop="url"><span itemprop="title">Thanh toán</span></a> <span
							class="arrow"><span>&gt;</span></span>
					</span> <span class="crust deactive"> <a class="crumb" rel="up"
							itemprop="url"><span itemprop="title">Xác nhận</span></a> <span
							class="arrow"><span>&gt;</span></span>
					</span>
					</span>
				</fieldset>
				<!-- <div class="thongtinLoading">
					<img src="Images/Newversion/airplane.png" alt="" />
					<div class="thongtinText">
						<h2>
							Thành phố Hồ Chí Minh <span>đi</span> Hà Nội
						</h2>
						<table width="100%">
							<tbody>
								<tr>
									<td width="15%">Loại vé:</td>
									<td width="21%"><b>Một chiều</b></td>
									<td width="27%">Số lượng khách hàng:</td>
									<td width="37%"><b>1 Người lớn</b></td>
								</tr>
								<tr>
									<td>Ngày đi:</td>
									<td><b>19/10/2015</b></td>
									<td style='display: none'>Ngày về:</td>
									<td style='display: none'><b></b></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="clear"></div>
				</div>

				<div class="content loading" style="border: solid 1px #c9e1f7;">
					<p class="textBlue">Xin quý khách vui lòng chờ trong giây lát</p>
					<img src="Images/Newversion/loading.gif" alt=""></img><br /> <img
						src="Images/Newversion/loading-result.gif" style="margin: 15px 0"
						alt="" />
					<p class="textBlack">Chúc quý khách lựa chọn được chuyến bay
						ưng ý !</p>
				</div> -->


			</div>
			<div class="subContent">

				<link
					href="${pageContext.request.contextPath}/Scripts/jquery.autocomplete.css"
					rel="stylesheet" type="text/css" />
				<script
					src="${pageContext.request.contextPath}/Scripts/jquery.autocomplete.js"
					type="text/javascript"></script>
				<script
					src="${pageContext.request.contextPath}/Scripts/jquery-ui-1.8.7.datapicker.min.js"
					type="text/javascript"></script>
				<script
					src="${pageContext.request.contextPath}/Scripts/jquery-ui-1.8.17.custom.min.js"
					type="text/javascript"></script>
				<link
					href="${pageContext.request.contextPath}/Styles/jquery-ui-1.8.7.all.css"
					rel="stylesheet" type="text/css" />
				<link
					href=${pageContext.request.contextPath}/Styles/vemaybayonline/sub.css
					rel="stylesheet" type="text/css" />
				<script type="text/javascript">
					$(document).ready(
							function() {
								/* 	$(".ac_input")
											.autocomplete(
													"/ve-may-bay/AutoSuggestV2.aspx",
													{
														max : 50,
														highlight : false,
														matchSubset : false,
														scrollHeight : 260,
														width : 355,
														formatItem : function(
																item,
																index,
																total,
																value) {
															return value
																	.split("{")[0];
														},
														formatResult : function(
																item, value) {
															return value
																	.split("{")[1];
														}
													}); */
								$(".depDate").change(
										function() {
											var d = $(".depDate").datepicker(
													"getDate");
											d.setDate(d.getDate() + 3);
											$(".retDate").datepicker("setDate",
													d);
										});
								if ($('.oneway input:checked').length > 0) {
									$('.return input').attr("disabled", "true")
											.addClass('disabled');
								}
								if ($('.round-trip input:checked').length > 0) {
									$('.return input').removeAttr("disabled")
											.removeClass('disabled');
								}
								$(".oneway input").click(
										function() {
											$("td.return input").attr(
													"disabled", "true")
													.addClass('disabled');
										});
								$(".round-trip input").click(
										function() {
											$("td.return input").removeAttr(
													'disabled').removeClass(
													'disabled');
										});
								// passenger select hightlight
								//if ($('.passenger select').val() > 0);

								$('.passenger select').each(function() {
									if ($(this).val() > 0)
										$(this).addClass('focus-input');
								});

								$('.sub-form-search input[type=text]')
										.each(
												function() {
													if ($(this).val() != '')
														$(this).addClass(
																'focus-input');
												});
								$('.sub-form-search input[type=text]')
										.keyup(
												function() {
													if ($(this).val() != '')
														$(this).addClass(
																'focus-input');
													else
														$(this).removeClass(
																'focus-input');
												});
								$('.passenger select').change(function() {
									if ($(this).val() > 0)
										$(this).addClass('focus-input');
									else
										$(this).removeClass('focus-input');
								});
								// Select waytype hightlight
								$('.waytype input').click(
										function() {
											$('.waytype label').removeClass(
													'selected');
											$(this).parent().next().addClass(
													'selected');
										});
								$('.waytype input:checked').each(
										function() {
											$(this).parent().next().addClass(
													'selected');
										});
								$('.waytype input').click(
										function() {
											$('.waytype label').removeClass(
													'selected');
											$(this).parent().next().addClass(
													'selected');
										});
							});
				</script>
				<div class="subContent">
					<div class="SubSearch">
						<h3>Đặt vé máy bay</h3>
						<table width="100%">
							<tr>
								<td colspan="5" style="padding-bottom: 5px;"><span
									class="round-trip"><input
										id="CphContent_UsrSearchFormSub1_radioRoundTrip" type="radio"
										name="ctl00$CphContent$UsrSearchFormSub1$flightwaytype"
										value="radioRoundTrip" checked="checked" /></span> <label
									for="CphContent_UsrSearchFormSub1_radioRoundTrip"
									id="CphContent_UsrSearchFormSub1_Label1">Khứ hồi</label> &nbsp;
									&nbsp; &nbsp; &nbsp; &nbsp; <span class="oneway"><input
										id="CphContent_UsrSearchFormSub1_radioOneWay" type="radio"
										name="ctl00$CphContent$UsrSearchFormSub1$flightwaytype"
										value="radioOneWay" /></span> <label
									for="CphContent_UsrSearchFormSub1_radioOneWay"
									id="CphContent_UsrSearchFormSub1_Label2">Một chiều</label></td>
							</tr>
							<tr>
								<td colspan="3">Điểm đi</td>
							</tr>
							<tr>
								<td colspan="3"><input
									name="ctl00$CphContent$UsrSearchFormSub1$txtDepartureAirport"
									type="text" value="Hồ Chí Minh (SGN)"
									id="CphContent_UsrSearchFormSub1_txtDepartureAirport"
									class="text-input ac_input longer" onclick="select()" /></td>
							</tr>
							<tr>
								<td colspan="3">Điểm đến</td>
							</tr>
							<tr>
								<td colspan="3"><input
									name="ctl00$CphContent$UsrSearchFormSub1$txtArrivalAirport"
									type="text" value="Hà Nội (HAN)"
									id="CphContent_UsrSearchFormSub1_txtArrivalAirport"
									class="text-input ac_input longer" onclick="select()" /></td>
							</tr>
							<tr>
								<td colspan="3"><div class="line-search" style="width: 96%"></div></td>
							</tr>
							<tr>
								<td>Ngày đi</td>
								<td width="8%">&nbsp;</td>
								<td>Ngày về</td>
							</tr>
							<tr>
								<td><input
									name="ctl00$CphContent$UsrSearchFormSub1$txtDepartureDate"
									type="text" value="19/10/2015"
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
								<td width="8%">&nbsp;</td>
								<td class="return"><input
									name="ctl00$CphContent$UsrSearchFormSub1$txtReturnDate"
									type="text" id="CphContent_UsrSearchFormSub1_txtReturnDate"
									class="date-input  retDate mid" /> <script
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
							<tr>
								<td colspan="5">
									<table style="width: 100%;">
										<tr>
											<td>Người lớn</td>
											<td width="3%">&nbsp;</td>
											<td>Trẻ em</td>
											<td width="3%">&nbsp;</td>
											<td>Em bé</td>
										</tr>
										<tr>
											<td><select
												name="ctl00$CphContent$UsrSearchFormSub1$cboAdults"
												id="CphContent_UsrSearchFormSub1_cboAdults">
													<option selected="selected" value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>


											</select></td>
											<td width="3%">&nbsp;</td>
											<td><select
												name="ctl00$CphContent$UsrSearchFormSub1$cboChildren"
												id="CphContent_UsrSearchFormSub1_cboChildren">
													<option selected="selected" value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>


											</select></td>
											<td width="3%">&nbsp;</td>
											<td><select
												name="ctl00$CphContent$UsrSearchFormSub1$cboInfant"
												id="CphContent_UsrSearchFormSub1_cboInfant">
													<option selected="selected" value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>

											</select></td>
										</tr>
										<tr>
											<td colspan="7">
												<div class="timverenhat_btn">
													<input id="CphContent_UsrSearchFormSub1_chkSearchVeRe"
														type="checkbox"
														name="ctl00$CphContent$UsrSearchFormSub1$chkSearchVeRe" /><label
														for="CphContent_UsrSearchFormSub1_chkSearchVeRe">Tìm
														vé rẻ nhất</label>&nbsp;
												</div>
											</td>
										</tr>
										<tr>
											<td colspan="10"><div class="line-search"
													style="width: 96%"></div></td>
										</tr>
										<tr>
											<td colspan="3"></td>
										</tr>
										<tr>
											<td colspan="8" align="center"><input type="submit"
												name="ctl00$CphContent$UsrSearchFormSub1$btnSearchFlight"
												value="Tìm Chuyến Bay"
												id="CphContent_UsrSearchFormSub1_btnSearchFlight"
												class="btnTimgia" /></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>

					</div>


					<!-- <div class="btnonSub">
						<a href="/hinh-thuc-dat-ve.html" class="BookingWay"> <img
							src="Images/Newversion/Phone_Ssmall.png" alt="Hình thức đặt vé" />
							Hình thức <br /> <span> Đặt vé</span>
						</a> <a href="/hinh-thuc-thanh-toan.html" class="Payment"> <img
							src="Images/Newversion/usd_sSmall.png" alt="Hình thức thanh toán" />
							Hình thức <br /> <span> Thanh toán</span>
						</a>
						<div class="clear"></div>
						<div class="emailRegister">
							<p>Đăng ký email nhận tin khuyến mại</p>
							<input type="text" class="EmailRegisterTextbox" /> <input
								type="button" value="gửi" class="btnEmailRegister" />
							<div class="clear"></div>
						</div>
					</div> -->
					<!-- <div id="fb-root"></div>
					<script>
						(function(d, s, id) {
							var js, fjs = d.getElementsByTagName(s)[0];
							if (d.getElementById(id))
								return;
							js = d.createElement(s);
							js.id = id;
							js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
							fjs.parentNode.insertBefore(js, fjs);
						}(document, 'script', 'facebook-jssdk'));
					</script> -->

					<!-- 	<div style="margin-bottom: 10px;" class="fb-like-box"
						data-href="http://www.facebook.com/vemaybayonline.net.vn"
						data-width="270" data-height="The pixel height of the plugin"
						data-colorscheme="light" data-show-faces="true" data-header="true"
						data-stream="false" data-show-border="true"></div>
					Place this tag where you want the widget to render.
					<div class="g-page" data-width="273"
						data-href="//plus.google.com/104923433171458729190"
						data-layout="landscape" data-rel="publisher"></div> -->

					<!-- Place this tag after the last widget tag. -->
					<!-- <script type="text/javascript">
						(function() {
							var po = document.createElement('script');
							po.type = 'text/javascript';
							po.async = true;
							po.src = 'https://apis.google.com/js/plusone.js';
							var s = document.getElementsByTagName('script')[0];
							s.parentNode.insertBefore(po, s);
						})();
					</script> -->
				</div>
				<!--End: subContent-->
				<!-- <img src="/images/paperRoll.png" style="display: none;"
					alt="Alternate Text" /> -->
			</div>
			<div class="clear"></div>
		</decorator:content>
	</decorator:decorate>
</body>
</html>