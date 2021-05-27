/**
 * 修改密码
 */
layui.use(['form', 'jquery'], function () {
    let form = layui.form;
    let $ = layui.jquery;

    /**
     * 保存按钮事件
     */
    form.on('submit(gemini-save-btn-filter)', function (data) {
        let field = data.field;
        let oldPwd = field['gemini-old-pwd-input-name'];
        let newPwd = field['gemini-new-pwd-input-name'];
        let conPwd = field['gemini-confirm-pwd-input-name'];
        if (newPwd !== conPwd) {
            $('#gemini-confirm-pwd-tips-div-id').text('两次密码不一致！');
            $('#gemini-confirm-pwd-input-id').focus();
            form.val('gemini-change-pwd-form-filter', {
                'gemini-confirm-pwd-input-name': ''
            });
            return false;
        }
        // 发送ajax保存新密码
        $.ajax({
            url: '/admin/updatePwd'
            , type: 'post'
            , dataType: 'json'
            , data: {
                newPassword: newPwd
            }
            , success: function (message) {
                console.log(message);
                let msgCode = message['msgCode'];
                if (msgCode === message['success']) {
                    layer.msg('密码修改成功！', {icon: 1});
                } else if (msgCode === message['failure']) {
                    layer.msg('密码修改失败！', {icon: 2});
                }
            }
            , error: function () {
                layer.msg('系统繁忙', {icon: 5});
            }
            , complete: function () {
                form.val('gemini-change-pwd-form-filter', {
                    'gemini-old-pwd-input-name': ''
                    , 'gemini-new-pwd-input-name': ''
                    , 'gemini-confirm-pwd-input-name': ''
                });
                $('#gemini-old-pwd-tips-div-id').text('');
                $('#gemini-new-pwd-tips-div-id').text('6-12位数字或字母');
                $('#gemini-confirm-pwd-tips-div-id').text('');
            }
        });
        return false;
    });

    /**
     * 当前密码输入框获取焦点事件
     */
    $('#gemini-old-pwd-input-id').focus(function () {
        $('#gemini-old-pwd-tips-div-id').text('');
    });

    /**
     * 当前密码输入框失去焦点事件
     */
    $('#gemini-old-pwd-input-id').blur(function () {
        console.log('当前密码输入框失去焦点');
        let oldPassword = form.val('gemini-change-pwd-form-filter')['gemini-old-pwd-input-name'];
        console.log(oldPassword);
        oldPassword = $.trim(oldPassword);
        if (oldPassword.length === 0) {
            $('#gemini-old-pwd-tips-div-id').text('请输入当前密码！');
            $('#gemini-old-pwd-input-id').focus();
            form.val('gemini-change-pwd-form-filter', {
                'gemini-old-pwd-input-name': ''
            });
            return;
        }
        // 发送ajax验证当前密码
        $.ajax({
            url: '/admin/verifyPwd'
            , type: 'post'
            , dataType: 'json'
            , data: {
                oldPassword: oldPassword
            }
            , success: function (message) {
                let msgCode = message['msgCode'];
                if (msgCode === message['success']) {
                    $('#gemini-old-pwd-tips-div-id').text('密码正确！');
                } else if (msgCode === message['failure']) {
                    $('#gemini-old-pwd-tips-div-id').text('密码错误！');
                    form.val('gemini-change-pwd-form-filter', {
                        'gemini-old-pwd-input-name': ''
                    });
                }
            }
            , error: function () {
                layer.msg('系统繁忙', {icon: 5});
            }
        });
    });

    /**
     * 确认密码获取焦点事件
     */
    $('#gemini-confirm-pwd-input-id').focus(function () {
        let newPassword = form.val('gemini-change-pwd-form-filter')['gemini-new-pwd-input-name'];
        newPassword = $.trim(newPassword);
        console.log(newPassword);
        if (newPassword.length === 0) {
            $('#gemini-confirm-pwd-tips-div-id').text('请输入新密码！');
            $('#gemini-new-pwd-input-id').focus();
            return;
        } else if (newPassword.length < 6 || newPassword.length > 12) {
            $('#gemini-new-pwd-tips-div-id').text('密码长度不符合要求');
            $('#gemini-new-pwd-input-id').focus();
            form.val('gemini-change-pwd-form-filter', {
                'gemini-new-pwd-input-name': ''
            });
            return;
        }else if (!new RegExp('^[a-zA-Z0-9\\s·]+$').test(newPassword)) {
            $('#gemini-new-pwd-tips-div-id').text('密码格式不符合要求');
            $('#gemini-new-pwd-input-id').focus();
            form.val('gemini-change-pwd-form-filter', {
                'gemini-new-pwd-input-name': ''
            });
            return;
        }
        $('#gemini-new-pwd-tips-div-id').text('密码符合要求');
    });
});