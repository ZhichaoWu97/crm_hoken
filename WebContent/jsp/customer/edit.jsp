<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>编辑客户</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
	rel=stylesheet>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<s:actionerror/>
	<s:fielderror/>
	<s:form name="form1" id="form1" action="customer_update" namespace="/" method="post" enctype="multipart/form-data" theme="simple">
		<s:hidden name="cust_id" value="%{model.cust_id}"/>
		
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg"
						border=0></TD>
					<TD width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg"
						height=20></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg><IMG
						src="${pageContext.request.contextPath }/images/new_022.jpg" border=0></TD>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：客户管理 &gt; 编辑客户</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>
						
						<TABLE cellSpacing=0 cellPadding=5  border=0>
						  
						    
							<TR>
								<%-- <td>客户编号：</td>
								<td>
								<s:textfield cssClass="textbox" id="sChannel2" cssStyle="WIDTH: 180px" maxLength="50" name="cust_id"/>
								</td> --%>
								<td>客户名称 ：</td>
								<td>
								<s:textfield cssClass="textbox" id="sChannel2" cssStyle="WIDTH: 180px" maxLength="50" name="cust_name"/>
								</td>
							</TR>
							
							<TR>
								
								<td>客户类型 ：</td>
								<td>
									<s:textfield cssClass="textbox" id="sChannel2" cssStyle="WIDTH: 180px" maxLength="50" name="cust_type"/>
								</td>
								<td>客户出生日期 ：</td>
								<td>
									<s:textfield  cssClass="textbox" id="sChannel2" cssStyle="WIDTH: 180px" maxLength="50" name="cust_birthday">
									<s:param name="value">	<s:date name="cust_birthday" format="yyyy-MM-dd"/></s:param>
									</s:textfield>
								</td>
							</TR>
							
							<TR>
								<td>客户住址 ：</td>
								<td>
										<s:textfield cssClass="textbox" id="sChannel2" cssStyle="WIDTH: 180px" maxLength="50" name="cust_address"/>
								</td>
								<td>联系方式 ：</td>
								<td>
										<s:textfield cssClass="textbox" id="sChannel2" cssStyle="WIDTH: 180px" maxLength="50" name="cust_phone"/>
								</td>
							</TR>
							<tr>
								<td rowspan=2>
								<INPUT class=button id=sButton2 type=submit
														value=" 保存 " name=sButton2>
								</td>
							</tr>
						</TABLE>
						
						
					</TD>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg">
					<IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg"
						border=0></TD>
					<TD align=middle width="100%"
						background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</s:form>
</BODY>
</HTML>
