<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%--<style>--%>
<%--    .container {--%>
<%--        width: 100%--%>
<%--    }--%>
<%--   --%>
<%--    #login_btn {--%>
<%--        float: right;--%>
<%--        width: 150px;--%>
<%--        height: 30px;--%>
<%--        border-radius: 0;--%>
<%--        font-size: 12px;--%>
<%--        background-color: white;--%>
<%--        vertical-align: middle;--%>
<%--        margin-right: 20px;--%>
<%--    }--%>
<%--    #login_btn:hover {--%>
<%--        color: white;--%>
<%--        background-color: #222222;--%>
<%--    }--%>
<%--</style>--%>

<script>

    let login_form = {
        init:function(){
            $('#login_btn').click(function(){
                login_form.send();
            });
        },
        send:function(){
            $('#login_form').attr({
                'action':'/loginimpl',
                'method':'post'
            });
            $('#login_form').submit();
        }
    };

    $(function(){
        login_form.init();
    });
</script>

<div class="col-sm-8">
    <div class="container">
        <div class="row content">
            <div class="col-sm-10">

                <h1>�α���</h1><br/>

                <form id="login_form" class="form-horizontal text-left well">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="id">���̵�:</label>
                        <div class="col-sm-8">
                            <input type="text" name="id" class="form-control" id="id" placeholder="Enter ID">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">��й�ȣ:</label>
                        <div class="col-sm-8">
                            <input type="password" name="pwd" class="form-control" id="pwd" placeholder="Enter password">
                        </div>
                    </div>
                    <div class="form-group" >
                        <div class="col-sm-offset-2 col-sm-8">
                            <div class="checkbox">
                                <label><input type="checkbox"> ���̵� ����ϱ� </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button id="login_button" type="button" class="btn btn-default">�α��� �ϱ�</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div> <!--container end-->
</div>

