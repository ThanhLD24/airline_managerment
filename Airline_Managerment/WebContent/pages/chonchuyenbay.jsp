<%@page import="airline.managerment.dao.AirplaneDAOImpl"%>
<%@page import="airline.managerment.dao.AirportDAOImpl"%>
<%@page import="airline.managerment.utility.Utility"%>
<%@page import="airline.managerment.utility.Variables"%>
<%@page import="java.util.List"%>
<%@page import="airline.managerment.model.Ticket"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://claudiushauptmann.com/jsp-decorator/"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/Styles/result.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/Styles/ttkh.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<decorator:decorate filename='/master'>
		<decorator:content placeholder='replace'>
			<div id="main" class="MainContent">
				<!-- <script type="text/javascript">
					function scrollSubmit() {
						var positionOrigin = $('.div-tieptuc').position();
						var topOrigin = positionOrigin.top;
						var bottomOrigin = $('.div-tieptuc').height()
								+ positionOrigin.top;
						if (topOrigin > $(window).height()) {
							$('.div-tieptuc span').show();
							$('.div-tieptuc').addClass("result-scroll-down");
							$('.div-tieptuc').removeClass("div-tieptuc");
						}

						jQuery(window)
								.scroll(
										function() {
											if (topOrigin > $(window).height()) {
												$('.div-tieptuc span').show();
												$('.div-tieptuc').addClass(
														"result-scroll-down");
												$('.div-tieptuc').removeClass(
														"div-tieptuc");
											}
											var position = $(
													'.result-scroll-down')
													.position();
											if (position != undefined) {
												if (bottomOrigin < position.top
														+ $(
																'.result-scroll-down')
																.height()) {
													$(
															'.result-scroll-down span')
															.hide();
													$('.result-scroll-down')
															.addClass(
																	"div-tieptuc");
													$('.result-scroll-down')
															.removeClass(
																	"result-scroll-down");
												}
											}
										});
					}

					function CheckSelectInBound() {

						if ($('#InBound').length > 0) {
							if ($('#InBound input:radio:checked').length == 0)
								scrollToArchor($('#InBound'));
							else
								scrollToSubmit();
						} else
							scrollToSubmit();
					}

					function scrollToSubmit() {
					}
					function scrollToArchor(object) {
						var aTag = object;
						$('html,body').animate({
							scrollTop : aTag.offset().top
						}, 'slow');
					}

					var Url = "/ve-may-bay/GetResultDomestic.aspx?sessionId="
							+ querySt("sessionId");
					Url = SetPara(Url, "mode", "2");
					Url = SetPara(Url, "IsAjaxCall", "true");

					function CreateSlider(className) {
						$(".filter-by-time .slider-" + className).slider(
								{
									range : true,
									min : 0,
									max : 24,
									values : [ 0, 24 ],
									slide : function(event, ui) {
										$(".start-time-" + className).html(
												ui.values[0]);
										$(".end-time-" + className).html(
												ui.values[1]);
									}
								});
						$(".start-time-" + className).html(
								$(".filter-by-time .slider-" + className)
										.slider("values", 0));
						$(".end-time-" + className).html(
								$(".filter-by-time .slider-" + className)
										.slider("values", 1));
					}

					function HightlightFlightResultAbay(wayType) {
						$(
								'.box-' + wayType
										+ ' .result-item input:radio:checked')
								.parent().parent().addClass('selected');
						$('.box-' + wayType + ' tr.result-item').click(
								function() {
									$('.box-' + wayType + ' tr.result-item')
											.removeClass('selected');
									$(this).addClass('selected');
									$(this).find('input:radio').attr('checked',
											true);
									$(
											'.box-' + wayType
													+ ' input:radio:checked')
											.parent().parent().addClass(
													'selected');
								});
					}

					$(document).ready(function() {
						$('#main').load(Url + " #main > *", function() {
							$('div#containerprogressbar').hide();
							AssignSortAndFilter();
							AssignLinkDetailEvent();
							var hasError = $('.error2');
							if (hasError.length != 0) { // check if has error
								$('html,body').animate({
									scrollTop : hasError.offset().top - 250
								}, 'fast');
							}
						});
					});

					function SetImageWhenHover() {
						$('.img-chon-flight')
								.hover(
										function() {
											$(this)
													.attr('src',
															'/Images/AbayV2/btn-select-flight-hover.png');
										},
										function() {
											$(this)
													.attr('src',
															'/Images/AbayV2/btn-select-flight.png');
										});
					}

					function AssignSortAndFilter() {
						CreateSlider("OutBound");
						CreateSlider("InBound");
						//Sort
						$('.sort-result')
								.change(
										function() {
											var sort = $(this).val();
											var wayType = $(this).attr(
													'waytype');
											var type = wayType == "OutBound" ? "out"
													: "in";
											Url = SetPara(Url, "sort" + type,
													sort);
											if (sort == "1")
												Url = SetPara(Url, "mode", "2");
											else
												Url = SetPara(Url, "mode", "1");
											ShowLoading(wayType);
											$(
													"div#flightResultMainContent .box-"
															+ wayType
															+ " .mainKq")
													.load(
															Url
																	+ " div#flightResultMainContent .box-"
																	+ wayType
																	+ " .mainKq > *",
															function() {
																hideProgress();
																AssignLinkDetailEvent();
															});
										});

						//Filter by Airline
						$(".filter-by-airline")
								.change(
										function() {
											var wayType = $(this).attr(
													'waytype');
											var type = wayType == "OutBound" ? "out"
													: "in";
											var airline = $(this).val();
											Url = SetPara(Url,
													"airline" + type, airline);
											ShowLoading(wayType);
											$(
													"div#flightResultMainContent .box-"
															+ wayType
															+ " .mainKq")
													.load(
															Url
																	+ " div#flightResultMainContent .box-"
																	+ wayType
																	+ " .mainKq > *",
															function() {
																scrollSubmit();
																hideProgress();
																AssignLinkDetailEvent();
															});
										});

						$('.filter-by-time .slider')
								.slider(
										{
											stop : function() {
												var wayType = $(this).attr(
														'waytype');
												var from = $(
														'.start-time-'
																+ wayType)
														.html();
												var to = $(
														'.end-time-' + wayType)
														.html();
												var fromOut;
												var toOut;
												if (from < 10)
													fromOut = "0" + from
															+ ":00";
												else if (from == 24)
													fromOut = "23:59";
												else
													fromOut = from + ":00";
												if (to < 10)
													toOut = "0" + to + ":00";
												else if (to == 24)
													toOut = "23:59";
												else
													toOut = to + ":00";

												var type = wayType == "OutBound" ? "out"
														: "in";
												Url = SetPara(Url, "from"
														+ type, fromOut);
												Url = SetPara(Url, "to" + type,
														toOut);
												ShowLoading(wayType);
												$(
														"div#flightResultMainContent .box-"
																+ wayType
																+ " .mainKq")
														.load(
																Url
																		+ " div#flightResultMainContent .box-"
																		+ wayType
																		+ " .mainKq > *",
																function() {
																	scrollSubmit();
																	hideProgress();
																	AssignLinkDetailEvent();
																});
											}
										});
					}

					function ShowLoading(wayType) {
						$(
								"div#flightResultMainContent .box-" + wayType
										+ " .mainKq")
								.html(
										'<tr><td style="text-align:center;padding:10px 0;"><img src="/Images/ajaxloader.gif" /></td></tr>');
					}

					function assignButtonSelectFlightEvent() {
						$('.sendCustomerPhone')
								.click(
										function() {
											var mobile = $(
													'.textboxCustomerPhone')
													.val().trim();
											var name = $('.textboxCustomerName')
													.val().trim();
											var content = $(
													'.contentRequestVeDoan')
													.val();
											if (name == '') {
												$('span.message-error')
														.show()
														.text(
																'Xin hãy nhập vào tên của bạn!');
											} else if (mobile == ''
													|| !isPhoneNumber(mobile)) {
												$('span.message-error')
														.show()
														.text(
																'Xin hãy nhập vào số điện thoại của bạn!');
											} else {
												$('span.message-error').hide();
												$
														.ajax('/Abay/SearchNoResult/DangKyMuaVeDoan.aspx?mobile='
																+ mobile
																+ '&fullname='
																+ name
																+ '&content='
																+ content);
												$('.message-success').show();
											}
											return false;
										});
						$('#btnSend')
								.click(
										function() {
											var fullname = $(
													'input[name=fullname]')
													.val();
											var mobile = $('input[name=mobile]')
													.val();
											var content = $(
													'textarea[name=content]')
													.val();
											var sessionId = querySt('sessionId');
											if (fullname == '' || mobile == ''
													|| !isPhoneNumber(mobile)
													|| content == '') {
												$('span.message-error')
														.show()
														.text(
																'Xin hãy nhập vào họ tên, số điện thoại, nội dung của bạn để chúng tôi liên lạc lại ngay khi có vé');
											} else {
												$
														.ajax('/Abay/SearchNoResult/SendRequest.aspx?fullname='
																+ fullname
																+ '&mobile='
																+ mobile
																+ '&sessionId='
																+ sessionId
																+ '&content='
																+ content);
												$('.table-submit').hide();
												$('.message-success').show();
												$('span.message-error').hide();
											}
											return false;
										});
						$('#select-flight')
								.click(
										function() {

											var allInputInBound = $('input[type=radio][name=BlockInBound]');
											var isRoundtrip = allInputInBound.length > 0;
											var outbound = $(
													'input[type=radio][name=BlockOutBound]:checked')
													.attr('value');
											var markupOutBound = $(
													'input[type=radio][name=BlockOutBound]:checked')
													.attr('markupOutBound');
											var ticketclassOutBound = $(
													'input[type=radio][name=BlockOutBound]:checked')
													.attr('ticketclass');
											var inbound = undefined;
											var markupInBound = undefined;
											var ticketclassInBound = undefined;
											if (outbound == undefined) {
												outbound = $(
														'input[type=radio][name=BlockOutBound]')
														.attr('value');
												markupOutBound = $(
														'input[type=radio][name=BlockOutBound]')
														.attr('markupOutBound');
												ticketclassOutBound = $(
														'input[type=radio][name=BlockOutBound]')
														.attr('ticketclass');
											}
											if (isRoundtrip) {
												inbound = $(
														'input[type=radio][name=BlockInBound]:checked')
														.attr('value');
												markupInBound = $(
														'input[type=radio][name=BlockInBound]:checked')
														.attr('markupInBound');
												ticketclassInBound = $(
														'input[type=radio][name=BlockInBound]:checked')
														.attr('ticketclass');
												if (inbound == undefined) {
													inbound = allInputInBound
															.attr('value');
													markupInBound = allInputInBound
															.attr('markupInBound');
													ticketclassInBound = allInputInBound
															.attr('ticketclass');
												}
											}
											outbound = outbound
													.replace(" ", "").replace(
															"-", "");
											if (inbound != undefined) {
												inbound = inbound.replace(" ",
														"").replace("-", "");
											}
											if (outbound === undefined) {
												return false;
											} else {
												var url = '/Ve-may-bay/Thong-tin-khach-hang.aspx?FlightServiceSearch=2';
												url = SetPara(url, "SessionId",
														querySt('SessionId'));
												url = SetPara(url, "outbound",
														outbound);
												if (markupOutBound != undefined)
													url = SetPara(url,
															"markupOutbound",
															markupOutBound);
												if (ticketclassOutBound != undefined)
													url = SetPara(
															url,
															"TicketClassOutBound",
															ticketclassOutBound);
												if (isRoundtrip) {
													url = SetPara(url,
															"inbound", inbound);
													if (markupInBound != undefined)
														url = SetPara(
																url,
																"markupInBound",
																markupInBound);
													if (ticketclassInBound != undefined)
														url = SetPara(
																url,
																"TicketClassInBound",
																ticketclassInBound);
												}

												$(this).addClass('waiting-b');
												$(this).val('Đang xử lý');
												window.location = url;

												return true;
											}
										});
					}

					function AssignLinkDetailEvent() {
						scrollSubmit();
						vtip();
						assignButtonSelectFlightEvent();
						HightlightFlightResultAbay("OutBound");
						HightlightFlightResultAbay("InBound");
						SetImageWhenHover();

						$('.other-search').click(
								function() {// check if has error
									$('html,body').animate(
											{
												scrollTop : $(
														'.sub-form-search')
														.offset().top - 150
											}, 'fast');
								});

						$('.send-question')
								.click(
										function() {
											var name = $(
													'input[name=name-customer]')
													.val().trim();
											var mobile = $(
													'input[name=mobile-customer]')
													.val().trim();
											var question = $(
													'[name=question-customer]')
													.val().trim();
											if (name == '') {
												$('.message-customer')
														.addClass(
																'message-error')
														.text(
																'Xin hãy nhập tên của bạn!');
												return false;
											}
											if (mobile == '') {
												$('.message-customer')
														.addClass(
																'message-error')
														.text(
																'Xin hãy nhập email của bạn!');
												return false;
											}
											if (!isPhoneNumber(mobile)) {
												$('.message-customer')
														.addClass(
																'message-error')
														.text(
																'Số điện thoại không hợp lệ. Xin hãy thử lại!');
												return false;
											}
											if (question == '') {
												$('.message-customer')
														.addClass(
																'message-error')
														.text(
																'Xin hãy nhập câu hỏi của bạn!');
												return false;
											}
											$('input[name=name-customer]').val(
													'');
											$('input[name=mobile-customer]')
													.val('');
											$('[name=question-customer]').val(
													'');
											var sessionid = querySt('sessionid');
											$
													.ajax('/Ajax/TuVanKhachHang.aspx?name='
															+ name
															+ '&mobile='
															+ mobile
															+ '&sessionid='
															+ sessionid
															+ '&question='
															+ question);
											$('.message-customer')
													.addClass('message-success')
													.text(
															'Câu hỏi của bạn đã được chuyển đi. Xin hãy đợi trong giây lát chúng tôi sẽ liên lạc lại cho bạn!');
											$('.form-customer').hide();
											return false;
										});

						$("a.linkViewFlightDetail")
								.toggle(
										function() {
											// show detail
											var curRow = $(this).parents("tr")
													.eq(0);
											var rowDetail = curRow.next();
											var divDetail = rowDetail
													.find(".flight-detail-content .noidia");
											curRow.addClass('viewed');
											rowDetail.show();
											//rowDetail.find('.v-detail').css({border: '1px solid #ffd18a'});
											if ($.trim(divDetail.html()) == "") {
												var url = $(this)
														.attr("giatri");
												url = ReplaceAll(url, "rec=0",
														"");
												url = SetPara(url, "currency",
														"VND");
												divDetail
														.html("<center><img src='/Images/ajaxloader.gif' /></center>");
												divDetail
														.load(
																url,
																function() {
																	divDetail
																			.find(
																					"a.linkViewAircraftDetail")
																			.click(
																					function() {
																						var thisLink = $(this);
																						var linkAircraftDetail = $(
																								this)
																								.attr(
																										"href");
																						var divDisplay = $(
																								this)
																								.parents(
																										"td")
																								.eq(
																										0)
																								.find(
																										"div.divViewAircraftDetail");

																						if ($
																								.trim(divDisplay
																										.html()) == "") {
																							divDisplay
																									.load(
																											linkAircraftDetail
																													+ " div#main > *",
																											function() {
																												scrollSubmit();
																												divDisplay
																														.find(
																																".closeButton")
																														.click(
																																function() {
																																	divDisplay
																																			.hide();
																																});
																												divDisplay
																														.get(0).style.top = thisLink
																														.offset().top
																														+ 20
																														+ 'px';
																												divDisplay
																														.get(0).style.left = thisLink
																														.offset().left
																														- divDisplay
																																.width()
																														/ 2
																														+ 'px';
																												divDisplay
																														.toggle();
																											});
																						} else {
																							divDisplay
																									.toggle();
																						}

																						return false;
																					});
																});
											}
										},
										function() {
											var curRow = $(this).parents("tr")
													.eq(0);
											var rowDetail = curRow.next();
											curRow.removeClass('viewed');
											rowDetail.hide();
										});
					}

					function SetChangeDate(waytype, sessionId, value, classdate) {
						if (classdate == 'disabled')
							return false;
						switch (waytype.toLowerCase()) {
						case "outbound":
							window.location = "/ve-may-bay/ChangeDate.aspx?SessionId="
									+ sessionId + "&addout=" + value;
							break;
						case "inbound":
							window.location = "/ve-may-bay/ChangeDate.aspx?SessionId="
									+ sessionId + "&addin=" + value;
							break;
						}
						return true;
					}
				</script>
 -->
				<fieldset class="breadcrumb" data-limit="2">
					<span class="crumbs"> <span class="crust"> <a
							href="home.php" class="crumb" rel="up" itemprop="url"><span
								itemprop="title">Trang chủ</span></a> <span class="arrow"><span>&gt;</span></span>
					</span> <span class="crust active"> <a class="crumb" rel="up"
							itemprop="url"><span itemprop="title">Chọn chuyến bay</span></a>
							<span class="arrow"><span>&gt;</span></span>
					</span> <span class="crust deactive"> <a class="crumb" rel="up"
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
				<%
				    AirportDAOImpl airport = new AirportDAOImpl();
													AirplaneDAOImpl airplane = new AirplaneDAOImpl();
													List<Ticket> listTicket = (List)session.getAttribute("listTicket");
				%>
				<div id="flightResultMainContent">
					<div class="box-OutBound">
						<div class="OutBound">
							<h3>
								Chiều đi:<span> <%=airport.getAirportPositionById(session.getAttribute("to").toString())%>
									- <%=airport.getAirportPositionById(session.getAttribute("from").toString())%>
								</span>
							</h3>
							<p>
								Ngày bay:
								<%=session.getAttribute("dateto")%></p>
							<p>&nbsp;</p>
						</div>
						<img
							src="${pageContext.request.contextPath}/Images/Newversion/chidan.png"
							class="huongdan" alt="">
						<div class="clear"></div>
						<div class="content">

							<p
								style="font-size: 20px; color: red; font-weight: bold; padding: 15px 10px 10px;">Giá
								vé chưa bao gồm thuế và phí</p>
							<p></p>
							<script>
								$(document)
										.ready(
												function() {
													$(".toggler")
															.click(
																	function(e) {
																		e
																				.preventDefault();
																		$(
																				'.cat'
																						+ $(
																								this)
																								.attr(
																										'data-prod-cat'))
																				.toggle();
																	});
												});
							</script>
							<%-- <script
								src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
							<script src="${pageContext.request.contextPath}/Scripts/ddtf.js"></script>
							<script>
								$(document).ready(function() {
									// apply filterTable to all tables on this page
									$('#table_format').ddTableFilter();
								});
							</script> --%>
							<form
								action="${pageContext.request.contextPath}/OrderTicketServlet?type=<%=Variables.CHOOSE_TICKET%>"
								method="post">
								<table width="100%" class="mainKq" id="table_format">
									<thead>
										<tr
											style="padding-left: 10px; background-color: #05529B; color: white;">
											<td colspan="2" class="gio" style="padding-left: 10px;">Số
												hiệu</td>
											<td class="gio">Thời gian</td>
											<td class="gio" style="padding-left: 50px;">Giá</td>
											<td class="gio">Xem</td>
											<td class="gio">Chọn</td>
										</tr>
									</thead>
									<tbody>
										<%
										    for (int i = 0; i < listTicket.size(); i++) {
										%>
										<tr class="result-item class-item"
											<%if (i % 2 == 1) {
                            out.print("bgcolor='#EDF5FF'");
                        } else {
                            out.print("bgcolor='#FFFFFF'");
                        }%>>
											<td><img style="height: 22px;"
												src="/Images/Icon/Flight/Airline/AirlineLogo/smBL.gif"
												alt=""></td>
											<td class="sohieu"><%=airplane.getAirplaneNameById(listTicket
                                .get(i).getTicketAirplaneId())%></td>
											<td class="gio"><%=listTicket.get(i).getTicketOriginTime()%>
												- <%=listTicket.get(i).getTicketDestinationTime()%></td>
											<td class="gia"><span><%=listTicket.get(i).getTicketPriceAdult()%></span></td>
											<td><a href="" class="toggler" data-prod-cat="<%=i%>">Xem
													chi tiết </a></td>
											<td><input type="radio"
												value="<%=listTicket.get(i).getTicketId()%>"
												name="rdTicketId" id="Radio1"></td>
										</tr>

										<tr class="cat<%=i%>"
											style="display: none; background: #f2f2f2;">
											<td colspan="7" class="v-detail flight-detail-content">
												<div class="noidia">
													<table width="100%" bgcolor="f5f5f5" class="outlapes ou2">

														<tbody>
															<tr>
																<td width="39%">Từ <b><%=airport.getAirportPositionById(session
                                .getAttribute("to").toString())%></b>, Việt
																	Nam
																</td>
																<td width="35%">Tới <b><%=airport.getAirportPositionById(session
                                .getAttribute("from").toString())%></b>,
																	Việt Nam
																</td>
																<td width="7%" rowspan="3"><img
																	src="/Images/Icon/Flight/Airline/AirlineLogo/smBL.gif"
																	alt=""></td>
																<td width="19%" rowspan="3">JetStar<br> (<b>BL
																		788</b>)
																</td>
															</tr>
															<tr>
																<td>Sân bay <b><%=airport.getAirportNameById(session
                                .getAttribute("to").toString())%></b>
																</td>
																<td>Sân bay <b><%=airport.getAirportNameById(session
                                .getAttribute("from").toString())%></b>
																</td>
															</tr>
															<tr>
																<td><b>22:55</b> 27/10/2015</td>
																<td><b>01:00</b> 28/10/2015</td>
															</tr>




														</tbody>
													</table>
													<div class="line"></div>

													<table width="100%" class="outlapes" bgcolor="#f2f2f2">
														<tbody>
															<tr>
																<td>Loại hành khách</td>
																<td>Số vé</td>
																<td align="left">Giá mỗi vé</td>
																<td>Thuế &amp; Phí</td>
																<td style="display: none;">Giảm giá</td>
																<td>Tổng giá</td>
															</tr>
															<tr>
																<td><b>Người lớn</b></td>
																<td><b>1</b></td>
																<td><b><%=listTicket.get(i).getTicketPriceAdult()%></b></td>
																<td><b>429,000 VNĐ</b></td>
																<td style="display: none;"><b>0 VNĐ</b></td>
																<td><b class="tonggia">1,019,000 VNĐ</b></td>
															</tr>

															<tr class="total-b" style="display: none">
																<td align="center" class="footer"><b>Tổng</b></td>
																<td align="center" class="footer"><b>1</b></td>
																<td align="center" class="footer pb-price"><b>590,000
																		VNĐ</b></td>
																<td align="center" class="footer pb-price"><b>429,000
																		VNĐ</b></td>
																<td align="center" class="footer pb-price"
																	style="display: none;"><b>0 VNĐ</b></td>
																<td align="center" class="footer pb-price"><b
																	class="tonggia">1,019,000 VNĐ</b></td>
															</tr>
														</tbody>
													</table>
													<table bgcolor="#f2f2f2" width="100%">
														<tbody>
															<tr>
																<td colspan="2"><h5>Thông tin hành lý</h5></td>
															</tr>
															<tr>
																<td width="30%">Hành Lý Xách Tay</td>
																<td>7 kg</td>
															</tr>
															<tr>
																<td>Hành lý ký gửi</td>
																<td><b>Vui lòng chọn ở bước sau</b></td>
															</tr>
														</tbody>
													</table>
													<div class="line"></div>
													<table bgcolor="#f2f2f2" width="100%">
														<tbody>
															<tr>
																<td colspan="2"><h5>Điều kiện vé</h5></td>
															</tr>
															<tr>
																<td style="width: 30%" class="name" valign="top">
																	Đổi Ngày Giờ Chuyến Bay</td>
																<td valign="top">Được phép - Thu phí 352,000 VNĐ +
																	Giá vé chênh lệch (nếu có)</td>
															</tr>
															<tr>
																<td style="width: 30%" class="name" valign="top">
																	Nâng Hạng</td>
																<td valign="top">Được phép - Thu phí 352,000 VNĐ +
																	Phí nâng hạng + Giá vé chênh lệch của hạng cao hơn</td>
															</tr>
															<tr>
																<td style="width: 30%" class="name" valign="top">
																	Đổi Hành Trình</td>
																<td valign="top">Không được phép.</td>
															</tr>
															<tr>
																<td style="width: 30%" class="name" valign="top">
																	Đổi Tên Hành Khách</td>
																<td valign="top">Được phép - Thu phí 352,000 VNĐ +
																	Giá vé chênh lệch (nếu có)</td>
															</tr>
															<tr>
																<td style="width: 30%" class="name" valign="top">
																	Thời hạn thay đổi (bao gồm thay đổi tên, ngày/chuyến
																	bay)</td>
																<td valign="top">Trước giờ khởi hành 12 tiếng.</td>
															</tr>
															<tr>
																<td style="width: 30%" class="name" valign="top">
																	Hoàn Vé</td>
																<td valign="top">Không được phép</td>
															</tr>
															<tr class="title" style="display: none;">
																<td colspan="2">Điều kiện chung:</td>
															</tr>
															<tr style="display: none;">
																<td colspan="2">{GeneralRule}</td>
															</tr>
														</tbody>
													</table>
												</div>
											</td>
										</tr>
										<%-- <tr class="cat<%=i%>"
										style="display: none; background: #f2f2f2;">
										<td colspan="6" class="v-detail flight-detail-content1">
											<div class="noidia">heheheheh</div>
										</td>
									</tr> --%>
										<%
										    }
										%>

									</tbody>
								</table>
								<input type="submit"
									name="btnContinue" value="Tiếp Tục"
									id="btnContinue"
									class="tieptuc button-text radius-5px" /> <img
									src="/Images/btn-continue.png" alt="Alternate Text"
									class="img-processing-passenger"
									style="display: none; float: right; margin-top: 50px;" />
							</form>
						</div>
					</div>
					<!-- <div class="result-scroll-down">
						<span style="display: inline;">Kéo xuống để xem thêm kết
							quả</span> <input type="button" id="select-flight"
							name="SelectFlightDomestic" value="Tiếp tục" align="right"
							class="tieptuc">
						   <input type="button" value="Tiếp tục" align="right" class="tieptuc_Scroll">
						<div class="clear"></div>
					</div> -->
				</div>
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
			<!-- end main -->
			<!-- begin subcontent -->
			<%@include file="subcontent.jsp"%>
			<!-- end subcontent -->
			<div class="clear"></div>
		</decorator:content>
	</decorator:decorate>
</body>
</html>