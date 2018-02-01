<%--
  Created by IntelliJ IDEA.
  User: 84825
  Date: 2018/1/29
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>Title</title>
    <!-- for-mobile-apps -->
    <!--width 属性控制设备的宽度。假设您的网站将被带有不同屏幕分辨率的设备浏览，那么将它设置为 device-width 可以确保它能正确呈现在不同设备上。initial-scale=1.0 确保网页加载时，以 1:1 的比例呈现，不会有任何的缩放 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 设置编码格式为utf-8 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- 引用jQuery原生的js文件 -->
    <script type="text/javascript" src="/static/plugins/jquery-1.9.1.min.js"></script>
    <!-- 引用bootstrap原生的css文件 -->
    <link href="/static/plugins/bootstrap/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- 引用bootstrap原生的js文件 -->
    <script type="text/javascript" src="/static/plugins/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/plugins/circles/circles.js"></script>
    <!-- 引用自定义的css文件 -->
    <link href="/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="/static/plugins/waitme/waitMe.css">
    <script src="/static/plugins/waitme/waitMe.js"></script>
</head>
<body>
<form id="aboutMe" name="aboutMe" method="post" action="http://localhost:8080/about/updateAboutMe">
    <%--<form:hidden path="aboutMe.id"/>--%>
        <div class="form-group col-md-4" style="display:none">
            <!-- 姓名 -->
            <label for="aboutMeId"></label>
            <input id="aboutMeId" name="id" value="${aboutMe.id}" class="form-control" maxlength="100" placeholder="..." required="required"/>
        </div>
    <div class="form-group col-md-4">
        <!-- 姓名 -->
        <label for="name"><spring:message code="about.me.name"/>：</label>
        <input id="name" name="name" value="${aboutMe.name}" class="form-control" maxlength="100" placeholder="..." required="required"/>
    </div>
    <div class="form-group col-md-4">
        <!-- 性别 -->
        <label><spring:message code="about.me.gender"/>：</label>
        <div>
            <label class="radio-inline">
                <input type="radio" value="Male" name="aboutMe.gender">:
                <spring:message code="about.me.gender.male"/>
            </label>
            <label class="radio-inline">
                <input type="radio" value="Female" name="gender">:
                <spring:message code="about.me.gender.female"/>
            </label>
        </div>
    </div>
        <div class="form-group col-md-4 date" style="display: none">
            <!-- id -->
            <label for="birthday"><spring:message code="about.me.birthday"/>：</label>
            <input id="id" name="aboutMe.id" value="${aboutMe.id}" class="form-control" maxlength="100" placeholder="..." required="required"/>
        </div>
    <div class="form-group col-md-4 date">
        <!-- 生日 -->
        <label for="birthday"><spring:message code="about.me.birthday"/>：</label>
        <input id="birthday" name="aboutMe.birthday" value="${aboutMe.birthday}" class="form-control" maxlength="100" placeholder="..." required="required"/>
    </div>
    <div class="form-group col-md-4">
        <!-- 教育程度 -->
        <label for="educationDegreeId"><spring:message code="about.me.education.degree"/>：</label>
        <input id="educationDegreeId" name="aboutMe.educationDegree.name" value="${aboutMe.educationDegree.name}" class="form-control" maxlength="100" placeholder="..." required="required"/>
    </div>
    <div class="form-group col-md-4">
        <!-- 工作年限 -->
        <label for="workingYears"><spring:message code="about.me.working.years"/>：</label>
        <input id="workingYears" name="aboutMe.workingyears" value="${aboutMe.workingyears}" class="form-control" maxlength="100" placeholder="..." required="required"/>

    </div>
    <div class="form-group col-md-4">
        <!-- 工作状态 -->
        <label for="workingStatusId"><spring:message code="about.me.working.status"/>：</label>
        <input id="workingStatusId" name="aboutMe.workingStatus.name" value="${aboutMe.workingStatus.name}" class="form-control" maxlength="100" placeholder="..." required="required"/>

    </div>
    <div class="form-group col-md-4">
        <!-- 居住地 -->
        <label for="residence"><spring:message code="about.me.residence"/>：</label>
        <input id="residence" name="aboutMe.residence" value="${aboutMe.residence}" class="form-control" maxlength="100" placeholder="..." required="required"/>

    </div>
    <div class="form-group col-md-4">
        <!-- 邮件 -->
        <label for="email"><spring:message code="about.me.email"/>：</label>
        <input id="email" name="aboutMe.email" value="${aboutMe.email}" class="form-control" maxlength="100" placeholder="..." required="required"/>

    </div>
    <div class="form-group col-md-4">
        <!-- 手机 -->
        <label for="mobile"><spring:message code="about.me.mobile"/>：</label>
        <input id="mobile" name="aboutMe.mobile" value="${aboutMe.mobile}" class="form-control" maxlength="100" placeholder="..." required="required"/>

    </div>
    <div class="form-group col-md-12">
        <!-- 人生格言 -->
        <label for="motto"><spring:message code="about.me.motto"/>：</label>
        <input id="motto" name="aboutMe.motto" value="${aboutMe.motto}" class="form-control" maxlength="100" placeholder="..." required="required"/>

    </div>
    <div class="edit-panel-footer col-md-12">
        <!-- 保存 -->
        <button type="submit" class="btn btn-primary save-btn">
            <i class="fa fa-floppy-o"></i>
            <spring:message code="button.save"/>
        </button>
        <!-- 取消 -->
        <button type="button" class="btn btn-default cancel-btn">
            <i class="fa fa-times"></i>
            <spring:message code="button.cancel"/>
        </button>
    </div>
</form>

<script>

</script>
</body>
</html>
