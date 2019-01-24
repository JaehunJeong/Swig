<%@ page contentType = "text/plain; charset=utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	String value = request.getParameter("value");
	String parent = request.getParameter("parent");
	
	System.out.println("v:"+value);
	System.out.println("p:"+parent);
	
	if (parent.equals("CA_LSECTION")) {
		if (value.equals("1")) {
%>
	[
		{text: "프로그래밍", value: "1"}
	]
<%
		} else if (value.equals("2")) {
%>
	[
		{text: "디자인 툴", value: "2"}
	]
<%
		} else if (value.equals("3")) {
%>
	[
		{text: "실무역량", value: "3"}
	]
<%
		} else if (value.equals("4")) {
%>
	[
		{text: "뷰티", value: "4"}
	]
<%
		} else if (value.equals("5")) {
%>
	[
		{text: "외국어", value: "5"}
	]
<%
		} else if (value.equals("6")) {
%>
	[
		{text: "음악", value: "6"}
	]
<%
		} else if (value.equals("7")) {
%>
	[
		{text: "라이프스타일", value: "7"}
	]
<%
		} else if (value.equals("8")) {
%>
	[
		{text: "운동", value: "8"}
	]

<%
		}
}
%>