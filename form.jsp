<%@ page contentType="text/html; charset=utf-8" %>
<%
int sw = 0;
String[] arr = {"abc", "def", "ghi", "jkl"};
String input = (String)request.getParameter("input");

for(String n : arr) {
  //out.println(n.equals(input));

  if(input.equals(n)) {
	  out.println(input);


    session.setAttribute("input", input);
    out.println((String)session.getAttribute("input"));

    sw = 1;
    break;
  }

}
if(sw == 0) {
  out.println("일치하는 값이 없습니다.");
}
%>
