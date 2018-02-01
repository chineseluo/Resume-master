<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="common.jsp"%>
<html>
<head>
    <title>我的简历</title>
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
    <!-- banner -->
    <div class="banner" id="home">
        <div class="container">
            <!-- container class 用于包裹页面上的内容 -->
            <div class="top-header row">
                <!-- 实现弹出隐藏导航栏的效果js -->
                <!--top-nav-->
                <div class="logo">
                    Hello World!
                </div>
                <div class="top-nav">
                    <div class="nav-icon">
                        <a href="#" class="right-bt" id="activator"><span> </span> </a>
                    </div>
                    <div class="dropdown open">
                        <a class="dropdown-toggle" type="botton" id="languageMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                            语言
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="languageMenu" width="80px">
                            <li>
                                <a href="/resume/index?lang=zh_CN" >中文</a>
                            </li>

                            <li>
                                <a href="/resume/index?lang=en_US">English</a>
                            </li>
                        </ul>
                    </div>
                    <div class="box" id="box">
                        <div class="box-content">
                            <div class="box-content-center">
                                <div class="form-content">
                                    <div class="menu-box-list">
                                        <ul>
                                            <li><a class="scroll" href="#home"><span>首页</span></a></li>
                                            <li><a class="scroll" href="#about"><span>关于我</span></a></li>
                                            <li><a class="scroll" href="#skills"><span>专业技能</span></a></li>
                                            <li><a class="scroll" href="#education"><span>教育经历</span></a></li>
                                            <li><a class="scroll" href="#experience"><span>工作经验</span></a></li>
                                            <li><a class="scroll" href="#honor"><span>荣誉&证书</span></a></li>
                                            <li><a class="scroll" href="#hobby"><span>爱好</span></a></li>
                                            <div class="clearfix"> </div>
                                        </ul>
                                    </div>
                                    <a class="boxclose" id="boxclose"> <span></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!---start-click-drop-down-menu-->
                <div class="clearfix"> </div>
            </div>
            <div class="banner-info row">
                <div class="banner-left col-md-3 col-md-offset-2">
                    <!-- 为了在大屏幕显示器上使用偏移，使用 .col-md-offset-* 类。这些类会把一个列的左外边距（margin）增加 * 列，其中 * 范围是从 1 到 11。 -->
                    <%--<img src="/static/images/my-avatar.png" alt="" />--%>
                    <img id="img" src="/static/images/my-avatar.png" onclick="getElementById('file').click()"
                         style="cursor:pointer;" title="点击添加图片" class="img-responsive img-circle tm-border"
                         alt="templatemo easy profile">
                    <input type="file" name="file" id="file" style="display: none"/>
                    <input type="button" class="fileButton" value="点击头像选择上传文件"  style="opacity: 0.2" onclick="upload()"/>
                    <%--<p>请选择头像图片</p>--%>
                </div>

                <div class="banner-right col-md-7">
                    <!-- 使用.col-md-*类，在中型设备台式电脑（≥992px）中分成12等宽，其中占*等分 -->
                    <h1>${aboutMe.name}</h1>
                    <div class="border"></div>
                    <h2>${aboutMe.motto}</h2>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--about-->
    <div class="about" id="about">
        <div class="container">
            <h3 class="text-center">
                <spring:message code="section.about.me" />
            </h3>
            <div class="strip text-center">
                <img src="/static/images/about.png" alt=" " class="edit-btn aboutMe" data-url="/about/content" data-title="<spring:message code="section.about.me" />" />
            </div>
            <div class="container row">
                <div class="about-grids">
                    <!-- 姓名 -->
                    <div class="col-md-4 ">
                        <h4>
                            <span><spring:message code="about.me.name" /></span>
                            ：${aboutMe.name}
                        </h4>
                    </div>
                    <!-- 性别 -->
                    <div class="col-md-4 ">
                        <h4>
                            <span><spring:message code="about.me.gender" /></span>
                            ：
                            <c:if test="${aboutMe.gender=='Male' }">
                                <spring:message code="about.me.gender.male" />
                            </c:if>
                            <c:if test="${aboutMe.gender=='Female' }">
                                <spring:message code="about.me.gender.female" />
                            </c:if>
                        </h4>
                    </div>
                    <!-- 生日 -->
                    <div class="col-md-4 ">
                        <h4>
                            <span><spring:message code="about.me.birthday" /></span>
                            ：${aboutMe.birthday }
                        </h4>
                    </div>
                </div>
                <div class="about-grids">
                    <!-- 教育程度 -->
                    <div class="col-md-4 ">
                        <h4>
                            <span><spring:message code="about.me.education.degree" /></span>
                            ：${aboutMe.educationDegree.name }
                        </h4>
                    </div>
                    <!-- 工作年限 -->
                    <div class="col-md-4 ">
                        <h4>
                            <span><spring:message code="about.me.working.years" /></span>
                            ：${aboutMe.workingyears }
                        </h4>
                    </div>
                    <!-- 工作状态 -->
                    <div class="col-md-4 ">
                        <h4>
                            <span><spring:message code="about.me.working.status" /></span>
                            ：${aboutMe.workingStatus.name }
                        </h4>
                    </div>
                </div>
                <div class="about-grids">
                    <!-- 居住地 -->
                    <div class="col-md-4 ">
                        <h4>
                            <span><spring:message code="about.me.residence" /></span>
                            ：${aboutMe.residence }
                        </h4>
                    </div>
                    <!-- 邮件 -->
                    <div class="col-md-4 ">
                        <h4>
                            <span><spring:message code="about.me.email" /></span>
                            ：${aboutMe.email }
                        </h4>
                    </div>
                    <!-- 手机 -->
                    <div class="col-md-4 ">
                        <h4>
                            <span><spring:message code="about.me.mobile" /></span>
                            ：${aboutMe.mobile }
                        </h4>
                    </div>
                </div>
            </div>
        </div>
    <!--my skill-->

    <div class="my-skills text-center" id="skills">
        <div class="container">
            <h3>专业技能</h3>
            <div class="strip text-center"><img src="/static/images/skill.png" alt=" " class="edit-btn mySkill" data-url="/skill/edit" /></div>
            <div class="skill-grids">
                <c:forEach items="${skills}" var="skill">
                    <div class="col-md-2 col-sm-4 col-xs-6 skills-grid text-center">
                        <div class="circle" id="circles-${skill.indexno}" data-level="${skill.level}"></div>
                        <p>${skill.name}</p>
                    </div>
                </c:forEach>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!--education-->
    <div class="education" id="education">
        <div class="container">
            <div class="edu-info text-center">
                <h3>教育经历</h3>
            </div>
            <div class="strip text-center"><img src="/static/images/edu.png" alt=" " class="edit-btn" data-url="/education/edit"></div>
            <div class="edu-grid">
                <div class="col-md-6 edu-grid-left">
                    <h4>2011 - 2015 </h4>
                </div>
                <div class="col-md-6 edu-grid-right">
                    <h5> 武汉大学</h5>
                    <p>计算机网络通讯专业（本科）</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="edu-grid">
                <div class="col-md-6 edu-grid-left">
                    <h4>2015 - 2018 </h4>
                </div>
                <div class="col-md-6 edu-grid-right">
                    <h5>华中科技大学</h5>
                    <p>计算机软件工程专业（硕士）</p>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!--work-->
    <div class="work-experience text-center" id="experience">
        <div class="container">
            <div class="work-info">
                <h3>工作经验</h3>
            </div>
            <div class="strip text-center"><img src="/static/images/work.png" alt=" " class="edit-btn" data-url="/experience/edit" /></div>
            <div class="work-grids">
                <div class="col-md-4 w-grid">
                    <div class="work-grid">
                        <h3>2014.7 - 2016.9</h3>
                        <div class="work-grid-info">
                            <h4>武汉明博科技有限公司</h4>
                            <p> • 实训在线平台开发</p>
                            <p> • 系统架构设计</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 w-grid">
                    <div class="work-grid">
                        <h3>2016.9 - 2017.5</h3>
                        <div class="work-grid-info">
                            <h4>实训在线教育科技</h4>
                            <p> • 电子商城平台设计&开发</p>
                            <p>• 主流在线教育技术跟踪及预研</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 w-grid">
                    <div class="work-grid">
                        <h3>2017.5 - 至今</h3>
                        <div class="work-grid-info">
                            <h4>XXX</h4>
                            <p>• XXX</p>
                            <p>• XXX</p>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--honor-->
    <div class="honor text-center" id="honor">
        <div class="container">
            <div class="honor-info">
                <h3>荣誉&证书</h3>
            </div>
            <div class="strip text-center"><img src="/static/images/honor.png" alt=" " class="edit-btn" data-url="/honor/edit" /></div>
            <div class="honor-grids">
                <div class="col-md-3 col-sm-6 honor-grid">
                    <h3>优秀学生</h3>
                    <p>2015~2016</p>
                </div>
                <div class="col-md-3 col-sm-6 honor-grid">
                    <h3>一等奖学金</h3>
                    <p>2015 获校一等奖学金</p>
                </div>
                <div class="col-md-3 col-sm-6 honor-grid">
                    <h3>计算机二级</h3>
                    <p>2016 通过计算机二级</p>
                </div>
                <div class="col-md-3 col-sm-6 honor-grid">
                    <h3>英语四级</h3>
                    <p>2015 通过英语四级</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--hobby-->
    <div class="hobby text-center" id="hobby">
        <div class="container">
            <h3>爱好</h3>
            <div class="strip text-center"><img src="/static/images/pro.png" alt=" " class="edit-btn myHobby" data-url="/hobby/edit" /></div>
            <div class="hobby-girds">
                <c:forEach items="${hobbies}" var="hobby" >
                    <div class="col-md-2 col-sm-4 col-xs-6 hobby-pad">
                        <div class="hobby-gird">
                            <div class="hobby-image-${hobby.indexno}"></div>
                            <p>${hobby.name}</p>
                        </div>
                    </div>
                </c:forEach>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--contact-->
    <div class="contact" id="contact">
        <div class="container">
            <div class="contact-info text-center">
                <h3>给我留言</h3>
                <div class="strip text-center"><img src="/static/images/con1.png" alt=" " /></div>
            </div>
            <div class="contact-grids">
                <div class="col-md-12 ">
                    <form class="form-horizontal" role="form" method="post" action="http://localhost:8080/contact/contactme">
                        <div class="form-group">
                            <input type="text" name="name" class="form-control" placeholder="请输入姓名..."  required="required">
                        </div>
                        <div class="form-group">
                            <input type="email" name="email" class="form-control" placeholder="请输入邮箱地址..." required="required">
                        </div>
                        <div class="form-group">
                            <!-- 文本框 -->
                            <textarea class="form-control" name="message" rows="7" placeholder="请输入留言内容详情..."  required="required"></textarea>
                        </div>
                        <div class="form-group">
                            <!-- 按钮 -->
                            <button type="submit" class="btn btn-primary btn-lg btn-block">发送</button>
                        </div>
                    </form>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="download-resume text-center">
        <div class="container">
            <div class="strip text-center">
                <img src="/static/images/down.png" alt=" ">
            </div>
            <div class="down"><a href="#">下载我的简历</a></div>
        </div>
    </div>
    <!--footer-->
    <div class="footer">
        <div class="container">
            <p>Copyright &copy; 2017.理工吴彦祖版权所有.</p>
        </div>
    </div>
    <div id="editPanel" class="edit-panel">
        <div class="edit-panel-header">
            <button type="button" class="close" data-dismiss="edit-panel" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                <span class="sr-only">Close</span>
            </button>
            <h4 class="edit-panel-title">每次编辑后，点击保存即可在小窗口预览，预览结束，点击小窗口右上角的关闭按钮即可</h4>
        </div>
        <div class="edit-panel-body row">
            <iframe id="myFrame" name="myFrame" src="${pageContext.request.contextPath}/about/content" scrolling="0" frameborder="0" style="width: 100%;height: 100%;margin: 0px;padding: 0px"></iframe>
        </div>
    </div>
    </div>
    <script type="text/javascript">
        function upload() {
            alert("开始图片上传")
            //js file 对象
            var file = $("#file")[0].files[0];
            //js form
            var form = new FormData();
            form.append("file", file);
            //jquery ajax
            var opt = {
                url: "/resume/do_upload",
                type: "post",
                contentType: false,
                processData: false,
                data: form,
                success: function (data) {
                    var json = eval("(" + data + ")");
                    $("#img").css({
                        width: "250px",
                        height: "250px"
                    })
                    $("#img").attr("src", "/upload/" + json.url);
                }
            };
            $.ajax(opt);
        }
    var $ = jQuery.noConflict();
    $(function() {
        var $editPanel;
        $editPanel = $('#editPanel');
        //contextPath 变量，其中 /resume 在 /src/main/webapp/common/taglibs.jsp 文件中定义
        var ctx = '${rootPath}';
        //当前语言环境，在 IndexController.java 中传入
        var language = 'zh_CN';

        //从浏览器底部弹出编辑窗口
        $('body').on('click', '.aboutMe', function(event) {
            $('#editPanel').animate({
                'left': '0px',
                'bottom': '0px'
            }, 300);
        });

        $('body').on('click', '.mySkill', function(event) {
            $("#myFrame").attr("src","${pageContext.request.contextPath}/skill/editskill")
            $('#editPanel').animate({
                'left': '0px',
                'bottom': '0px'
            }, 300);
        });
        $('body').on('click', '.myHobby', function(event) {
            $("#myFrame").attr("src","${pageContext.request.contextPath}/hobby/edithobby")
            $('#editPanel').animate({
                'left': '0px',
                'bottom': '0px'
            }, 300);
        });
        //关闭编辑窗口
        $('#editPanel').on('click', '.close', function(event) {
            event.preventDefault();
            $('#editPanel').animate({
                'left': '0px',
                'bottom': '-600px'
            }, 300);
           //刷新当前页面
            window.location.reload()
        });
        $(".save-btn").click(function(){
            $('#editPanel').animate({
                'left': '0px',
                'bottom': '-600px'
            }, 300);
        })
        //弹出顶部导航菜单
        $('#activator').click(function() {
            $('#box').animate({
                'top': '0px'
            }, 500);
        });
        //关闭顶部导航菜单
        $('#boxclose').click(function() {
            $('#box').animate({
                'top': '-1000px'
            }, 500);
        });
        //基于SVG的轻量级js圆形进度条插件
        $('#skills .circle').each(function(index, el) {
            var percentage = $(this).data('level');
            Circles.create({
                id: 'circles-' + index,
                percentage: percentage,
                radius: 80,
                width: 10,
                number: percentage / 1,
                text: '%',
                colors: ['#ffffff', '#a2e0aa']
            });
        });
    });
    </script>

</body>

</html>
