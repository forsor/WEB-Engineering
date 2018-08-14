<%@ page contentType="text/html;charset=gbk" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
	<head>
	  <title>
	    <s:text name="index.title"/>	    
	  </title>
	  <link rel="stylesheet" type="text/css" href="css/style2.css"/>
	  <link rel="stylesheet" type="text/css" href="css/style1.css"/>
	  <script type="text/javascript" src="script/trim.js"></script>
	  <script language="JavaScript">
	  	function checkRevert(){
	  		var rcontent = document.all.nr.value.trim();
	  		var rtitle = document.all.bt.value.trim();
	  		if(rtitle==""){
	  			alert("���ʱ��ⲻ��Ϊ��");
	  			return false;
	  		}
	  		if(rtitle.length<8){
	  			alert("������ⳤ�Ȳ���С��8");
	  			return false;
	  		}
	  		if(rcontent==""){
	  			alert("�������ݲ���Ϊ��");
	  			return false;
	  		}
	  		if(rcontent.length<8){
	  			alert("�������ݳ��Ȳ���С��8");
	  			return false;
	  		}
			return true;
	  	}
	  </script>
	</head>
	<body>
	  <s:include value="top.jsp"/>
	  <div id="nav">
	  <table>
	  	<tr>
	  		<td>
	  			<a href="IndexAction.action?actionStr=all"><s:text name="msg.nav"/></a>	  	
				&raquo;&nbsp����������			  	
	  		</td>
	  	</tr>
	  </table>
	  </div>
	  <!-- ����������ı��� -->
	  <div class="tw">
	  	<div class="left">
		  	<h4>���������</h4>
		  	<div class="notice2">
		  		����ע�����
		  		<p>1.����á������</p>
		  		<p>2.��Ҫ�����ˮ</p>
		  		<p>3.����������������8</p>
		  		<p>4.���÷���������ɫ������</p>
		  		<p>5.��Ҫ������γ������޹صĶ���  </p>
		  	</div>
	  	</div>
	  	<s:form action="EAction" theme="simple" onsubmit="return checkRevert()">
	  		<table>
	  			<tr>
	  				<td>�γ̣�</td>
	  				<td>
	  					<s:select
	  						name="tgid"
	  						list="course"
	  						listKey='key'
	  						listValue='value'
	  					/>
	  					<script language="JavaScript">
	  						var gid = ${sessionScope.tgid};
	  						if(gid!=null){
	  							document.all.tgid.value=gid;
	  						}
	  					</script>
	  				</td>
	  			</tr>
	  			<tr>
	  				<td>���⣺</td>
	  				<td><s:textfield name="bt" cssClass="wtbt"/></td>
	  			</tr>
	  			<tr>
	  				<td>���ݣ�</td>
	  				<td><s:textarea name="nr" rows="10" cols="80" cssClass="textarea" /></td>
	  			</tr>
	  			<tr>
	  				<td>
	  					<s:hidden name="actionStr" value="fqwt"/>
	  				</td>
	  				<td>
	  					<s:submit id="button" value="��������"/>
	  				</td>
	  			</tr>
	  		</table>
	  	</s:form>
	  </div>
	</body>
</html>