<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="airline.managerment.dao.TicketDAOImpl"%>
<%@ taglib prefix="decorator"
	uri="http://claudiushauptmann.com/jsp-decorator/"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/Styles/ttkh.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<decorator:decorate filename='/master'>
		<decorator:content placeholder='replace'>
			<div id="main" class="MainContent">

				<fieldset class="breadcrumb" data-limit="2">
					<span class="crumbs"> <span class="crust"> <a
							href="home.php" class="crumb" rel="up" itemprop="url"><span
								itemprop="title">Trang chủ</span></a> <span class="arrow"><span>&gt;</span></span>
					</span> <span class="crust deactive"> <a href="choose.php"
							class="crumb" rel="up" itemprop="url"><span itemprop="title">Chọn
									chuyến bay</span></a> <span class="arrow"><span>&gt;</span></span>
					</span> <span class="crust active"> <a class="crumb" rel="up"
							itemprop="url"><span itemprop="title">Thông tin liên
									hệ</span></a> <span class="arrow"><span>&gt;</span></span>
					</span> <span class="crust deactive"> <a class="crumb" rel="up"
							itemprop="url"><span itemprop="title">Thông tin khách
									đi</span></a> <span class="arrow"><span>&gt;</span></span>
					</span> <span class="crust deactive"> <a class="crumb" rel="up"
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
				<!-- Cac truong hidden -->
				<%
				int ticketId = Integer.parseInt(session.getAttribute("ticketChoose").toString());
				    TicketDAOImpl ticket = new TicketDAOImpl();
					ArrayList<Integer> info = (ArrayList)session.getAttribute("info");				
				%>
				<input type="hidden" id="adult" value="<%= info.get(0) %>" /> <input
					type="hidden" id="child" value="<%=info.get(1)%>" /> <input
					type="hidden" id="infant" value="<%=info.get(2)%>" />
				<!-- end hidden -->
				<h3 class="titBox">Chi tiết giá vé</h3>
				<div class="boxThongtinHK padding">
					<table width="100%" id="thongtingiave">
						<tr>
							<td style="vertical-align: top;"><span class="bigFont">Giá
									cơ bản</span></td>
							<td style="padding: 0;">
								<table style="width: 100%;">
									<tr>
										<td style="width: 40%;"><span class="blue"><%=info.get(0)%>
												Người lớn</span></td>
										<td style="width: 20%; text-align: center">x</td>
										<td align="right"><span class="blue"><%= info.get(3) %></span></td>
									</tr>
									<tr>
										<td style="width: 40%;"><span class="blue"><%=info.get(1)%>
												Trẻ em</span></td>
										<td style="width: 20%; text-align: center">x</td>
										<td align="right"><span class="blue"><%=info.get(4) %></span></td>
									</tr>
									<tr>
										<td style="width: 40%;"><span class="blue"><%=info.get(2)%>
												Trẻ sơ sinh</span></td>
										<td style="width: 20%; text-align: center">x</td>
										<td align="right"><span class="blue"><%=info.get(5) %></span></td>
									</tr>
								</table>
							</td>
							<td rowspan="6" align="center">
								<p class="Tongia">Tổng giá</p>
								<p class="RedGia ">
									<span class="total-price-origin">5,555,000</span> VND
								</p> <input type="hidden" id="totalPriceOrigin" value="5555000" />
							</td>
						</tr>
						<tr>
							<td style="vertical-align: top;"><span class="bigFont">Thuế
									và Phí</span></td>
							<td style="padding: 0; vertical-align: top;">
								<table style="width: 100%;">
									<tr>
										<td style="width: 40%;"><span class="blue">3 Người
												lớn</span></td>
										<td style="width: 20%; text-align: center">x</td>
										<td align="right"><span class="blue">440,000 VND</span></td>
									</tr>
									<tr>
										<td style="width: 40%;"><span class="blue">2 Trẻ
												em</span></td>
										<td style="width: 20%; text-align: center">x</td>
										<td align="right"><span class="blue">400,000 VND</span></td>
									</tr>
									<tr>
										<td style="width: 40%;"><span class="blue">2 Trẻ
												sơ sinh</span></td>
										<td style="width: 20%; text-align: center">x</td>
										<td align="right"><span class="blue">180,000 VND</span></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td><span class="bigFont">Hành lý ký gửi</span></td>
							<td align="right"><span class="blue"><span
									class="price-baggage">0</span> VND</span></td>
						</tr>
						<tr>
							<td><span class="bigFont">Giảm giá</span></td>
							<td align="right"><span class="blue">-420,000 VND</span></td>
						</tr>
					</table>
				</div>
				<!--End:Chitietgia--->
				<h3 class="titBox">Thông tin chuyến bay</h3>
				<div class="boxThongtinHK">
					<table width="100%" class="ttChuyenbay OutBound">
						<tr class="border">
							<td align="center"><img
								src="${pageContext.request.contextPath}/Images/Newversion/OutBound.png"></img></td>
							<td colspan="2"><span class="boldFont">Chiều đi:</span> <span
								class="bigFont">Hanoi - Ho Chi Minh City</span></td>
							<td><span class="boldFont">Thời gian: 02h + 05m</span></td>
						</tr>

						<tr class="noneborder">
							<td><img
								src="/Images/Icon/Flight/Airline/AirlineLogo/smVJ.gif" alt=""></td>
							<td>Từ <b>Hà Nội</b> (HAN)
							</td>
							<td>Tới<b> Thành phố Hồ Chí Minh </b>(SGN)
							</td>
							<!--    <td>Chuyến bay</td>-->
						</tr>
						<tr class="noneborder">
							<td>
								<!--        <span style="display: {TicketClassDisplay}">--> <!--            <t>Ticket Class</t>-->
								<!--            : <b>Tiết kiệm</b>--> <!--        </span>-->
								Vietjet Air <b>VJ 151</b>
							</td>
							<td>Từ: <b> 05:25 </b> 29/10/2015
							</td>
							<td>Tới: <b> 07:30 </b> 29/10/2015
							</td>
							<!--    <td></td>-->
						</tr>


					</table>


				</div>

				<h3 class="titBox">Điều kiện vé</h3>
				<div class="boxThongtinHK padding">
					<table width="100%">
						<tr>
							<td>
								<table width=620 cellpadding="0" cellspacing="0"
									style='table-layout: fixed' class="farerule">
									<col width=170>
									<col width=450>
									<tr>
										<td class="name" valign="top">Hoàn Vé</td>
										<td valign="top">Không được phép</td>
									</tr>
									<tr>
										<td class="name" valign="top">Đổi Tên Hành Khách</td>
										<td valign="top">Được phép - Thu phí: 352,000 VND</td>
									</tr>
									<tr>
										<td class="name" valign="top">Đổi Hành Trình</td>
										<td valign="top">Được phép - Thu phí: 352.000 VND + Giá
											vé chênh lệch (nếu có). Đổi đồng hạng hoặc nâng hạng tương
											ứng của hành trình mới.</td>
									</tr>
									<tr>
										<td class="name" valign="top">Đổi Ngày Giờ Chuyến Bay</td>
										<td valign="top">Được phép - Thu phí: 352.000 VND + Giá
											vé chênh lệch (nếu có).</td>
									</tr>
									<tr>
										<td class="name" valign="top">Bảo lưu</td>
										<td valign="top">Không được phép</td>
									</tr>
									<tr>
										<td class="name" valign="top">Thời hạn thay đổi (bao gồm
											thay đổi tên, ngày/chuyến bay)</td>
										<td valign="top">Trước giờ khởi hành 12 tiếng.</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>

				<script type="text/javascript"
					src="/Scripts/jquery.formatCurrency-1.4.0.min.js"></script>
				<script type="text/javascript">
					$(document)
							.ready(
									function() {
										$('.cbobaggage')
												.change(
														function() {
															var allCbo = $('.cbobaggage');
															var totalPrice = 0;
															allCbo
																	.each(function() {
																		totalPrice += parseFloat($(
																				this)
																				.val()
																				.split(
																						',')[1]);
																	});
															$('.price-baggage')
																	.text(
																			totalPrice)
																	.formatCurrency(
																			{
																				symbol : '',
																				roundToDecimalPlace : 0
																			});
															var totalPriceOrigin = parseFloat($(
																	'#totalPriceOrigin')
																	.val());
															$(
																	'.total-price-origin')
																	.text(
																			(totalPrice + totalPriceOrigin))
																	.formatCurrency(
																			{
																				symbol : '',
																				roundToDecimalPlace : 0
																			});
														});
									});
				</script>
				<h3 class="titBox">Thông tin hành lý</h3>
				<div class="boxThongtinHK">
					<table width="100%" class="ttChuyenbay">
						<tr class="border">
							<td colspan="3"><span class="boldFont">Thông tin hành
									lý chiều đi</span></td>
						</tr>
					</table>
					<table width="96%" style="margin-left: 15px" class="tthl">
						<tr class="noneborder">
							<td width="20%">Hành lý xách tay</td>
							<td colspan="2">Mỗi hành khách được mang theo tối đa 7kg
								hành lý xách tay.</td>
						</tr>
						<tr class="noneborder">
							<td>Hành lý ký gửi</td>
							<td>


								<table>

									<tr>
										<td>Hành khách 1</td>
										<td><select
											name="ctl00$CphContent$UsrBaggageDomestic1$rptOut$ctl01$cboBaggage"
											id="CphContent_UsrBaggageDomestic1_rptOut_cboBaggage_0"
											class="cbobaggage">
												<option value="0,0">Kh&#244;ng mang theo h&#224;nh
													l&#253;</option>
												<option value="7,143000">Th&#234;m 15Kg h&#224;nh
													l&#253; (143,000 VND)</option>
												<option value="8,165000">Th&#234;m 20Kg h&#224;nh
													l&#253; (165,000 VND)</option>
												<option value="9,220000">Th&#234;m 25Kg h&#224;nh
													l&#253; (220,000 VND)</option>
												<option value="10,330000">Th&#234;m 30Kg h&#224;nh
													l&#253; (330,000 VND)</option>
												<option value="11,385000">Th&#234;m 35Kg h&#224;nh
													l&#253; (385,000 VND)</option>
												<option value="12,440000">Th&#234;m 40Kg h&#224;nh
													l&#253; (440,000 VND)</option>

										</select></td>
									</tr>

								</table>
							</td>
						</tr>
					</table>

				</div>

				<h3 class="titBox">Thông tin người bay</h3>
				<div class="boxThongtinHK">

					<table width="96%" style="margin: 15px" class="tthl">
						<tbody>


							<tr class="noneborder">
								<td><span> Người lớn </span></td>
								<td><select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl00$cboTitle"
									id="CphContent_UsrPassenger1_repPassenger_cboTitle_0">
										<option value="6">&#212;ng</option>
										<option value="7">B&#224;</option>
										<option value="8">Anh</option>
										<option value="9">Chị</option>

								</select></td>
								<td colspan="2"><input
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl00$txtFullName"
									type="text" maxlength="500"
									id="CphContent_UsrPassenger1_repPassenger_txtFullName_0"
									class="letterOnly i-require new LastNamePassengerFlight"
									style="width: 250px;" /></td>
								<td></td>
							</tr>

							<tr class="noneborder">
								<td><span> Người lớn </span></td>
								<td><select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl01$cboTitle"
									id="CphContent_UsrPassenger1_repPassenger_cboTitle_1">
										<option value="6">&#212;ng</option>
										<option value="7">B&#224;</option>
										<option value="8">Anh</option>
										<option value="9">Chị</option>

								</select></td>
								<td colspan="2"><input
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl01$txtFullName"
									type="text" maxlength="500"
									id="CphContent_UsrPassenger1_repPassenger_txtFullName_1"
									class="letterOnly i-require new LastNamePassengerFlight"
									style="width: 250px;" /></td>
								<td></td>
							</tr>

							<tr class="noneborder">
								<td><span> Người lớn </span></td>
								<td><select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl02$cboTitle"
									id="CphContent_UsrPassenger1_repPassenger_cboTitle_2">
										<option value="6">&#212;ng</option>
										<option value="7">B&#224;</option>
										<option value="8">Anh</option>
										<option value="9">Chị</option>

								</select></td>
								<td colspan="2"><input
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl02$txtFullName"
									type="text" maxlength="500"
									id="CphContent_UsrPassenger1_repPassenger_txtFullName_2"
									class="letterOnly i-require new LastNamePassengerFlight"
									style="width: 250px;" /></td>
								<td></td>
							</tr>

							<tr class="noneborder">
								<td><span> Trẻ em </span></td>
								<td><select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl03$cboTitle"
									id="CphContent_UsrPassenger1_repPassenger_cboTitle_3">
										<option value="11">Trẻ Em Trai</option>
										<option value="13">Trẻ Em G&#225;i</option>

								</select></td>
								<td colspan="2"><input
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl03$txtFullName"
									type="text" maxlength="500"
									id="CphContent_UsrPassenger1_repPassenger_txtFullName_3"
									class="letterOnly i-require new LastNamePassengerFlight"
									style="width: 250px;" /></td>
								<td><select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl03$cboDay"
									id="CphContent_UsrPassenger1_repPassenger_cboDay_3">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>

								</select> <select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl03$cboMonth"
									id="CphContent_UsrPassenger1_repPassenger_cboMonth_3">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>

								</select> <select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl03$cboYear"
									id="CphContent_UsrPassenger1_repPassenger_cboYear_3">
										<option value="2013">2013</option>
										<option value="2012">2012</option>
										<option value="2011">2011</option>
										<option value="2010">2010</option>
										<option value="2009">2009</option>
										<option value="2008">2008</option>
										<option value="2007">2007</option>
										<option value="2006">2006</option>
										<option value="2005">2005</option>
										<option value="2004">2004</option>
										<option value="2003">2003</option>

								</select></td>
							</tr>

							<tr class="noneborder">
								<td><span> Trẻ em </span></td>
								<td><select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl04$cboTitle"
									id="CphContent_UsrPassenger1_repPassenger_cboTitle_4">
										<option value="11">Trẻ Em Trai</option>
										<option value="13">Trẻ Em G&#225;i</option>

								</select></td>
								<td colspan="2"><input
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl04$txtFullName"
									type="text" maxlength="500"
									id="CphContent_UsrPassenger1_repPassenger_txtFullName_4"
									class="letterOnly i-require new LastNamePassengerFlight"
									style="width: 250px;" /></td>
								<td><select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl04$cboDay"
									id="CphContent_UsrPassenger1_repPassenger_cboDay_4">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>

								</select> <select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl04$cboMonth"
									id="CphContent_UsrPassenger1_repPassenger_cboMonth_4">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>

								</select> <select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl04$cboYear"
									id="CphContent_UsrPassenger1_repPassenger_cboYear_4">
										<option value="2013">2013</option>
										<option value="2012">2012</option>
										<option value="2011">2011</option>
										<option value="2010">2010</option>
										<option value="2009">2009</option>
										<option value="2008">2008</option>
										<option value="2007">2007</option>
										<option value="2006">2006</option>
										<option value="2005">2005</option>
										<option value="2004">2004</option>
										<option value="2003">2003</option>

								</select></td>
							</tr>

							<tr class="noneborder">
								<td><span> Trẻ sơ sinh </span></td>
								<td><select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl05$cboTitle"
									id="CphContent_UsrPassenger1_repPassenger_cboTitle_5">
										<option value="10">Em B&#233; Trai</option>
										<option value="12">Em B&#233; G&#225;i</option>

								</select></td>
								<td colspan="2"><input
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl05$txtFullName"
									type="text" maxlength="500"
									id="CphContent_UsrPassenger1_repPassenger_txtFullName_5"
									class="letterOnly i-require new LastNamePassengerFlight"
									style="width: 250px;" /></td>
								<td><select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl05$cboDay"
									id="CphContent_UsrPassenger1_repPassenger_cboDay_5">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>

								</select> <select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl05$cboMonth"
									id="CphContent_UsrPassenger1_repPassenger_cboMonth_5">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>

								</select> <select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl05$cboYear"
									id="CphContent_UsrPassenger1_repPassenger_cboYear_5">
										<option value="2015">2015</option>
										<option value="2014">2014</option>
										<option value="2013">2013</option>

								</select></td>
							</tr>

							<tr class="noneborder">
								<td><span> Trẻ sơ sinh </span></td>
								<td><select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl06$cboTitle"
									id="CphContent_UsrPassenger1_repPassenger_cboTitle_6">
										<option value="10">Em B&#233; Trai</option>
										<option value="12">Em B&#233; G&#225;i</option>

								</select></td>
								<td colspan="2"><input
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl06$txtFullName"
									type="text" maxlength="500"
									id="CphContent_UsrPassenger1_repPassenger_txtFullName_6"
									class="letterOnly i-require new LastNamePassengerFlight"
									style="width: 250px;" /></td>
								<td><select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl06$cboDay"
									id="CphContent_UsrPassenger1_repPassenger_cboDay_6">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>

								</select> <select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl06$cboMonth"
									id="CphContent_UsrPassenger1_repPassenger_cboMonth_6">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>

								</select> <select
									name="ctl00$CphContent$UsrPassenger1$repPassenger$ctl06$cboYear"
									id="CphContent_UsrPassenger1_repPassenger_cboYear_6">
										<option value="2015">2015</option>
										<option value="2014">2014</option>
										<option value="2013">2013</option>

								</select></td>
							</tr>

						</tbody>
					</table>

					<div class="line2"></div>

					<script type="text/javascript">
						$(document).ready(
								function() {
									if ($('.ycXuathoadon input')
											.attr("checked"))
										$('#invoice_details').show();
									$('.ycXuathoadon input').click(
											function() {
												$('#invoice_details').toggle(
														'slow', function() {
														});
											});
								});
					</script>
					<style type="text/css">
.require {
	color: red;
}
</style>
					<table width="100%" class="ttChuyenbay">
						<tbody>
							<tr class="border">
								<td colspan="3" style="padding-top: 8px"><span
									class="boldFont uppercase blue" style="margin-left: 15px;">Thông
										tin liên hệ</span>
									<p class="n">
										Vui lòng điền đầy đủ thông tin liên hệ. Nhân viên chúng tôi sẽ
										liên lạc lại với quý khách. <br /> Những ô (<span class="red">*</span>)
										là những ô bắt buộc
									</p></td>
							</tr>
						</tbody>
					</table>
					<table width="96%" style="margin-left: 15px" class="tthl">
						<tbody>
							<tr class="noneborder">
								<td class="10" style="height: auto;"></td>
							</tr>
							<tr class="noneborder">
								<td width="56%" valign="middle">
									<p class="ttt">Họ và tên</p> <select
									name="ctl00$CphContent$usrContactInfo1$cboGender"
									id="CphContent_usrContactInfo1_cboGender" class="gender">
										<option value="6">&#212;ng</option>
										<option value="7">B&#224;</option>
										<option value="8">Anh</option>
										<option value="9">Chị</option>

								</select> <input
									name="ctl00$CphContent$usrContactInfo1$txtFullNameContact"
									type="text" maxlength="250"
									id="CphContent_usrContactInfo1_txtFullNameContact"
									class="Tenkhachbay new last-name letterOnly i-require"
									style="width: 250px;" />
								</td>
								<td colspan="">
									<p class="ttt">Quốc gia</p> <select
									name="ctl00$CphContent$usrContactInfo1$cboCountry"
									id="CphContent_usrContactInfo1_cboCountry"
									class="quocgia i-require">
										<option value=""></option>
										<option value="AF">Afghanistan</option>
										<option value="AL">Albania</option>
										<option value="DZ">Algeria</option>
										<option value="AS">American Samoa</option>
										<option value="AD">Andorra</option>
										<option value="AO">Angola</option>
										<option value="AI">Anguilla</option>
										<option value="AQ">Antarctica</option>
										<option value="AG">Antigua and Barbuda</option>
										<option value="AR">Argentina</option>
										<option value="AM">Armenia</option>
										<option value="AW">Aruba</option>
										<option value="AU">Australia</option>
										<option value="AT">Austria</option>
										<option value="AZ">Azerbaijan</option>
										<option value="BS">Bahamas</option>
										<option value="BH">Bahrain</option>
										<option value="BD">Bangladesh</option>
										<option value="BB">Barbados</option>
										<option value="BY">Belarus</option>
										<option value="BE">Belgium</option>
										<option value="BZ">Belize</option>
										<option value="BJ">Benin</option>
										<option value="BM">Bermuda</option>
										<option value="BT">Bhutan</option>
										<option value="BO">Bolivia</option>
										<option value="BA">Bosnia and herzegowina</option>
										<option value="BW">Botswana</option>
										<option value="BV">Bouvet island</option>
										<option value="BR">Brazil</option>
										<option value="IO">British indian ocean territory</option>
										<option value="BN">Brunei darussalam</option>
										<option value="BG">Bulgaria</option>
										<option value="BF">Burkina faso</option>
										<option value="BI">Burundi</option>
										<option value="KH">Cambodia</option>
										<option value="CM">Cameroon</option>
										<option value="CA">Canada</option>
										<option value="CV">Cape verde</option>
										<option value="KY">Cayman islands</option>
										<option value="CF">Central african republic</option>
										<option value="TD">Chad</option>
										<option value="CL">Chile</option>
										<option value="CN">China</option>
										<option value="CX">Christmas island</option>
										<option value="CC">Cocos (keeling) islands</option>
										<option value="CO">Colombia</option>
										<option value="KM">Comoros</option>
										<option value="CG">Congo</option>
										<option value="CD">Congo, the drc</option>
										<option value="CK">Cook islands</option>
										<option value="CR">Costa rica</option>
										<option value="CI">Cote d&#39;ivoire</option>
										<option value="HR">Croatia (local name: hrvatska)</option>
										<option value="CU">Cuba</option>
										<option value="CY">Cyprus</option>
										<option value="CZ">Czech republic</option>
										<option value="DK">Denmark</option>
										<option value="DJ">Djibouti</option>
										<option value="DM">Dominica</option>
										<option value="DO">Dominican republic</option>
										<option value="TL">East timor</option>
										<option value="EC">Ecuador</option>
										<option value="EG">Egypt</option>
										<option value="SV">El salvador</option>
										<option value="GQ">Equatorial guinea</option>
										<option value="ER">Eritrea</option>
										<option value="EE">Estonia</option>
										<option value="ET">Ethiopia</option>
										<option value="FK">Falkland islands (malvinas)</option>
										<option value="FO">Faroe islands</option>
										<option value="FJ">Fiji</option>
										<option value="FI">Finland</option>
										<option value="FR">France</option>
										<option value="">France, metropolitan</option>
										<option value="GF">French guiana</option>
										<option value="PF">French polynesia</option>
										<option value="TF">French Southern Territories</option>
										<option value="GA">Gabon</option>
										<option value="GM">Gambia</option>
										<option value="GE">Georgia</option>
										<option value="DE">Germany</option>
										<option value="GH">Ghana</option>
										<option value="GI">Gibraltar</option>
										<option value="GR">Greece</option>
										<option value="GL">Greenland</option>
										<option value="GD">Grenada</option>
										<option value="GP">Guadeloupe</option>
										<option value="GU">Guam</option>
										<option value="GT">Guatemala</option>
										<option value="GN">Guinea</option>
										<option value="GW">Guinea-bissau</option>
										<option value="GY">Guyana</option>
										<option value="HT">Haiti</option>
										<option value="HM">Heard and mc donald islands</option>
										<option value="VA">Holy see (vatican city state)</option>
										<option value="HN">Honduras</option>
										<option value="HK">Hong kong</option>
										<option value="HU">Hungary</option>
										<option value="IS">Iceland</option>
										<option value="IN">India</option>
										<option value="ID">Indonesia</option>
										<option value="IR">Iran (islamic republic of)</option>
										<option value="IQ">Iraq</option>
										<option value="IE">Ireland</option>
										<option value="IL">Israel</option>
										<option value="IT">Italy</option>
										<option value="JM">Jamaica</option>
										<option value="JP">Japan</option>
										<option value="JO">Jordan</option>
										<option value="KZ">Kazakhstan</option>
										<option value="KE">Kenya</option>
										<option value="KI">Kiribati</option>
										<option value="KP">Korea, d.p.r.o.</option>
										<option value="KW">Kuwait</option>
										<option value="KG">Kyrgyzstan</option>
										<option value="LA">Laos</option>
										<option value="LV">Latvia</option>
										<option value="LB">Lebanon</option>
										<option value="LS">Lesotho</option>
										<option value="LR">Liberia</option>
										<option value="LY">Libyan arab jamahiriya</option>
										<option value="LI">Liechtenstein</option>
										<option value="LT">Lithuania</option>
										<option value="LU">Luxembourg</option>
										<option value="MO">Macau</option>
										<option value="MK">Macedonia</option>
										<option value="MG">Madagascar</option>
										<option value="MW">Malawi</option>
										<option value="MY">Malaysia</option>
										<option value="MV">Maldives</option>
										<option value="ML">Mali</option>
										<option value="MT">Malta</option>
										<option value="MH">Marshall islands</option>
										<option value="MQ">Martinique</option>
										<option value="MR">Mauritania</option>
										<option value="MU">Mauritius</option>
										<option value="YT">Mayotte</option>
										<option value="MX">Mexico</option>
										<option value="FM">Micronesia, federated states of</option>
										<option value="MD">Moldova, republic of</option>
										<option value="MC">Monaco</option>
										<option value="MN">Mongolia</option>
										<option value="MS">Montserrat</option>
										<option value="MA">Morocco</option>
										<option value="MZ">Mozambique</option>
										<option value="MM">Myanmar (burma)</option>
										<option value="NA">Namibia</option>
										<option value="NR">Nauru</option>
										<option value="NP">Nepal</option>
										<option value="NL">Netherlands</option>
										<option value="AN">Netherlands Antilles</option>
										<option value="NC">New caledonia</option>
										<option value="NZ">New zealand</option>
										<option value="NI">Nicaragua</option>
										<option value="NE">Niger</option>
										<option value="NG">Nigeria</option>
										<option value="NU">Niue</option>
										<option value="NF">Norfolk island</option>
										<option value="MP">Northern mariana islands</option>
										<option value="NO">Norway</option>
										<option value="OM">Oman</option>
										<option value="PK">Pakistan</option>
										<option value="PW">Palau</option>
										<option value="PA">Panama</option>
										<option value="PG">Papua new guinea</option>
										<option value="PY">Paraguay</option>
										<option value="PE">Peru</option>
										<option value="PH">Philippines</option>
										<option value="PN">Pitcairn</option>
										<option value="PL">Poland</option>
										<option value="PT">Portugal</option>
										<option value="PR">Puerto rico</option>
										<option value="QA">Qatar</option>
										<option value="KR">Republic of korea</option>
										<option value="RE">Reunion</option>
										<option value="RO">Romania</option>
										<option value="RU">Russian federation</option>
										<option value="RW">Rwanda</option>
										<option value="KN">Saint kitts and nevis</option>
										<option value="LC">Saint lucia</option>
										<option value="VC">Saint vincent and the grenadines</option>
										<option value="WS">Samoa</option>
										<option value="SM">San marino</option>
										<option value="ST">Sao tome and principe</option>
										<option value="SA">Saudi arabia</option>
										<option value="SN">Senegal</option>
										<option value="SC">Seychelles</option>
										<option value="SL">Sierra leone</option>
										<option value="SG">Singapore</option>
										<option value="SK">Slovakia (slovak republic)</option>
										<option value="SI">Slovenia</option>
										<option value="SB">Solomon islands</option>
										<option value="SO">Somalia</option>
										<option value="ZA">South africa</option>
										<option value="GS">South georgia and south s.s.</option>
										<option value="ES">Spain</option>
										<option value="LK">Sri lanka</option>
										<option value="SH">St. helena</option>
										<option value="PM">St. pierre and miquelon</option>
										<option value="SD">Sudan</option>
										<option value="SR">Suriname</option>
										<option value="SJ">Svalbard and jan mayen islands</option>
										<option value="SZ">Swaziland</option>
										<option value="SE">Sweden</option>
										<option value="CH">Switzerland</option>
										<option value="SY">Syrian arab republic</option>
										<option value="TW">Taiwan, province of china</option>
										<option value="TJ">Tajikistan</option>
										<option value="TZ">Tanzania, united republic of</option>
										<option value="TH">Thailand</option>
										<option value="TG">Togo</option>
										<option value="TK">Tokelau</option>
										<option value="TO">Tonga</option>
										<option value="TT">Trinidad and tobago</option>
										<option value="TN">Tunisia</option>
										<option value="TR">Turkey</option>
										<option value="TM">Turkmenistan</option>
										<option value="TC">Turks and caicos islands</option>
										<option value="TV">Tuvalu</option>
										<option value="UM">U.s. minor islands</option>
										<option value="UG">Uganda</option>
										<option value="UA">Ukraine</option>
										<option value="AE">United Arab Emirates</option>
										<option value="GB">United kingdom</option>
										<option value="US">United States</option>
										<option value="UY">Uruguay</option>
										<option value="UZ">Uzbekistan</option>
										<option value="VU">Vanuatu</option>
										<option value="VE">Venezuela</option>
										<option value="VN">Viet nam</option>
										<option value="VG">Virgin islands (british)</option>
										<option value="VI">Virgin islands (u.s.)</option>
										<option value="WF">Wallis and futuna islands</option>
										<option value="EH">Western sahara</option>
										<option value="YE">Yemen</option>
										<option value="">Yugoslavia (serbia and montenegro)</option>
										<option value="ZM">Zambia</option>
										<option value="ZW">Zimbabwe</option>

								</select>
								</td>
							</tr>
							<tr class="noneborder">
								<td width="56%" valign="middle">
									<p class="ttt">Email (ví dụ: Email@gmail.com)</p> <input
									name="ctl00$CphContent$usrContactInfo1$txtEmail" type="text"
									maxlength="200" id="CphContent_usrContactInfo1_txtEmail"
									class="new email i-require Tttnhap" />
								</td>
								<td colspan="">
									<p class="ttt">Thành phố</p> <input
									name="ctl00$CphContent$usrContactInfo1$txtCity" type="text"
									maxlength="250" id="CphContent_usrContactInfo1_txtCity"
									class="new city i-require" style="width: 250px;" />
								</td>
							</tr>
							<tr class="noneborder">
								<td width="56%" valign="middle">
									<p class="ttt">
										Số điện thoại <span class="require">* </span>
									</p> <input name="ctl00$CphContent$usrContactInfo1$txtMobile"
									type="text" maxlength="20"
									id="CphContent_usrContactInfo1_txtMobile"
									class="new phone i-require" />
								</td>
								<td colspan="">
									<p class="ttt">Địa chỉ</p> <input
									name="ctl00$CphContent$usrContactInfo1$txtStreet" type="text"
									maxlength="250" id="CphContent_usrContactInfo1_txtStreet"
									class="new i-require" style="width: 250px;" />
								</td>
							</tr>
							<tr class="noneborder">
								<td colspan="2" valign="middle"><span class="ycXuathoadon"><input
										id="CphContent_usrContactInfo1_chkIsInvoice" type="checkbox"
										name="ctl00$CphContent$usrContactInfo1$chkIsInvoice" /></span> <label
									for="" class="yctxt"> Tôi muốn xuất hóa đơn </label></td>
							</tr>
							<tr id="invoice_details" style="display: none;">
								<td colspan="2">
									<fieldset class="radius-5px">
										<legend> Chi tiết hóa đơn</legend>
										<table style="width: 100%">
											<tr>
												<td colspan="3"><span style="font-weight: bold">Khách
														hàng có nhu cầu lấy hóa đơn giá trị gia tăng phải yêu cầu
														với phía Abay trong vòng 7 ngày kể từ thời điểm thanh toán
														đơn hàng. </span></td>
											</tr>
											<tr>
												<td>
													<p class="ttt">
														Tên công ty (<span class="red">*</span>)
													</p> <br /> <input
													name="ctl00$CphContent$usrContactInfo1$txtNameInvoice"
													type="text" maxlength="250"
													id="CphContent_usrContactInfo1_txtNameInvoice"
													class="new i-require letterOnly txtHoadon" />
												</td>
												<td>
													<p class="ttt">
														Địa chỉ (<span class="red">*</span>)
													</p> <input name="ctl00$CphContent$usrContactInfo1$txtAddress"
													type="text" maxlength="250"
													id="CphContent_usrContactInfo1_txtAddress"
													class="new i-require txtHoadon" />
												</td>
												<td>
													<p class="ttt">
														Mã số thuế (<span class="red">*</span>)
													</p> <input name="ctl00$CphContent$usrContactInfo1$txtTax"
													type="text" maxlength="250"
													id="CphContent_usrContactInfo1_txtTax"
													class="new i-require txtHoadon" />
												</td>
											</tr>
											<tr>
												<td colspan="3">
													<p class="ttt">
														Địa chỉ nhận hóa đơn (<span class="red">*</span>)
													</p> <input
													name="ctl00$CphContent$usrContactInfo1$txtInvoiceAddress"
													type="text"
													id="CphContent_usrContactInfo1_txtInvoiceAddress"
													class="txtHoadonDCnhanhoadon" style="width: 99%;" />
												</td>
											</tr>
										</table>
									</fieldset>
								</td>
							</tr>
							<tr style="display: none">
								<td class="receive" colspan="2"><input
									id="CphContent_usrContactInfo1_chkIsReceiveInformation"
									type="checkbox"
									name="ctl00$CphContent$usrContactInfo1$chkIsReceiveInformation"
									checked="checked" /> <label for=""> Tôi muốn nhận được
										thông tin về chương trình khuyến mãi, tin tức.... </label></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="ycDacbiet">
					<h3 class="titBox">Yêu cầu đặc biệt</h3>
					<div class="boxThongtinHK">
						<textarea name="ctl00$CphContent$UsrRemark1$txtRemark" rows="5"
							cols="60" id="CphContent_UsrRemark1_txtRemark">
</textarea>
					</div>
				</div>
				<input type="submit" name="ctl00$CphContent$UsrRemark1$btnContinue"
					value="Tiếp Tục" id="CphContent_UsrRemark1_btnContinue"
					class="tieptuc button-text radius-5px" /> <img
					src="/Images/btn-continue.png" alt="Alternate Text"
					class="img-processing-passenger"
					style="display: none; float: right; margin-top: 50px;" />
				<div class="clear"></div>

				<script type="text/javascript">
					$(function() {
						$("#CphContent_UsrRemark1_btnContinue").click(
								function() {
									$(this).attr({
										value : 'Đang xử lý'
									});
									$(this).addClass('waiting-o');
									$(this).hide();
									$('.img-processing-passenger').show();
								});
					});
				</script>
			</div>
			<!-- end main content-->
			<!-- begin subcontent -->
			<%@include file="subcontent.jsp"%>
			<!-- end subcontent -->
			<div class="clear"></div>
		</decorator:content>
	</decorator:decorate>
</body>
</html>