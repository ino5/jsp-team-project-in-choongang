<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.ct:hover {
	-webkit-transform: scale(1.2);
	transition: all 0.2s linear;
}
</style>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/mypage/mypage.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dropDown.css">
<script type="text/javascript">
	function button1_click() {
		document.getElementById("wrap_ap").style.display = "block";
		document.getElementById("wrap_in").style.display = "none";
		document.getElementById("wrap_re").style.display = "none";
		document.getElementById("wrap_my").style.display = "none";

		document.getElementById("bt1").style.display = "block";
		document.getElementById("bt2").style.display = "none";
		document.getElementById("bt3").style.display = "none";
		document.getElementById("bt4").style.display = "none";

		document.getElementById("tap1_set").style.display = "none";
		document.getElementById("tap1_set2").style.display = "block";
		document.getElementById("tap2_set").style.display = "block";
		document.getElementById("tap2_set2").style.display = "none";
		document.getElementById("tap3_set").style.display = "block";
		document.getElementById("tap3_set2").style.display = "none";
		document.getElementById("tap4_set").style.display = "block";
		document.getElementById("tap4_set2").style.display = "none";
	}

	function button2_click() {
		document.getElementById("wrap_ap").style.display = "none";
		document.getElementById("wrap_in").style.display = "block";
		document.getElementById("wrap_re").style.display = "none";
		document.getElementById("wrap_my").style.display = "none";

		document.getElementById("bt1").style.display = "none";
		document.getElementById("bt2").style.display = "block";
		document.getElementById("bt3").style.display = "none";
		document.getElementById("bt4").style.display = "none";

		document.getElementById("tap1_set").style.display = "block";
		document.getElementById("tap1_set2").style.display = "none";
		document.getElementById("tap2_set").style.display = "none";
		document.getElementById("tap2_set2").style.display = "block";
		document.getElementById("tap3_set").style.display = "block";
		document.getElementById("tap3_set2").style.display = "none";
		document.getElementById("tap4_set").style.display = "block";
		document.getElementById("tap4_set2").style.display = "none";
	}
	function button3_click() {
		document.getElementById("wrap_ap").style.display = "none";
		document.getElementById("wrap_in").style.display = "none";
		document.getElementById("wrap_re").style.display = "block";
		document.getElementById("wrap_my").style.display = "none";

		document.getElementById("bt1").style.display = "none";
		document.getElementById("bt2").style.display = "none";
		document.getElementById("bt3").style.display = "block";
		document.getElementById("bt4").style.display = "none";

		document.getElementById("tap1_set").style.display = "block";
		document.getElementById("tap1_set2").style.display = "none";
		document.getElementById("tap2_set").style.display = "block";
		document.getElementById("tap2_set2").style.display = "none";
		document.getElementById("tap3_set").style.display = "none";
		document.getElementById("tap3_set2").style.display = "block";
		document.getElementById("tap4_set").style.display = "block";
		document.getElementById("tap4_set2").style.display = "none";
	}
	function button4_click() {
		document.getElementById("wrap_ap").style.display = "none";
		document.getElementById("wrap_in").style.display = "none";
		document.getElementById("wrap_re").style.display = "none";
		document.getElementById("wrap_my").style.display = "block";

		document.getElementById("bt1").style.display = "none";
		document.getElementById("bt2").style.display = "none";
		document.getElementById("bt3").style.display = "none";
		document.getElementById("bt4").style.display = "block";

		document.getElementById("tap1_set").style.display = "block";
		document.getElementById("tap1_set2").style.display = "none";
		document.getElementById("tap2_set").style.display = "block";
		document.getElementById("tap2_set2").style.display = "none";
		document.getElementById("tap3_set").style.display = "block";
		document.getElementById("tap3_set2").style.display = "none";
		document.getElementById("tap4_set").style.display = "none";
		document.getElementById("tap4_set2").style.display = "block";
	}
</script>
</head>
<body>
	<div id="page">
		<header>
			<div id="re">
				<div id="top1">&nbsp;&nbsp;</div>
				<div id="top2">
					<a href="${pageContext.request.contextPath}/main.do" style="cursor: pointer; text-align: center; font-size: 130px; color: #002266; margin-bottom: 40px; text-decoration: none;">
						<b>???JOB???</b>
					</a>
				</div>
				<div id="top3">
					<div id="top3_1">
						<c:if test="${sessionID == null }">
							<a href="${pageContext.request.contextPath}/join.do" style="color: #002266;">
								<img alt="join.png" src="${pageContext.request.contextPath}/image/join.png" width="50px" height="50px"><br>JOIN
							</a>
						</c:if>
						<c:if test="${sessionID != null }">
							<a href="${pageContext.request.contextPath}/logout.do" style="color: #002266;">
								<img alt="logout.png" src="${pageContext.request.contextPath}/image/logout.png" width="50px" height="50px"><br>LOGOUT
							</a>
						</c:if>

					</div>
					<div id="top3_2">
						<c:if test="${sessionID == null }">
							<a href="${pageContext.request.contextPath}/log/login.jsp" style="color: #002266;">
								<img alt="login.png" src="${pageContext.request.contextPath}/image/login.png" width="50px" height="50px"><br>LOGIN
							</a>
						</c:if>
						<c:if test="${sessionID != null }">
							<a href="${pageContext.request.contextPath}/mypage.do" style="color: #002266;">
								<img alt="my.png" src="${pageContext.request.contextPath}/image/my.png" width="50px" height="50px"><br>MY
							</a>
						</c:if>
					</div>
				</div>
			</div>
			<div id="nav">
				<nav>
					<ul id="main-menu">
						<li>
							<a href="${pageContext.request.contextPath}/rclist.do">????????????</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/searchHire.do">????????????</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/communityList.do">????????????</a>
							<ul id="sub-menu">
								<li id="asideMenuCommunity">
									<a href="${pageContext.request.contextPath}/communityList.do">????????????</a>
								</li>
								<li id="asideMenuWrite">
									<a href="${pageContext.request.contextPath}/communityWriteForm.do">??? ????????????</a>
								</li>
								<li id="asideMenuInfo">
									<a href="${pageContext.request.contextPath}/communityList.do?bd_code=1&pageNum=1">????????????</a>
								</li>
								<li id="asideMenuToktok">
									<a href="${pageContext.request.contextPath}/communityList.do?bd_code=2&pageNum=1">????????????</a>
								</li>
								<!-- 							<li id="asideMenuMyTok"><a href="#">??? ?????? ??????</a></li> -->
							</ul>
						</li>
							<c:if test="${ sessionID == 'admin' || sessionM_TF == '3' }">
								<li>
									<a href="${pageContext.request.contextPath}/adminMain.do" style="padding: 20px 50px;">??????????????????</a>
								</li>
							</c:if>
							<c:if test="${sessionM_TF == '0' }">
								<li>
									<a href="${pageContext.request.contextPath}/hireList.do" style="padding: 20px 50px;">????????????</a>
									<ul id="sub-menu">
									<li id="asideMenuMyTok">
											<a href="${pageContext.request.contextPath}/hireList.do" style="padding: 20px 50px;">????????????</a>
									</li>
										<li id="asideMenuCommunity">
											<a href="${pageContext.request.contextPath}/recruit/hireAdd.jsp">????????????</a>
									</li>
									</ul>
								</li>
						</c:if>
						<c:if test="${sessionM_TF == '1' }">
							<li>
								<a href="${pageContext.request.contextPath}/mypage.do">???????????????</a>
								<ul id="sub-menu">
									<li id="asideMenuMyTok">
										<a href="${pageContext.request.contextPath}/mypage.do">???????????????</a>
									</li>
									<li id="asideMenuCommunity">
										<a href="${pageContext.request.contextPath}/mypageApply.do">????????????</a>
									</li>
									<li id="asideMenuWrite">
										<a href="${pageContext.request.contextPath}/preferList.do">????????????</a>
									</li>
									<li id="asideMenuInfo">
										<a href="${pageContext.request.contextPath}/mypageSelect.do">???????????? ??????</a>
									</li>
									<li id="asideMenuToktok">
										<a href="${pageContext.request.contextPath}/resumeList.do">????????? ??????</a>
									</li>
									<li id="asideMenuMyTok">
										<a href="${pageContext.request.contextPath}/introduceList.do">??????????????? ??????</a>
									</li>
								</ul> 
							</li>
						</c:if>
						<c:if test="${sessionID != null }">
							<li>
								<a href="${pageContext.request.contextPath}/logout.do">????????????</a>
							</li>
						</c:if>
						<c:if test="${sessionID == null }">
							<li>
								<a href="${pageContext.request.contextPath}/log/login.jsp">?????????</a>
							</li>
						</c:if>
					</ul>
				</nav>
			</div>
		</header>
		<script type="text/javascript">
			function getInnerHTML() {

				const element = document.getElementById('ap');

			}
		</script>
		<div id="container">
			<div class="title">?????? ?????????, ${member.m_name} !</div>
			<div class="set">
				<div id="tap1_set">
					<div>
						<button type="button" id="tap1" onclick="button1_click()">????????????</button>
					</div>
					<div id="count5">${applyCnt}</div>
				</div>
				<div id="tap1_set2">
					<div>
						<button type="button" id="tap1_1" onclick="button1_click()">????????????</button>
					</div>
					<div id="count5_1">${applyCnt}</div>
				</div>
				<div id="tap2_set">
					<div>
						<button type="button" id="tap2" onclick="button2_click()">????????????</button>
					</div>
					<div id="count6">${interCnt}</div>
				</div>
				<div id="tap2_set2">
					<div>
						<button type="button" id="tap2_1" onclick="button2_click()">????????????</button>
					</div>
					<div id="count6_1">${interCnt}</div>
				</div>
				<div id="tap3_set">
					<div>
						<button type="button" id="tap3" onclick="button3_click()">?????????</button>
					</div>
					<div id="count7">${resumeCnt2}</div>
				</div>
				<div id="tap3_set2">
					<div>
						<button type="button" id="tap3_1" onclick="button3_click()">?????????</button>
					</div>
					<div id="count7_1">${resumeCnt2}</div>
				</div>
				<div id="tap4_set">
					<div>
						<button type="button" id="tap4" onclick="button4_click()">??????????????????</button>
					</div>
					<div id="count8">${recruitCnt}</div>
				</div>
				<div id="tap4_set2">
					<div>
						<button type="button" id="tap4_1" onclick="button4_click()">??????????????????</button>
					</div>
					<div id="count8_1">${recruitCnt}</div>
				</div>
			</div>

			<!-- 			<table class="tab"> -->
			<!-- 				<tr class="wrap"> -->
			<!-- 					<td id="tap1"> -->
			<%-- 						<div id="div1"><button type="button" class="tap1" onclick="button1_click()">????????????</button></div><div id="count">${applyCnt}</div> --%>
			<!--     				</td> -->
			<!--     				<td id="tap2"> -->
			<%--     					<button type="button" class="tap2" onclick="button2_click()">????????????</button><div id="count2">${interCnt}</div> --%>
			<!--     				</td>	 -->
			<!-- 					<td id="tap3"> -->
			<%-- 						<button type="button" class="tap3" onclick="button3_click()">?????????</button><div id="count3">${resumeCnt2}</div> --%>
			<!-- 					</td> -->
			<!-- 					<td id="tap4"> -->
			<%-- 						<button type="button" class="tap4" onclick="button4_click()">??????????????????</button><div id="count4">${recruitCnt}</div> --%>
			<!-- 					</td> -->
			<!-- 				</tr> -->
			<!-- 			</table> -->


			<div id="wrap">

				<div id="wrap_ap">
					<c:forEach var="i" begin="0" end="3">
						<a href="#" target="_blank"
							onclick="window.open('${pageContext.request.contextPath}/popUpHireUnion.do?rc_num=${list[i].rc_num}','name','resizable=no width=1050 height=1200'); return false">
							<div id="ap">
								<br>${list[i].rc_name}<br>${list[i].rc_title}<br>${list[i].a_date}</div>
						</a>
					</c:forEach>
				</div>
				<div id="wrap_in">
					<c:forEach var="i" begin="0" end="3">
						<a href="#" target="_blank"
							onclick="window.open('${pageContext.request.contextPath}/popUpHireUnion.do?rc_num=${list2[i].rc_num}','name','resizable=no width=1050 height=1200'); return false">
							<div id="in">
								<br>${list2[i].rc_name}<br>${list2[i].rc_title}<br>${list2[i].rc_salary }</div>
						</a>
					</c:forEach>
				</div>
				<div id="wrap_re">
					<c:forEach var="i" begin="0" end="3">
						<a
							href="${pageContext.request.contextPath}/resumeSelect2.do?r_num=${list3[i].r_num}">
							<div id="re">
								<br>
								<div class="re"></div>${list3[i].r_date}<br>${list3[i].r_title}</div>
						</a>
					</c:forEach>
				</div>
				<div id="wrap_my">
					<c:forEach var="i" begin="0" end="3">
						<a href="#" target="_blank"
							onclick="window.open('${pageContext.request.contextPath}/popUpHireUnion.do?rc_num=${rclist[i].rc_num}','name','resizable=no width=1050 height=1200'); return false">
							<div id="my">
								<br>${rclist[i].rc_name}<br>${rclist[i].rc_title}<br>${rclist[i].rc_salary}</div>
						</a>
					</c:forEach>
				</div>
			</div>
			<div class="h1">
				<div id="next">&nbsp;NEXT&nbsp;</div>
				<div id="bt1">???????????? ??? ????????????, ?????????!</div>
				<div id="bt2">????????? ?????????, ?????????!</div>
				<div id="bt3">???????????? ????????????, ??? ??? ??????!</div>
				<div id="bt4">${member.m_name}???,????????? ????????? :)</div>
			</div>
			<br>
			<br>
			<br>
			<hr>
			<div id="res">
				<c:forEach items="${rclist}" var="rdt">
					<section class="ct">
						<div id="double">
							<a href="#" target="_blank"
								onclick="window.open('${pageContext.request.contextPath}/popUpHireUnion.do?rc_num=${rdt.rc_num}','name','resizable=no width=1050 height=1200');
					    return false">
								<img src="${pageContext.request.contextPath}/${rdt.rc_content}"
								style="width: 200px; height: 150px">
							</a>
							<div id="text">${rdt.rc_title}</div>
						</div>
					</section>
				</c:forEach>
			</div>
		</div>
		<footer> Copyright & copy </footer>
	</div>
</body>
</html>