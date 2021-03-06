<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.LinkedHashMap"%> 
<%@page import="java.util.Map"%>  
<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>  
<%@page import="java.util.List"%>
<%@page import="org.json.simple.JSONValue"%>
<%@ page import="java.sql.*" %>

<%
response.setHeader("Access-Control-Allow-Origin", "*");
ResultSet rset = null;
PreparedStatement stmt=null;
String url2 = "jdbc:sqlserver://i7zjbwchx7.database.windows.net:1433;database=EnjoyLife";
String query=null;	
String cate1no = request.getParameter("cate1no");
String cate2no = request.getParameter("cate2no");
String countyno = request.getParameter("countyno");
String distno = request.getParameter("distno");
int crossdistno=Integer.parseInt(countyno)/10;
String cross=crossdistno+"";
	try {
		DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
		Connection conn = DriverManager.getConnection(url2, "enjoylife", "P@ssw0rd");
		//選擇全類型 全台灣
		if((cate2no.equalsIgnoreCase("10")||cate2no.equalsIgnoreCase("200"))
				&&countyno.equalsIgnoreCase("10")){
			query="select * from attrac where cate1no=? and show=1";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, cate1no);
		//選擇全類型 跨區
		}else if((cate2no.equalsIgnoreCase("10")||cate2no.equalsIgnoreCase("200"))
				&&distno.equalsIgnoreCase(cross)){
			query="select * from attrac where cate1no=? and countyno=? and show=1";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, cate1no);
			stmt.setString(2, countyno);
		//選擇全台灣
		}else if(countyno.equalsIgnoreCase("10")){
			query="select * from attrac where cate1no=? and cate2no = ? and show=1";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, cate1no);
			stmt.setString(2, cate2no);
		//選擇全類型 區域
		}else if((cate2no.equalsIgnoreCase("10")||cate2no.equalsIgnoreCase("200"))
				&&!countyno.equalsIgnoreCase("10")){
			query="select * from attrac where cate1no=? and countyno=? and distno=? and show=1";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, cate1no);
			stmt.setString(2, countyno);
			stmt.setString(3, distno);
		//選擇	
		}else if(distno.equalsIgnoreCase(cross)){
			query="select * from attrac where cate1no=? and cate2no = ? and countyno=? and show=1";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, cate1no);
			stmt.setString(2, cate2no);
			stmt.setString(3, countyno);
		}else{
			query="select * from attrac where cate1no=? and cate2no = ? and countyno=? and distno=? and show=1";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, cate1no);
			stmt.setString(2, cate2no);
			stmt.setString(3, countyno);
			stmt.setString(4, distno);
		}	
		rset = stmt.executeQuery();
		List  l1 = new LinkedList();
		while (rset.next()) {
			Map m1 = new HashMap(); 
			m1.put("stitle",rset.getString("stitle")); 
			m1.put("addr", rset.getString("addr")); 
			m1.put("attracno",rset.getString("AttracNo"));
			l1.add(m1);
		} 
		 String jsonString = JSONValue.toJSONString(l1);                    
		 out.println(jsonString);
	} catch (SQLException e) {
		out.println("Error:" + e.getMessage());
	} finally {
		if(rset != null){
			   rset.close();
		}
	}

%>