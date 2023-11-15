<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="util.FileUtil" %>
<%@ page import="dao.FeedDAO" %>
<%
    request.setCharacterEncoding("utf-8");

    String uid = null, ucon = null, ufname = null;
    byte[] ufile = null;

    ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
    List items = sfu.parseRequest(request); //items라는 리스트객체에 전부 때려박음  1.id 2.content 3.image

    Iterator iter = items.iterator();
    while(iter.hasNext()) { //3번돌아감 1.id 2.content 3.image
        FileItem item = (FileItem) iter.next();
        String name = item.getFieldName();
        if(item.isFormField()) {
//            String value = item.getString(); 
           String value = new String((item.getString()).getBytes("8859_1"),"utf-8");
            if (name.equals("id")) uid = value;
            else if (name.equals("content")) ucon = value;
            
            out.print("id: "+uid+"<br>");
            out.print("ucon: "+ucon+"<br>");
            
        }
        else {
            if (name.equals("image")) {
                ufname = item.getName(); //이미지파일 이름
                ufile = item.get(); //이미지파일내용 기계어
                //getRealPath 절대경로
                //C:\work\project202207010\JSP_2-2\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Hello2\images
                //이미지 파일 경로
                String root = application.getRealPath(java.io.File.separator);
                FileUtil.saveImage(root, ufname, ufile);
            }
        }
    }

    FeedDAO dao = new FeedDAO();
    if (dao.insert(uid, ucon, ufname)) {
        response.sendRedirect("main.jsp");
    }
    else {
        out.print("작성 글의 업로드 중 오류가 발생하였습니다.");
    }
%>
