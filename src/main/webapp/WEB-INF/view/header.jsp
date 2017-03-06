<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fsoft.FormCMS.model.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/jquery-ui.min.css">
<script src="../resources/js/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>


<script src="../resources/js/dropdown.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<div class="headerWrapper container-fluid fixed-navbar">
	<header style="padding: 15px 0px; height: 70px;"> <nav
		class="navbar navbar-default navbar-static-top hidden-sm hidden-md hidden-lg mainContainer">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle"
			ng-click="showNavMobile($event)" data-ga="" data-ga-action="click"
			data-ga-category="Header Navigation Mobile "
			data-ga-title="Open Mobile Nav Lnk">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<a href="#" class="pull-left" data-ga="" data-ga-action="click"
			data-ga-category="Header Navigation" data-ga-title="Logo CF Img"><img
			class="cf-logo" src="../resources/img/cms_icon.png"></a> <a
			class="navbar-brand logo-text" data-ga="" data-ga-action="click"
			data-ga-category="Header Navigation " data-ga-title="Logo CF Img"
			href="#"> <span>Home</span>
		</a>
	</div>
	</nav> <nav
		class="navbar navbar-default navbar-static-top hidden-xs mainContainer"
		role="navigation">
	<div class="navbar-header">
		<a data-ga="" data-ga-action="click"
			data-ga-category="Header Navigation " data-ga-title="Logo CF Img"
			href="#" class="pull-left"> <img class="cf-logo"
			src="../resources/img/cms_icon.png" height="40" width="40">
		</a> <a class="navbar-brand logo-text" data-ga="" data-ga-action="click"
			data-ga-category="Header Navigation " data-ga-title="Logo CF Img"
			href="#"> <span>Content Management System</span>
		</a>
	</div>
	<ul class="nav navbar-nav navbar-right">


		</li>
		<li class="dropdown" data-ga="" data-ga-action="click"
			data-ga-category="Header Navigation " data-ga-title="Integrations">
			<a href="javascript:void(0);" data-target="#" class="dropdown-toggle"
			data-toggle="dropdown" aria-expanded="false"> <span
				class="account-setting">User Management</span> <b class="caret"></b>
				<div class="ripple-container"></div></a>
			<ul class="dropdown-menu account-setting-menu">
				<li><a href="/FormCMS/home" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation " data-ga-title="Slack">
						List Student</a></li>
				<li><a href="/FormCMS/data" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation " data-ga-title="Balsamiq">
						List Data Input</a></li>
			</ul>
		</li>

		<li class="dropdown" data-ga="" data-ga-action="click"
			data-ga-category="Header Navigation " data-ga-title="Integrations">
			<a href="javascript:void(0);" data-target="#" class="dropdown-toggle"
			data-toggle="dropdown" aria-expanded="false"> <span
				class="account-setting">Form Management</span> <b class="caret"></b>
				<div class="ripple-container"></div></a>
			<ul class="dropdown-menu account-setting-menu">
				<li><a href="/FormCMS/addFormPage" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation " data-ga-title="Slack">
						Create New Form</a></li>
				<li><a href="/FormCMS/student" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation " data-ga-title="Balsamiq">
						Input Data</a></li>
			</ul>
		</li>


		<li class="dropdown" data-ga="" data-ga-action="click"
			data-ga-category="Header Navigation " data-ga-title="Integrations">
			<a href="javascript:void(0);" data-target="#" class="dropdown-toggle"
			data-toggle="dropdown" aria-expanded="false"> <span
				class="account-setting">Account</span> <b class="caret"></b>
				<div class="ripple-container"></div></a>
			<ul class="dropdown-menu account-setting-menu">
				<li><a href="#" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation " data-ga-title="Slack">
						Hello <%= session.getAttribute("userName") %></a></li>
				<li><a href="/FormCMS/logout" data-ga="" data-ga-action="click"
					data-ga-category="Header Navigation " data-ga-title="Balsamiq">
						Log Out</a></li>
				<input type="hidden" ng-modal="username" value="<%=session.getAttribute("userName")%>">	
			</ul>
		</li>

	</ul>
	</nav> </header>
</div>
</html>