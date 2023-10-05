<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--헤더 파일 넣기 --%>    
<%@ include file="../includes/header.jsp" %>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">상세보기</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            글 내용
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>제목</label>
                                            <input class="form-control" placeholder="제목 입력" name="title" value="${board.title}" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label>작성자</label>
                                            <input class="form-control" placeholder="작성자 입력" name="writer" value="${board.writer}" readonly>
                                        </div>                                        
                                        <div class="form-group">
                                            <label>내용</label>
                                            <textarea class="form-control" rows="5" placeholder="내용 입력" name="content" readonly >${board.content}</textarea>
                                        </div>
                                        <a href="/board/modify?bno=${board.bno}&pageNum=${cri.pageNum}&amout=${cri.amount}"><button type="button" class="btn btn-warning">수정하기</button></a>
                                         <a href="/board/list?pageNum=${cri.pageNum}&amout=${cri.amount}"><button type="button" class="btn btn-success">목록보기</button></a>

 											 <div class="alert alert-danger alert-dismissable">좋아요 누르기 ☞
 											 <a href="hao?bno=${board.bno}"><button type="button"  class="btn btn-danger btn-circle" ><i class="fa fa-heart"></i>
                            </button></a> ☜   현재 좋아요 개수는... ${board.hao}
                            </div>
                                        
                                        
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

<%--footer 파일 넣기 --%>    
<%@ include file="../includes/footer.jsp" %>

<%--댓글처리 자바 스크립트 --%>
<script src="/resources/js/reply.js"></script>
<script>
	
	reply={reply:"아 졸립다",replyer:"밤샌이", bno:24247856  };
	//replyService.add(reply);
	//replyService.getList(2424856, function(a){console.log(a)} );
	//replyService.del(2);
	//replyService.modify(6,reply);
	replyService.get(6,function(a){console.log(a)});
	</script>
</body>

</html>

