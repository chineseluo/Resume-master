<%@include file="common.jsp"%>
<script>
    $(function () {
        var $aboutMeForm = $('#aboutMe');

        //定义FormOptions
        var submitFormOptions = {
            url: ctx + '/about/save',
            type: 'POST',
            success: function (data) {
                //跟据状态判断是否保存成功
                if (data.status == '0') {
                    toastr.success(Message.save_success);
                    //重新加载基本信息（刷新）
                    loadAboutMeContent();
                    loadHomeContent();
                    //关闭编辑窗口
                    closeEditContentWindow();
                } else {
                    toastr.error(Message.save_fail + data.data);
                }
            },
            error: function (context, xhr) {
                toastr.error(Message.save_fail + context.responseText);
            }
        };

        //保存
        $aboutMeForm.find('.save-btn').click(function (e) {
            //输入有效性验证
            var isValid = $aboutMeForm.validationEngine('validate', {
                scroll: false,
                autoHidePrompt: true,
                // 自定义错误提示
                custom_error_messages: {}
            });
            // 校验不通过不提交到后台
            if (!isValid) {
                return false;
            }

            //提交ajax form请求
            $aboutMeForm.ajaxSubmit(submitFormOptions);
        })

        //初始化日期选择插件
        $aboutMeForm.find('.date-picker').datepicker({
            language: language,
            format: 'yyyy-mm-dd',
            orientation: 'bottom auto',
            autoclose: true
        });
    });
</script>
<form id="aboutMe" name="aboutMe" method="post">
    <form:hidden path="aboutMe.id"/>
    <div class="form-group col-md-4">
        <!-- 姓名 -->
        <label for="name"><spring:message code="about.me.name"/>：</label>
        <form:input id="name" path="aboutMe.name" class="form-control" maxlength="100" placeholder="..."
                    required="required" autofocus="autofocus"/>
    </div>
    <div class="form-group col-md-4">
        <!-- 性别 -->
        <label><spring:message code="about.me.gender"/>：</label>
        <div>
            <label class="radio-inline"> <form:radiobutton path="aboutMe.gender" value="Male"/> <spring:message
                    code="about.me.gender.male"/>
            </label> <label class="radio-inline"> <form:radiobutton path="aboutMe.gender" value="Female"/>
            <spring:message code="about.me.gender.female"/>
        </label>
        </div>
    </div>
    <div class="form-group col-md-4 date">
        <!-- 生日 -->
        <label for="birthday"><spring:message code="about.me.birthday"/>：</label>
        <form:input id="birthday" path="aboutMe.birthday" class="form-control date-picker" maxlength="100"
                    placeholder="..." required="required" readonly="true"/>
    </div>
    <div class="form-group col-md-4">
        <!-- 教育程度 -->
        <label for="educationDegreeId"><spring:message code="about.me.education.degree"/>：</label>
        <form:select id="educationDegreeId" path="aboutMe.educationDegree.id" class="form-control">
            <form:options items="${educationDegrees}" itemValue="id" itemLabel="name"/>
        </form:select>
    </div>
    <div class="form-group col-md-4">
        <!-- 工作年限 -->
        <label for="workingYears"><spring:message code="about.me.working.years"/>：</label>
        <form:input id="workingYears" path="aboutMe.workingYears" class="form-control" maxlength="100" placeholder="..."
                    required="required"/>

    </div>
    <div class="form-group col-md-4">
        <!-- 工作状态 -->
        <label for="workingStatusId"><spring:message code="about.me.working.status"/>：</label>
        <form:select id="workingStatusId" path="aboutMe.workingStatus.id" class="form-control">
            <form:options items="${workingStatus}" itemValue="id" itemLabel="name"/>
        </form:select>
    </div>
    <div class="form-group col-md-4">
        <!-- 居住地 -->
        <label for="residence"><spring:message code="about.me.residence"/>：</label>
        <form:input id="residence" path="aboutMe.residence" class="form-control" maxlength="200" placeholder="..."
                    required="required"/>
    </div>
    <div class="form-group col-md-4">
        <!-- 邮件 -->
        <label for="email"><spring:message code="about.me.email"/>：</label>
        <form:input id="email" path="aboutMe.email" class="form-control" maxlength="100" placeholder="..."
                    required="required"/>
    </div>
    <div class="form-group col-md-4">
        <!-- 手机 -->
        <label for="mobile"><spring:message code="about.me.mobile"/>：</label>
        <form:input id="mobile" path="aboutMe.mobile" class="form-control" maxlength="50" placeholder="..."
                    required="required"/>
    </div>
    <div class="form-group col-md-12">
        <!-- 人生格言 -->
        <label for="motto"><spring:message code="about.me.motto"/>：</label>
        <form:input id="motto" path="aboutMe.motto" class="form-control" maxlength="300" placeholder="..."
                    required="required"/>
    </div>
    <div class="edit-panel-footer col-md-12">
        <!-- 保存 -->
        <button type="button" class="btn btn-primary save-btn">
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
