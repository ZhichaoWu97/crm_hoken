<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>编辑订单</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css"
	type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css"
	type=text/css rel=stylesheet>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<s:actionerror />
	<s:fielderror />
	<s:form name="form1" id="form1" action="hoken_update" namespace="/"
		method="post" enctype="multipart/form-data" theme="simple">
		<s:hidden name="hoken_id" value="%{model.hoken_id}" />

		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG
						src="${pageContext.request.contextPath }/images/new_019.jpg"
						border=0></TD>
					<TD width="100%"
						background="${pageContext.request.contextPath }/images/new_020.jpg"
						height=20></TD>
					<TD width=15><IMG
						src="${pageContext.request.contextPath }/images/new_021.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg><IMG
						src="${pageContext.request.contextPath }/images/new_022.jpg"
						border=0></TD>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：订单管理 &gt; 编辑订单</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>

						<TABLE cellSpacing=0 cellPadding=5 border=0>


							<TR>
								<td>保险名称 ：</td>
								<td><s:textfield cssClass="textbox" id="sChannel2"
										cssStyle="WIDTH: 180px" maxLength="50" name="hoken_name" /></td>
								<td>所属客户 ：</td>
								
								
								<%-- <td><s:textfield cssClass="textbox" id="sChannel2"
										cssStyle="WIDTH: 180px" maxLength="50"
										name="hoken_customer_id" /></td> --%>
										
										
								<td>
									<s:select list="list" name="customer.cust_id" headerKey="" headerValue="-请选择-" listKey="cust_id" listValue="cust_name"/>
								</td>
							</TR>

							<TR>
								
								<td>被保险者名称 ：</td>
								<td><s:textfield cssClass="textbox" id="sChannel2"
										cssStyle="WIDTH: 180px" maxLength="50" name="hihokensha" /></td>
								<td>被保险者出生日期 ：</td>
								<td><s:textfield cssClass="textbox" id="sChannel2"
										cssStyle="WIDTH: 180px" maxLength="50"
										name="hihokensha_birthday">
										<s:param name="value">
											<s:date name="hihokensha_birthday" format="yyyy-MM-dd" />
										</s:param>
									</s:textfield></td>
							</TR>

							<TR>
								<td>保险金额 ：</td>
								<td><s:textfield cssClass="textbox" id="sChannel2"
										cssStyle="WIDTH: 180px" maxLength="50" name="hoken_kingaku" />
								</td>
								<td>支付方式 ：</td>
								<td>
								<s:select name="siharai_houhou" list="{'年付','半年付','月付'}" headerKey="0" headerValue="--请选择--" emptyOption=" true" multiple="false"/>
								</td>
								<%-- <td><s:textfield cssClass="textbox" id="sChannel2"
										cssStyle="WIDTH: 180px" maxLength="50" name="siharai_houhou" />
								</td> --%>
							</TR>
							<tr>
								<td rowspan=2><INPUT class=button id=sButton2 type=submit
									value=" 保存 " name=sButton2></td>
							</tr>
						</TABLE>


					</TD>
					<TD width=15
						background="${pageContext.request.contextPath }/images/new_023.jpg">
						<IMG src="${pageContext.request.contextPath }/images/new_023.jpg"
						border=0>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG
						src="${pageContext.request.contextPath }/images/new_024.jpg"
						border=0></TD>
					<TD align=middle width="100%"
						background="${pageContext.request.contextPath }/images/new_025.jpg"
						height=15></TD>
					<TD width=15><IMG
						src="${pageContext.request.contextPath }/images/new_026.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</s:form>
</BODY>
</HTML>
