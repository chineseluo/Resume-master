<%--
  Created by IntelliJ IDEA.
  User: 84825
  Date: 2018/1/30
  Time: 16:06
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
    <title>技能页面</title>
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
<div class="row">


<form id="skillForm" action="http://localhost:8080/skill/updateSkill" method="post">
    <c:forEach items="${dataBinderSkill}" var="skill" varStatus="idxStatus">
        <%--<h1>索引：<c:out value="${idxStatus.index}"></c:out></h1>--%>
        <div class="col-md-2">
            <div class="panel panel-default">
                <div class="panel-heading text-center">
                    技能${skill.id}
                </div>
                <div class="panel-body">
                    <input type="hidden" name="skills[${idxStatus.index}].id" value="${skill.id}"/>
                    <div class="form-group">
                        <input type="text" class="form-control validate[required]" name="skills[${idxStatus.index}].name" value="${skill.name}" placeholder="名称..."/>
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control validate[required]" step="5" min="10" max="100"  name="skills[${idxStatus.index}].level" value="${skill.level}" placeholder="掌握程度..."/>
                    </div>
                    <div class="form-group">
                        <input type="hidden" class="form-control validate[required]"   name="skills[${idxStatus.index}].indexno" value="${skill.indexno}" placeholder="序号" />
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
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
</div>
</body>
</html>
