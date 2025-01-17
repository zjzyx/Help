<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="cn.edu.zjut.po.Merchant"%>
<%@ page import="cn.edu.zjut.po.Order"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Date"%>
	<%
int curPage = 1;
int pageCount=1;
 %>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="Merchant/css/reset.css" type="text/css" media="all">
  <link rel="stylesheet" href="Merchant/css/grid.css" type="text/css" media="all">
  <link rel="stylesheet" href="Merchant/css/pay.css" type="text/css" media="all"> 
  <link rel="stylesheet" href="Merchant/css/normalize.css" />
<link rel="stylesheet" href="Merchant/css/font-awesome.css" />
<link rel="stylesheet" href="Merchant/css/bootstrap.min.css" />
<link rel="stylesheet" href="Merchant/css/templatemo-style.css" />
<link rel="stylesheet" href="Merchant/css/menuList.css" />
<link rel="stylesheet" href="Merchant/css/chinaz.css" />
<script src="Merchant/js/jquery-latest.min.js" type="text/javascript"></script>
<script src="Merchant/js/chinaz.js"></script>
<script src="Merchant/js/vendor/modernizrEmployeein.js"></script>
</head>

<body>


  
 		<div class="row">
			<div class="col-md-12">
				<h4 class="widget-title" style="font-size: 25px;font-weight: 600;">支付记录</h4>
			</div>
		</div>
		<div id='cssmenu'>
			<ul>
				<li><a href='findPayedOrder'>已支付的订单</a></li>
				<li><a href='findUnpayedOrder'>未支付的订单</a></li>
			</ul>
		</div>
		 <div class="row projects-holder">
			<%
				if (session.getAttribute("list") != null) {
				try{
					List list1 = (List) session.getAttribute("list");
					int size = list1.size();
					int PAGESIZE = 9;
					
					pageCount = (size%PAGESIZE==0)?(size/PAGESIZE):(size/PAGESIZE+1);
		          String tmp = request.getParameter("curPage");
		if(tmp==null){
			tmp="1";
		}
		curPage = Integer.parseInt(tmp);
		if(curPage>=pageCount) curPage = pageCount;
		if(curPage<=0) curPage =1;
	
		int start=(curPage-1)*PAGESIZE;
		
		int count = 0;
		if(start>=0)
		{
		while(start<list1.size())
		{
			if(count>=PAGESIZE)break;
			Order order = (Order)list1.get(start);
			String orderID=order.getOrderID();
			Date releaseTime=order.getReleaseTime();
			Date acceptTime=order.getAcceptTime();
			double salary=order.getSalary();
			String remark=order.getRemark();
			Date startTime=order.getStartTime();
			Date endTime=order.getEndTime();
			boolean ifFinish=order.isIfFinish();
			boolean ifPay=order.isIfPay();
			String Username=order.getEmployee().getEmployeeUserName();
			String phone=order.getEmployee().getEmployeePhone();
			String path=order.getEmployee().getEmployeeIMG();
			start++;	
			count++;
			%>
			<div class="col-md-4 col-sm-6">
				<div class="project-item">
					<img src="Merchant/img/1.jpg" alt="" />
					<div class="project-hover">
						<div class="inside">
						     <div class="profile-image">
                                <img src= <%=path %>  alt="Volton"/>
                            </div>
                            <p>受雇者姓名：<%=Username %>
                            <p>联系方式:<%=phone %>    
							<p>订单报酬：<%=salary %>
							<%
							if(!ifPay) {
							%>
							    <button class="payButton" href="#">支付</button>
							<% 
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<%  
        }  
        }
    }  
    catch(Exception e){  
    e.printStackTrace();
          
    }  
    }
%>


		</div>
	</div>
<div class="dividePage">

			<a href="MerchantPay.jsp?curPage=1">首页</a> <a
				href="MerchantPay.jsp?curPage=<%=curPage-1%>">上一页</a> <a
				href="MerchantPay.jsp?curPage=<%=curPage+1%>">下一页</a> <a
				href="MerchantPay.jsp?curPage=<%=pageCount%>">尾页</a> 
				第<%=curPage%>页/共<%=pageCount%>页
</div>
</body>
</html>