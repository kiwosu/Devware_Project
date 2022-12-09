<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
                       <!-- 일반결재 디테일입니다 -->
<style>
.aa {
	width: 100px;
}

.tt {
	height: 60px;
}


</style>
  <!-- 헤드 네비게이션 효과 -->
  <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/board/boardWriteForm.css" rel="stylesheet">
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  
</head>
<body id="body">


<div class="container">
	<div class="container-fluid text-center">

		<!-- 게시글 -->
 	<div class="col-lg-12">
 			
              <div class="card" >
                <div class="card-header py-3">
                  <h4><strong>[${ allApv.emp_name }]</strong><strong class="m-0 font-weight-bold text-primary"> ${ allApv.app_title }</strong></h4> 
                  <div align="right"><strong>작성일</strong> <fmt:formatDate	value="${ allApv.app_date }" pattern="yyyy-MM-dd HH:mm:ss" /></div>
                </div>
                
                
                
                <div class="card-body text-center">
                 
                 <!-- 결제칸 -->
                 
                  <div class="text-right">
			<table border="1" style="display: inline-block">

				<tr>
					<td class="tt" rowspan='3'>결재</td>
					<td class="aa">${allApv.position_name }</td>
					
					<td class="aa">${allApv.position_name1 }</td>
					<td class="aa">${allApv.position_name2 }</td>
					<td class="aa">${allApv.position_name3 }</td>
				</tr>



				<tr>

					<td>${ allApv.emp_name }</td>
					<td id="authName1">${ allApv.prg_name1 }</td>
					<td id="authName2">${ allApv.prg_name2 }</td>
					<td id="authName3">${ allApv.prg_name3 }</td>

				</tr>

				<tr>

					<td>제출</td>
					<td id="authName1">${ allApv.prg_num1 }</td>
					<td id="authName2">${ allApv.prg_num2 }</td>
					<td id="authName3">${ allApv.prg_num3 }</td>

				</tr>

			</table>
		</div>
		<!-- 결제칸 끝 -->
                  
                  
                  
                  
                  <hr>
                  <div style="height:450px; overflow:auto;">
                  
                  <table class="table table-hover" border="1">

				<tr>
					<th width="20%">문서상태</th>

				<%-- 	<c:choose>

						<c:when
							test="${ empty allApv.member_name3 || allApv.approval_auth3 == 3 || allApv.approval_auth3 == 4 }">
							<c:choose>
								<c:when
									test="${ empty allApv.member_name2 || allApv.approval_auth2 == 3 || allApv.approval_auth2 == 4}">
									<td>${ allApv.apv_auth_name1 }</td>
								</c:when>
								<c:when
									test="${ allApv.approval_auth2 == 0 && allApv.approval_auth1 == 0 }">
									<td>${ allApv.apv_auth_name1 }</td>
								</c:when>
								<c:when test="${ allApv.approval_auth2 == 4 }">
									<td>${ allApv.apv_auth_name1 }</td>
								</c:when>
								<c:otherwise>
									<td>${ allApv.apv_auth_name2 }</td>
								</c:otherwise>
							</c:choose>
						</c:when>

						<c:when test="${ allApv.approval_auth2 == 0 }">
							<td>${ allApv.apv_auth_name1 }</td>
						</c:when>
						<c:when
							test="${ allApv.approval_auth2 == 3 && allApv.approval_auth1 == 0 }">
							<td>${ allApv.apv_auth_name1 }</td>
						</c:when>
						<c:otherwise>
							<td>${ allApv.apv_auth_name3 }</td>
						</c:otherwise>

					</c:choose> --%>

					<th>문서번호</th>
					<td>${ allApv.emp_num }_${ allApv.app_num }</td>
				</tr>

				<tr>
					<th>기안일자</th>
					<td colspan="3"><fmt:formatDate	value="${ allApv.app_date }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
				</tr>

				<tr>
					<th>결재구분</th>
					<td colspan="3">${ allApv.prg_status }</td>
				</tr>

				<tr>
					<th>기안부서</th>
					<td colspan="3">부서 작성</td>
				</tr>

				<tr>
					<th>기안담당</th>
					<td colspan="3">${ allApv.emp_name }&nbsp;&nbsp;${ allApv.position_name }</td>
				</tr>

				<tr>
					<th>제목</th>
					<td colspan="3">${ allApv.app_title }</td>
				</tr>

				<tr>
					<td colspan="4" height=100px>${ allApv.app_content }</td>
				</tr>

			</table>
			<hr>
			<!-- 결재기록 --> 
			<table class="table table" border="1">

			<%-- <tr>
				<th rowspan="3" width="20%">결재기록</th>
				<td style="height: 30px;"><c:if
						test="${ not empty allApv.approval_auth_date1 }">[<fmt:formatDate
							value="${ allApv.approval_auth_date1 }"
							pattern="yyyy-MM-dd HH:mm:ss" />]&nbsp;&nbsp;${ allApv.department_name1 }&nbsp;${ allApv.member_name1 }&nbsp;${ allApv.rank_name1 }&nbsp;<Strong>${ allApv.apv_auth_name1 }</Strong>
					</c:if></td>
			</tr>
			<tr>
				<td style="height: 30px;"><c:if
						test="${ not empty allApv.approval_auth_date2 }">[<fmt:formatDate
							value="${ allApv.approval_auth_date2 }"
							pattern="yyyy-MM-dd HH:mm:ss" />]&nbsp;&nbsp;${ allApv.department_name2 }&nbsp;${ allApv.member_name2 }&nbsp;${ allApv.rank_name2 }&nbsp;<Strong>${ allApv.apv_auth_name2 }</Strong>
					</c:if></td>
			</tr>
			<tr>
				<td style="height: 30px;"><c:if
						test="${ not empty allApv.approval_auth_date3 }">[<fmt:formatDate
							value="${ allApv.approval_auth_date3 }"
							pattern="yyyy-MM-dd HH:mm:ss" />]&nbsp;&nbsp;${ allApv.department_name3 }&nbsp;${ allApv.member_name3 }&nbsp;${ allApv.rank_name3 }&nbsp;<Strong>${ allApv.apv_auth_name3 }</Strong>
					</c:if></td>
			</tr> --%>

			<c:if test="${ not empty allApv.prg_return }">
				<th>반려사유</th>
				<td>${ allApv.prg_return }</td>
			</c:if>

			<%-- <c:choose>
				<c:when test="${ fn:contains(allApv.approval_cc, 'wantToDel') }">
					<p style="color: red;">작성자의 삭제요청에 따른 삭제 대기 결재입니다.</p>
					<p id="delReason"></p>
				</c:when>
				<c:when test="${ not empty allApv.approval_cc }">
					<th>임시저장 태그</th>
					<td>${ allApv.approval_cc }</td>
				</c:when>
			</c:choose> --%>
		</table>
		
			<div>
			<p align="right" style="font-weight: bold;">(주)그룹웨어</p>
		</div>
		
			</div> 
			<!-- 텍스트바 -->
              <hr>
                  <%-- <div><strong>[첨부파일]</strong>   <a href="${pageContext.request.contextPath }/approval/down?path=${ allApv.approval_filepath }">${ allApv.approval_filename }</a></div> --%><br>
				<div class="container">
					
				<div class="float-left">
		<button class="btn btn-outline-primary"  onclick="history.back()">뒤로</button>
		<input class="btn btn-outline-primary"  type="button" value="인쇄" onclick="window.print()" />

	</div>

<%-- 	<c:choose>
		임시저장 문서
		<c:when test="${ auth == 2 }">
			
				<button class="btn btn-outline-primary"  onclick="reWrite()">재작성</button>
				<button class="btn btn-outline-primary"  onclick="deleteApv()">삭제</button>
			
		</c:when>

		관리자 삭제 버튼
		<c:when test="${ auth == 3 }">
			
				<button class="btn btn-outline-primary"  onclick="deleteApv()">삭제</button>
			
		</c:when>


		삭제 요청 버튼
		<c:when
			test="${ allApv.approval_member_id == sessionScope.member.member_id }">
			<div class="float-right">
				<button class="btn btn-outline-primary"  data-toggle="modal" data-target="#wantToDel">삭제요청</button>
			</div>
		</c:when>
	</c:choose> --%>


	<c:if
		test="${ allApv.emp_num == sessionScope.allApv.emp_num}">
		
			<button class="btn btn-outline-primary"  onclick="reWrite()">재상신</button>
		
	</c:if>
	
	<!-- 반려 사유 -->
	<div class="modal" id="returning">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">반려</h4>
					<button class="btn btn-outline-primary"  type="button" class="close float-right"
						data-dismiss="modal">&times;</button>
				</div>

				<div class="form-group">
					<div class="modal-body">
						<h5>
							<label>반려 사유를 입력해주세요.</label>
						</h5>
						<input class="form-control" name="approval_return" type="text"
							id="approval_return" />
					</div>
					<div class="modal-footer">
						<button class="btn btn-outline-primary"  type="submit" onclick="returning()">제출</button>
					</div>
				
				</div>
                </div>
              </div>
			
            </div>

	<c:if test="${ not empty auth }">
		<div class="float-right" id="authDiv"></div>
	</c:if>
				
		
				
				
				





            </div>

	
	
				</div>
			</div>


	<!-- 삭제요청 코멘트 -->
	<div class="modal" id="wantToDel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">삭제요청</h4>
					<button type="button" class="close float-right"
						data-dismiss="modal">&times;</button>
				</div>

				<div class="form-group">
					<div class="modal-body">
						<h5>
							<label>삭제요청 사유를 입력해주세요.</label>
						</h5>
						<input class="form-control" name="delReason" type="text"
							id="delReason" />
					</div>
					<div class="modal-footer float-right">
						<button class="btn btn-dark float-right" type="submit"
							onclick="funcWantToDel()">요청</button>
					</div>
					<div class="float-left" style="padding: 0px 0px 0px 20px;">
						<label>관리자의 승인 후 삭제됩니다</label><br> <label>최종 삭제의 경우
							시간이 걸릴 수 있습니다.</label>
					</div>
				</div>
			</div>
		</div>
	</div>



		</div>
			
		</div>
                  
                  
                  
            
 </div>   

</body>
</html>