<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<script>
    let login_form = {
        init: function () {
            $('#login_button').click(function () {
                login_form.send();
            });
            $('#register_button').click(function () {
                location.href = "/register";
            });
        },
        send: function () {
            $('#login_form').attr({
                'action': '/loginimpl',
                'method': 'post'
            });
            $('#login_form').submit();
        }
    };

    $(function () {
        login_form.init();
    });

</script>

<div class="col-sm-8">
    <div class="container">
        <h1>로그인</h1><br/>
        <div class="form-horizontal text-left well">
            <form id="login_form" >
                <div class="form-group">
                    <label class="control-label col-sm-2" for="id">아이디:</label>
                    <div class="col-sm-8">
                        <input type="text" name="id" class="form-control" id="id" placeholder="Enter ID">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">비밀번호:</label>
                    <div class="col-sm-8">
                        <input type="password" name="pwd" class="form-control" id="pwd" placeholder="Enter password">
                    </div>
                </div>
                <div class="form-group" >
                    <div class="col-sm-offset-2 col-sm-8">
                        <div class="checkbox">
                            <label><input type="checkbox"> 아이디 기억하기 </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button id="login_button" class="btn btn-default">로그인 하기</button>
                    </div>
                </div>
            </form>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="row">
                        <div class="col-sm-9">
                            <span id="register_info" style="display: flex; align-items: flex-end;">모신사 방문이 처음이시라면?>></span>
                        </div>
                        <div class="col-sm-3">
                            <button id="register_button" class="btn btn-default">회원가입 하기</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .container {
        width: 100%
    }
    #register_info{
        float: right;
        color: #0b5ed7;
        font-size: 1.5em;
    }
    #login_button {
        float: right;
    }
    #login_button {
        width: 150px;
        height: 30px;
        border-radius: 0;
        font-size: 12px;
        background-color: white;
        vertical-align: middle;
        margin-right: 20px;
    }
    #login_button:hover {
        color: white;
        background-color: #222222;
    }
    #register_button {
        float: right;
    }
    #register_button {
        width: 150px;
        height: 30px;
        border-radius: 0;
        font-size: 12px;
        background-color: white;
        vertical-align: middle;
        margin-right: 20px;
    }
    #register_button:hover {
        color: white;
        background-color: #222222;
    }
</style>