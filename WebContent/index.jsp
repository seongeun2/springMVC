<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<ul>
	<li>��ο� ���� : 
		<ul>
			<li><a href="hello.do2">/hello.do</a>: ������ MVC �ϴ� �� ���� HelloController.hello()</li>
			<li><a href="hello-raw.do2">/hello-raw.do</a>: void ���� Ÿ�� ��Ʈ�ѷ� �޼��� HelloController.hello(HttpServletResponse)</li>
		</ul>
	</li>
	<li>�� :
		<ul>
			<li><a href="event/list">/event/list</a>
			<li><a href="event/list2">/event/list2</a>
		</ul> 
	</li>
	<li>@RequestMapping, @PathVariable:
		<ul>
			<li><a href="member/regist">/member/regist</a>: GET/POST ��, RegistrationController</li>
			<li><a href="members">/members</a>: @PathVariable ��� ���� ��� ���, MemberController.members()</li>
			<li><a href="members/m2">/members/m2</a>: @PathVariable ��, MemberController.memberDetail()</li>
			<li><a href="members/m2/orders/1">/members/m2/orders/1</a>: @PathVariable ��, MemberController.memberOrderDetail()</li>
			<li><a href="members/m2/orders/1a">/members/m2/orders/1a</a>: @PathVariable 400 ���� ��, MemberController.memberOrderDetail()</li>
			<li><a href="files/a123">/files/a123</a>: @PathVariable ����ǥ����, FileController.fileInfo()</li>
			<li><a href="files/a1">/files/a1</a>: @PathVariable ����ǥ���� 404, FileController.fileInfo()</li>
			<li><a href="folders/1/2/3/files">/files/1/2/3/files</a>: @RequestMapping Ant����, FileController.list()</li>
		</ul>
	</li>
</ul>
</body>
</html>