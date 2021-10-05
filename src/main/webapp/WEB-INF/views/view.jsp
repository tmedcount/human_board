<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <script src="http://code.jquery.com/jquery-3.5.0.js"></script>
    <title>게시물 보기</title>
  </head>
  <style>
    table #tblView {
      border-collapse: collapse;
    }
    table #tblView td {
      border: 1px solid dodgerblue;
    }
    table #tblView th {
      color: whitesmoke;
      background-color: black;
      border: 1px solid yellow;
    }
  </style>
  <body>
    <input type="hidden" id="passcode" value="${post.passcode}" />
    <table align="center" valign="top">
      <tr>
        <td colspan="2">
          <table id="tblView">
          	<tr>
          	  <td>게시물 번호</td>
          	  <td id="bbs_id">${post.bbs_id}</td>
          	</tr>
            <tr id="title">
              <td>제목</td>
              <td>${post.title}</td>
            </tr>
            <tr id="content">
              <td>내용</td>
              <td>${post.content}</td>
            </tr>
            <tr id="writer">
              <td>작성자</td>
              <td>${post.writer}</td>
            </tr>
            <tr>
              <td>작성시각</td>
              <td>${post.created}</td>
            </tr>
            <tr>
              <td>수정시각</td>
              <td>${post.updated}</td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td><input type="button" id="btnUpdate" value="수정" /></td>
        <td align="right">
          <input type="button" id="btnDelete" value="삭제" />
        </td>
      </tr>
    </table>
  </body>
  <script>
    $(document)
    .on("click", "#btnUpdate", function() {
    	let bbs_id = $("#bbs_id").text();
    	document.location = "/app/update/"+bbs_id;
    	
    	return false;
    })
    .on("click", "#btnDelete", function() {
    	let bbs_id = $("#bbs_id").text();
    	document.location = "/app/delete/"+bbs_id;
    	
    	return false;
    })
  </script>
<!--   
  //	@RequestMapping("/newinfo")
//	public String newInfo(@RequestParam("realname") String rname,
//						  @RequestParam("loginid") String uid,
//						  @RequestParam("passcode1") String pass1,
//						  @RequestParam("passcode2") String pass2,
//						  Model model) {
//		
//		model.addAttribute("realname", rname);
//		model.addAttribute("loginid", uid);
//		model.addAttribute("passcode1", pass1);
//		model.addAttribute("passcode2", pass2);
//
//		
//		return "newinfo";
//	} -->
</html>
