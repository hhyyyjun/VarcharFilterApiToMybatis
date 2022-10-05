<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/filterSearch.css" />
<script src="https://code.jquery.com/jquery-3.6.1.min.js"
	integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
	crossorigin="anonymous"></script>
</head>
<body>
	<div>
		<form action="filter.do" method="get">
			<select name="checksort" id="sort">
				<option <c:if test="${sort == '최신순'}">selected='selected'</c:if>>최신순</option>
				<option <c:if test="${sort == '제목순정렬'}">selected='selected'</c:if>>제목순정렬</option>
				<option <c:if test="${sort == '가격순정렬'}">selected='selected'</c:if>>가격순정렬</option>
				<option <c:if test="${sort == '주행거리순'}">selected='selected'</c:if>>주행거리순</option>
			</select>
			<hr>
			전체<input type="checkbox" name="fuel" value="전체"
				<c:if test="${fList.contains('전체')}">checked='checked'</c:if> /> 전기<input
				type="checkbox" name="fuel" value="전기"
				<c:if test="${fList.contains('전기')}">checked='checked'</c:if> />
			가솔린<input type="checkbox" name="fuel" value="가솔린"
				<c:if test="${fList.contains('가솔린')}">checked='checked'</c:if> />
			디젤<input type="checkbox" name="fuel" value="디젤"
				<c:if test="${fList.contains('디젤')}">checked='checked'</c:if> />
			<hr>
			서울<input type="checkbox" name="city" value="서울"
				<c:if test="${cList.contains('서울')}">checked='checked'</c:if> /> 경기<input
				type="checkbox" name="city" value="경기"
				<c:if test="${cList.contains('경기')}">checked='checked'</c:if> /> 인천<input
				type="checkbox" name="city" value="인천"
				<c:if test="${cList.contains('인천')}">checked='checked'</c:if> /> 대전<input
				type="checkbox" name="city" value="대전"
				<c:if test="${cList.contains('대전')}">checked='checked'</c:if> /> 대구<input
				type="checkbox" name="city" value="대구"
				<c:if test="${cList.contains('대구')}">checked='checked'</c:if> /> 울산<input
				type="checkbox" name="city" value="울산"
				<c:if test="${cList.contains('울산')}">checked='checked'</c:if> /> 부산<input
				type="checkbox" name="city" value="부산"
				<c:if test="${cList.contains('부산')}">checked='checked'</c:if> /> 광주<input
				type="checkbox" name="city" value="광주"
				<c:if test="${cList.contains('광주')}">checked='checked'</c:if> /> 강원<input
				type="checkbox" name="city" value="강원"
				<c:if test="${cList.contains('강원')}">checked='checked'</c:if> /> 충북<input
				type="checkbox" name="city" value="충북"
				<c:if test="${cList.contains('충북')}">checked='checked'</c:if> /> 충남<input
				type="checkbox" name="city" value="충남"
				<c:if test="${cList.contains('충남')}">checked='checked'</c:if> /> 경북<input
				type="checkbox" name="city" value="경북"
				<c:if test="${cList.contains('경북')}">checked='checked'</c:if> /> 경남<input
				type="checkbox" name="city" value="경남"
				<c:if test="${cList.contains('경남')}">checked='checked'</c:if> /> 전북<input
				type="checkbox" name="city" value="전북"
				<c:if test="${cList.contains('전북')}">checked='checked'</c:if> /> 전남<input
				type="checkbox" name="city" value="전남"
				<c:if test="${cList.contains('전남')}">checked='checked'</c:if> /> 제주<input
				type="checkbox" name="city" value="제주"
				<c:if test="${cList.contains('제주')}">checked='checked'</c:if> /> 세종<input
				type="checkbox" name="city" value="세종"
				<c:if test="${cList.contains('세종')}">checked='checked'</c:if> />
			<hr>
			가격 <select class="minSelect" name="price_min" id="pmin">
				<option <c:if test="${pmin == 0}">selected='selected'</c:if>>0</option>
				<option <c:if test="${pmin == 1000}">selected='selected'</c:if>>1000</option>
				<option <c:if test="${pmin == 2000}">selected='selected'</c:if>>2000</option>
				<option <c:if test="${pmin == 3000}">selected='selected'</c:if>>3000</option>
				<option <c:if test="${pmin == 4000}">selected='selected'</c:if>>4000</option>
				<option <c:if test="${pmin == 5000}">selected='selected'</c:if>>5000</option>
				<option <c:if test="${pmin == 6000}">selected='selected'</c:if>>6000</option>
				<option <c:if test="${pmin == 7000}">selected='selected'</c:if>>7000</option>
				<option <c:if test="${pmin == 8000}">selected='selected'</c:if>>8000</option>
				<option <c:if test="${pmin == 9000}">selected='selected'</c:if>>9000</option>
				<option <c:if test="${pmin == 10000}">selected='selected'</c:if>>10000</option>
				<option <c:if test="${pmin == 11000}">selected='selected'</c:if>>11000</option>
				<option <c:if test="${pmin == 12000}">selected='selected'</c:if>>12000</option>
				<option <c:if test="${pmin == 13000}">selected='selected'</c:if>>13000</option>
				<option <c:if test="${pmin == 14000}">selected='selected'</c:if>>14000</option>
				<option <c:if test="${pmin == 15000}">selected='selected'</c:if>>15000</option>
			</select> <select class="maxSelect" name="price_max" id="pmax">
				<option value="2147483647">전체</option>
				<option <c:if test="${pmax == 1000}">selected='selected'</c:if>>1000</option>
				<option <c:if test="${pmax == 2000}">selected='selected'</c:if>>2000</option>
				<option <c:if test="${pmax == 3000}">selected='selected'</c:if>>3000</option>
				<option <c:if test="${pmax == 4000}">selected='selected'</c:if>>4000</option>
				<option <c:if test="${pmax == 5000}">selected='selected'</c:if>>5000</option>
				<option <c:if test="${pmax == 6000}">selected='selected'</c:if>>6000</option>
				<option <c:if test="${pmax == 7000}">selected='selected'</c:if>>7000</option>
				<option <c:if test="${pmax == 8000}">selected='selected'</c:if>>8000</option>
				<option <c:if test="${pmax == 9000}">selected='selected'</c:if>>9000</option>
				<option <c:if test="${pmax == 10000}">selected='selected'</c:if>>10000</option>
				<option <c:if test="${pmax == 11000}">selected='selected'</c:if>>11000</option>
				<option <c:if test="${pmax == 12000}">selected='selected'</c:if>>12000</option>
				<option <c:if test="${pmax == 13000}">selected='selected'</c:if>>13000</option>
				<option <c:if test="${pmax == 14000}">selected='selected'</c:if>>14000</option>
				<option <c:if test="${pmax == 15000}">selected='selected'</c:if>>15000</option>
			</select>
			<hr>
			연식 <select class="minSelect" name="year_min" id="ymin">
				<option <c:if test="${ymin == 2000}">selected='selected'</c:if>>2000</option>
				<option <c:if test="${ymin == 2001}">selected='selected'</c:if>>2001</option>
				<option <c:if test="${ymin == 2002}">selected='selected'</c:if>>2002</option>
				<option <c:if test="${ymin == 2003}">selected='selected'</c:if>>2003</option>
				<option <c:if test="${ymin == 2004}">selected='selected'</c:if>>2004</option>
				<option <c:if test="${ymin == 2005}">selected='selected'</c:if>>2005</option>
				<option <c:if test="${ymin == 2006}">selected='selected'</c:if>>2006</option>
				<option <c:if test="${ymin == 2007}">selected='selected'</c:if>>2007</option>
				<option <c:if test="${ymin == 2008}">selected='selected'</c:if>>2008</option>
				<option <c:if test="${ymin == 2009}">selected='selected'</c:if>>2009</option>
				<option <c:if test="${ymin == 2010}">selected='selected'</c:if>>2010</option>
				<option <c:if test="${ymin == 2011}">selected='selected'</c:if>>2011</option>
				<option <c:if test="${ymin == 2012}">selected='selected'</c:if>>2012</option>
				<option <c:if test="${ymin == 2013}">selected='selected'</c:if>>2013</option>
				<option <c:if test="${ymin == 2014}">selected='selected'</c:if>>2014</option>
				<option <c:if test="${ymin == 2015}">selected='selected'</c:if>>2015</option>
				<option <c:if test="${ymin == 2016}">selected='selected'</c:if>>2016</option>
				<option <c:if test="${ymin == 2017}">selected='selected'</c:if>>2017</option>
				<option <c:if test="${ymin == 2018}">selected='selected'</c:if>>2018</option>
				<option <c:if test="${ymin == 2019}">selected='selected'</c:if>>2019</option>
				<option <c:if test="${ymin == 2020}">selected='selected'</c:if>>2020</option>
				<option <c:if test="${ymin == 2021}">selected='selected'</c:if>>2021</option>
				<option <c:if test="${ymin == 2022}">selected='selected'</c:if>>2022</option>
			</select> <select class="maxSelect" name="year_max" id="ymax">
				<option value="2023">전체</option>
				<option <c:if test="${ymax == 2001}">selected='selected'</c:if>>2001</option>
				<option <c:if test="${ymax == 2002}">selected='selected'</c:if>>2002</option>
				<option <c:if test="${ymax == 2003}">selected='selected'</c:if>>2003</option>
				<option <c:if test="${ymax == 2004}">selected='selected'</c:if>>2004</option>
				<option <c:if test="${ymax == 2005}">selected='selected'</c:if>>2005</option>
				<option <c:if test="${ymax == 2006}">selected='selected'</c:if>>2006</option>
				<option <c:if test="${ymax == 2007}">selected='selected'</c:if>>2007</option>
				<option <c:if test="${ymax == 2008}">selected='selected'</c:if>>2008</option>
				<option <c:if test="${ymax == 2009}">selected='selected'</c:if>>2009</option>
				<option <c:if test="${ymax == 2010}">selected='selected'</c:if>>2010</option>
				<option <c:if test="${ymax == 2011}">selected='selected'</c:if>>2011</option>
				<option <c:if test="${ymax == 2012}">selected='selected'</c:if>>2012</option>
				<option <c:if test="${ymax == 2013}">selected='selected'</c:if>>2013</option>
				<option <c:if test="${ymax == 2014}">selected='selected'</c:if>>2014</option>
				<option <c:if test="${ymax == 2015}">selected='selected'</c:if>>2015</option>
				<option <c:if test="${ymax == 2016}">selected='selected'</c:if>>2016</option>
				<option <c:if test="${ymax == 2017}">selected='selected'</c:if>>2017</option>
				<option <c:if test="${ymax == 2018}">selected='selected'</c:if>>2018</option>
				<option <c:if test="${ymax == 2019}">selected='selected'</c:if>>2019</option>
				<option <c:if test="${ymax == 2020}">selected='selected'</c:if>>2020</option>
				<option <c:if test="${ymax == 2021}">selected='selected'</c:if>>2021</option>
				<option <c:if test="${ymax == 2022}">selected='selected'</c:if>>2022</option>
			</select>
			<!--주행거리 검색-->
			<div class="filterBox hideFilter" style="max-height : 100px;">
				<div class="filterBoxTitle">
					<label>주행거리</label> <i class="openArrow"><img
						src="images/down_arrow.png" alt="down arrow" /></i>
				</div>

				<div class="slideContainer">
					<div>
						<div class="col-sm-12">
							<div id="slider-range"></div>
						</div>
					</div>
					<div class="slider-labels">
						<div>
							<strong>최소 :&nbsp;&nbsp;</strong> <span id="slider-range-value1"></span>&nbsp;&nbsp;km
						</div>
						<div>
							<strong>최대 :&nbsp;&nbsp;</strong> <span id="slider-range-value2"></span>&nbsp;&nbsp;km
						</div>
					</div>
					<div>
						<div class="col-sm-12">
							<input type="hidden" name="km_min" value="" /> <input
								type="hidden" name="km_max" value="" />
						</div>
					</div>
				</div>
			</div>
			<hr />
			<input id="submitClick" type="submit" value="검색" /> <input
				type="button" id="intializeBtn" value="초기화" />
		</form>
	</div>
	<hr />
	<div id="result">
		<c:forEach var="f" items="${datas}">
			<h3>
				[${f.ctitle}]<br>${f.ckm}km&nbsp;|&nbsp;${f.cprice}만원|&nbsp;연료
				: ${f.cfuel}<br> 지역 : ${f.ccity}&nbsp;|&nbsp;연식 : ${f.cyear}
			</h3>
		</c:forEach>
	</div>
	${kmin} | ${kmax}
	<!-- 스크립트에 직접 id명을 선언하고 컨트롤러를 통해 저장한 값을 js로 전달  -->
	<script id="Slider" kmin="${kmin}" kmax="${kmax}"
		src="js/rangeSlider.js"></script>
	<script src="js/selectOption.js"></script>
	<script src="js/initialize.js"></script>

	<script>
		let range1 = 1;
		let range2 = 12;
		$(document)
				.scroll(
						function() {
							var maxHeight = $(document).height();
							var currentScroll = $(window).scrollTop()
									+ $(window).height();
							if (maxHeight <= currentScroll + 10) {
								console.log("여기 지나침???");
								range1 += 12;
								range2 += 12;
								console.log("range1 = "+range1+"/ range2 = "+range2);
								const cityCheckbox = document.querySelectorAll("input[name='city']");
								const fuelCheckbox = document
										.querySelectorAll("input[name='fuel']");
								let cityList = [];
								let fuelList = [];
								// 지역
								for (let i = 0; i < cityCheckbox.length; i++) {
									if (cityCheckbox.checked) {
										cityList.push(cityCheckbox.value);
									}
								}
								// 연료
								for (let i = 0; i < fuelCheckbox.length; i++) {
									if (fuelCheckbox.checked) {
										fuelList.push(fuelCheckbox.value);
									}
								}
								// 정렬
								const sort = document.getElementById("sort").selectedIndex.value;
								// 가격
								const pmin = document.getElementById("pmin").selectedIndex.value;
								const pmax = document.getElementById("pmax").selectedIndex.value;
								// 연식
								const ymin = document.getElementById("ymin").selectedIndex.value;
								const ymax = document.getElementById("ymax").selectedIndex.value;
								// 주행거리
								const kmin = document
										.querySelector("input[name='km_min']").value;
								const kmax = document
										.querySelector("input[name='km_max']").value;

								$
										.ajax({
											type : 'GET',
											url : '${pageContext.request.contextPath}/showMore.do', //프로젝트 이름까지 들어가서 정확하게 알 수 잇음
											//?sort='+sort+"&fuel="+fuel+"&city="+city+"&pmin="+pmin+"&pmax="+pmax+"&ymin="+ymin+"&ymax="+ymax+"&min-value="+min-value+"&max-value="+max-value
											//DB에게 물어볼 예정 mid라는 값이 DB에 이미 있어? -> DAO
											//dao를 통해 뷰로 가야함 > C 작업 '서블릿'

											data : {
												cityList : cityList,
												fuelList : fuelList,
												sort : sort,
												pmin : pmin,
												pmax : pmax,
												ymin : ymin,
												ymax : ymax,
												km_min : kmin,
												km_max : kmax,
												range1 : range1,
												range2 : range2,
											},
											success : function(dataList) {
												//js가 동적 타이핑을 지원하기 때문에
												console.log("로그1 [" + dataList
														+ "]");
												if (dataList.length == 0 ) {
													return;
												} else {
													let NodeList = "";
													for(let i=0;i < dataList.length;i++){
													let newNode = "<h3>["+dataList[i].ctitle+"]<br>"+dataList[i].ckm+"km&nbsp;|&nbsp;"+dataList[i].cprice+"만원|&nbsp;연료: "+dataList[i].cfuel+"<br> 지역 : "+dataList[i].ccity+"&nbsp;|&nbsp;연식 : "+dataList[i].cyear+"</h3>";
													NodeList += newNode;
													}
													$(NodeList).appendTo($("#result"));
												}
											},
											error : function(request, status,
													error) {
												console.log("상태코드 : "
														+ request.status);
												console.log("오류메세지 : "
														+ request.responseText);
												console.log("에러 : " + error);
											}
										});

							}
						});
	</script>
</body>
</html>
