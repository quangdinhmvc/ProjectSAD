<%@ page language="java" contentType="text/html;  charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="resources/css/home.css">
<link rel="stylesheet" href="resources/css/compare.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<script language="JavaScript" type="text/javascript" src="resources/js/compare.js"></script>
<meta http-equiv="Content-Type" content="text/html;  charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="resources/js/compare.js"></script>

	<div id="main">


		<div id="head">
			<div class="wrapper">
				<div class="main_menu">
					<ul>
						<li><a href="">SO SÁNH</a></li>

					</ul>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<div id="head-link"></div>
		<div id="left"></div>
		<div id="content">
			<c:if test="${not empty ADDCOMPARE}">
				<table id="table-compare">

					<tr>
						<td id="compare" width="30%">Tên sản phẩm</td>
						<c:forEach var="addcompare" items="${ADDCOMPARE}"
							varStatus="status">
							<td style="background: orange;"><div align="center">${addcompare.name}</div></td>
						</c:forEach>

					</tr>
					<tr>
						<td id="image-compare">Hình ảnh</td>
						<c:forEach var="addcompare" items="${ADDCOMPARE}"
							varStatus="status">
							<td>
								<div align="center">
									<img id="img" src="resources/image/${addcompare.imageLink}"
										width="100" height="90" style="padding: auto">
								</div>
							</td>
						</c:forEach>

					</tr>

					<tr>
						<td id="compare">Card màn hình</td>
						<c:forEach var="addcompare" items="${ADDCOMPARE}"
							varStatus="status">
							<td><div align="center">${addcompare.vga}</div></td>
						</c:forEach>

					</tr>
					<tr>
						<td id="compare">Ram</td>
						<c:forEach var="addcompare" items="${ADDCOMPARE}"
							varStatus="status">
							<td><div align="center">${addcompare.ram}</div></td>
						</c:forEach>

					</tr>
					<tr>
						<td id="compare">HDD</td>
						<c:forEach var="addcompare" items="${ADDCOMPARE}"
							varStatus="status">
							<td><div align="center">${addcompare.hdd}</div></td>
						</c:forEach>

					</tr>
					<tr>
						<td id="compare">Chống nước</td>
						<c:forEach var="addcompare" items="${ADDCOMPARE}"
							varStatus="status">
							<td><div align="center">
									<c:if test="${addcompare.nowater==false}">
							không có
							</c:if>
									<c:if test="${addcompare.nowater==true}">
							Có chống nước
							</c:if>
								</div></td>
						</c:forEach>

					</tr>
					<tr>
						<td id="compare">Cảm ứng</td>
						<c:forEach var="addcompare" items="${ADDCOMPARE}"
							varStatus="status">
							<td><div align="center">
									<c:if test="${addcompare.touch==false}">
							không có
							</c:if>
									<c:if test="${addcompare.touch==true}">
							Có cảm ứng
							</c:if>
								</div></td>
						</c:forEach>

					</tr>
					<tr>
						<td id="compare">Giá</td>
						<c:forEach var="addcompare" items="${ADDCOMPARE}"
							varStatus="status">
							<td><div align="center">${addcompare.price}</div></td>
						</c:forEach>

					</tr>
					<tr>
						<td id="compare">

							<table id="evalute">
								<tr>
									<td id="evalute1" style="background: #ff8080;">Đánh giá</td>
									<td><table >
											<tr>
												<td >Tạm được
												</td>
												<td style="background: red">
												</td>
											</tr>
											<tr>
												<td>Khá
												</td>
												<td style="background: yellow;">
												</td>
											</tr>
											<tr>
												<td>Tốt
												</td>
												<td style="background: blue">
												</td>
											</tr>
											<tr>
												<td>Rất tốt
												</td>
												<td style="background: green">
												</td>
											</tr>
										</table></td>
								</tr>
							</table>
						</td>
						<c:forEach var="addcompare" items="${ADDCOMPARE}"
							varStatus="status">
							<td>
								<table id="evalute">
									<tr>
										<td>
											<div id="content-evalute"
												style="background:red;height:5px;width:${addcompare.onestart/addcompare.sumstart*90}%"></div>
										</td>
									</tr>
									<tr>
										<td>
											<div id="content-evalute"
												style="background:yellow;height:5px;width:${addcompare.twostart/addcompare.sumstart*90}%"></div>
										</td>
									</tr>
									<tr>
										<td>
											<div id="content-evalute"
												style="background: blue;height:5px;width:${addcompare.threestart/addcompare.sumstart*90}%"></div>
										</td>
									</tr>
									<tr>
										<td>
											<div id="content-evalute"
												style="background: #009900;height:5px;width:${addcompare.fourstart/addcompare.sumstart*90}%"></div>
										</td>
									</tr>
								</table>

							</td>
						</c:forEach>

					</tr>
				</table>
				<div  style="margin-top:60px;width: 70%;background: #c0c0c0"  >Bình luận</div>
				<table id="comment" style="margin-top:10px; width: 70%;height: 50px">
				<tr><td><div style="height: 50px">
				<div id="comparename">sad</div>
				<div id="comparedetail">vvf</div>
				</div></td></tr>
				<tr><td>asd	</td></tr>
				<tr><td>asd	</td></tr>
				<tr><td>asd	</td></tr>
				<tr><td>asd	</td></tr>
				<tr><td>asd	</td></tr>
				<tr><td></td></tr>
				</table>
				<div  style="margin-top:20px;width: 70%;height: 80px"  ><textarea disabled="disabled"   maxlength="256" id="txtcomment" name="txtComment"  cols="40" rows="5"></textarea></div>
				<div  style="margin-top:20px;width: 70%;background: #c0c0c0"  ><input style="float:right;" type="submit" value="Bình luận"/></div>
			</c:if>
		</div>
		<div id="right"></div>
		<div id="part"></div>
	</div>
</body>
</html>