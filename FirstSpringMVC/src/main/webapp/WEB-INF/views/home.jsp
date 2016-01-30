
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<link rel="stylesheet" href="resources/css/home.css">

<html>
<head>
<title>Home</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
</head>
<body>

	<div id="main">
		<span style="float: right; padding-top: 10px;"> <a href=""
			style="padding-right: 25px; font-style: italic !important; color: red;">Thoát
		</a>
			<p style="float: right; padding-right: 17px; color: red;">Admin</p>
		</span>

		<div id="head">
			<div class="wrapper">
				<div class="main_menu">
					<ul>
						<li><a href="/springmvc/">Trang chủ</a></li>
						<li><a href="">Ưa chuộng</a></li>
						<li><a href="">Hãng sản xuất</a>
							<ul>
								<li><a href="/springmvc/searchBrand?searchBrand=acer">Acer</a></li>
								<li><a href="/springmvc/searchBrand?searchBrand=apple">Apple</a></li>
								<li><a href="/springmvc/searchBrand?searchBrand=asus">Asus</a></li>
								<li><a href="/springmvc/searchBrand?searchBrand=dell">Dell</a></li>
								<li><a href="/springmvc/searchBrand?searchBrand=lenovo">Lenovo</a></li>
								<li><a href="/springmvc/searchBrand?searchBrand=hp">HP</a></li>
								<li><a href="/springmvc/searchBrand?searchBrand=samsung">Samsung</a></li>
							</ul></li>
						<li><a href="">Mức giá</a>
							<ul>
								<li><a href="">Dưới 10 triệu</a></li>
								<li><a href="">Dưới 20 triệu</a></li>
								<li><a href="">Dưới 30 triệu</a></li>
							</ul></li>
						<li><a href="">Thêm sản phẩm</a></li>
						<li><a href="">Tinh chỉnh thông tin</a></li>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<div id="head-link"></div>
		<div id="left"></div>
		<div id="content">

			<c:if test="${not empty BRAND}">
				<c:set var="i" value="1" />
				<table>
					<c:forEach var="brand" items="${BRAND}" varStatus="status">
						<c:if test="${i==1}">
							<tr>
						</c:if>
						<td><div align="center">
								<img id="img" src="resources/image/${brand.imageLink}"
									width="100" height="90" style="padding: auto"><br /> <span
									style="font: 14px/18px arial, sans-serif;color:#288ad8">${brand.name}</span>
								<br />
								<form action="/springmvc/addcompare" method="get">
									<input type="hidden" name="searchName" value="${brand.name}">
									<input type="submit" value="So sánh">
								</form>
							</div> <br /></td>


						<c:set var="i" value="${i+1}" />
						<c:if test="${i==1}">
							<tr>
						</c:if>
						<c:if test="${i==5}">
							<c:set var="i" value="1" />
						</c:if>
					</c:forEach>
				</table>


			</c:if>
			<table>
				<tr>

					<td>
						<div align="center">
							<img id="img"
								src="resources/image/acer-aspire-e5-473-i3-5005u-4g-500g-win10-300-300x300.jpg"
								width="100" height="90" style="padding-left: 20px"><br />
							Srceen: 14 Inch, 1366x768 <br /> CPU: Intel Celeron, 2.16GHz <br />
							RAM: 2GB/ HDD: 500GB <br /> VGA: Intel HD Graphics <br /> OS:
							Windows 10 Home <br /> <input type="button"
								value="▁ ▂ ▄ ▅ ▆ ▇ █ [sản phẩm ưa chuộng] █ ▇ ▆ ▅ ▄ ▂ ▁"> <br />
						</div>
					</td>

				</tr>

			</table>
		</div>
		<div id="right">
			<div id="right-content">
				<figure>
					<h2>SẢN PHẨM</h2>
					<b></b>
					</figure>
				<p
					style="text-align: center; background: #ed8223; font-family: cursive; color: #25258e;">
					SO SÁNH</p>
				<c:if test="${not empty ADDCOMPARE}">
				<div align="center">
					<form action="/springmvc/seecompare" method="get">
						<input id="btnSee" type="submit" value="Xem">
					</form>
				</div>
				</c:if>
				<c:if test="${not empty ADDCOMPARE}">
					<c:set var="i" value="1" />
					<table>
						<c:forEach var="addcompare" items="${ADDCOMPARE}"
							varStatus="status">
							<tr>
								<td><div align="center" style="padding-bottom: 10px">
										<img id="img" src="resources/image/${addcompare.imageLink}"
											width="100" height="90" style="padding: auto"><br /> <span
											style="font: 14px/18px arial, sans-serif;color:#288ad8">${addcompare.name}</span>
										<br />
										<form action="/springmvc/deletecompare" method="get">
											<input type="hidden" name="location" value="${status.index}">
											<input type="submit" value="Xóa">
										</form>
									</div></td>
							<tr>
						</c:forEach>
					</table>


				</c:if>
				
				

			</div>
			<div id="footer"></div>
		</div>
		<div id="part"></div>
	</div>
	
</body>
</html>
