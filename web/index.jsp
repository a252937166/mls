<%--
  Created by IntelliJ IDEA.
  User: Duning Ouyang
  Date: 2016/7/31 0031
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/iconfont.css">
    <script type="text/javascript" src="js/jQuery.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>

    <style type="text/css">
        /*最外层容器*/
        .container {
            width: 1366px;
            max-width: none !important;
            height: 5000px;
            padding: 0;
            font-family: "Microsoft YaHei";
        }

        /*最外层容器   内部第一层div*/
        .container div {
            padding: 0;
        }

        img {
            width: 100%;
            height: 100%;
        }

        /*顶部三个贯穿区域，以及底部*/
        #tp1, #tp2, #tp3, #footer {
            width: 100%;
            background-color: #ffffff;
            margin-bottom: 1px;
        }

        #tp1 {
            padding-top: 4px;
            height: 30px;
            padding-right: 50px;
            border-bottom: 1px solid #eeeeee;
            /*border-width: thin;*/
        }

        #tp1 div {
            height: 22px;
            line-height: 22px;
            border-left: 1px dotted #cccccc;
            padding-left: 18px;
            padding-right: 18px;
        }

        #tp1 a {
            color: gray;
            font-size: 12px;
            text-decoration: none;
        }

        #tp1 a:hover {
            color: #ff6699;
        }

        #tp2 {
            height: 120px;
        }

        #tp3 {
            z-index: 9;
            height: 43px;
            border-bottom: 1px #FF6699 solid;
            padding-bottom: 2px;
            margin-bottom:0px;
        }

        .tp3_link_1{
            font-weight: bold;
            float: left;
            width:60px;
            margin-right:12px;
            text-align:center;
        }

        .tp3_link_2{
            font-weight: bold;
            color: #ff6699;;
            float: left;
            width:60px;
            margin-right:12px;
            text-align:center;
        }

        #the_more{
            position: absolute;
            z-index: 9;
            background-color: #ffffff;
            top:0px;
            width:100px;
        }

        #the_more div{
            line-height:30px;
            text-align: center;
        }

        #the_more div:hover{
            background-color: #f7f5f7;
        }

        #the_more div:hover a{
            color: #ff6699;
        }

        #the_more a{
            width:100%;
            font-size: 14px;
            color:black;
        }


        .tp3_link_1:hover,.tp3_link_2:hover{
            border-bottom:2px solid #ff6699;
            color:#ff6699;
        }

        /*顶部导航*/
        .tp3_scroll {
            position: fixed;
            top: 0px;
            z-index: 9;

        }

        /*更多菜单*/
        .the_more_scroll {
            background-color: black;
            position: fixed;
            top: 43px;
            z-index: 9;
        }

        /*底部*/
        #footer {
            height: 260px;
            background-color: #dddddd
        }

        #body_dv1_bottm {
            height: 28%;
            width: 80%;
            padding-top: 15px
        }

        #body_dv3 {
            height: 272px;
        }

        #body_div4 {
            height: 912px;
        }

        #body_div4 img {
            height: 340px;
        }

        #body_dv7 img {
            height: 230px;
        }

        #body_dv8 img {
            height: 332px;
        }

        #body_dv9 img {
            height: 340px;
        }

        .body_dv1_bottom_item {
            width: 18%;
            margin-left: 2%;
            height: 97.5%
        }

        .body_dv2_item {
            width: 32%;
            height: 350px;
            margin-right: 2%
        }

        .body_dv3_item {
            width: 15%;
            height: 227px;
            margin-right: 2%
        }

        .body_div4_item {
            width: 18%;
            height: 45%;
            margin-right: 2.5%;
            margin-top: 1px
        }

        .body_dv5_item {
            width: 32%;
            height: 400px;
            margin-right: 2%
        }

        .body_dv6_item {
            width: 32%;
            height: 400px;
            margin-right: 2%
        }

        .body_dv7_item {
            width: 32%;
            height: 300px;
            margin-right: 2%
        }

        .body_dv8_item {
            width: 32%;
            height: 400px;
            margin-right: 2%
        }

        .body_dv9_item {
            width: 18%;
            height: 45%;
            margin-right: 2.5%;
            margin-bottom: 1px;
        }

        #toolbar_right {
            z-index: 11;
            width: 40px;
            height: 260px;
            background-color: #F6F6F6;
            right: 0px;
            position: fixed;
            top: 50px;
        }

        #toolbar_right button {
            width: 100%;
            height: 50%;
            background-color: transparent;
            border: 1px solid #dddddd;
        }

        #toolbar_right button:hover {
            background-color: #ff6699;
            color: #ffffff;
        }

        #toolbar_right button i {
            color: #ff6699;
        }

        #toolbar_right button i:hover {
            color: #ffffff;
        }

        #to_Top {
            z-index: 9;
            padding-top: 5px;
            display: none;
            width: 40px;
            height: 40px;
            background-color: #F6F6F6;
            position: fixed;
            top: 500px;
            right: 0px;
            text-align: center;
            border: 1px solid #dddddd;
        }

        #toolbar_right_hover {
            z-index: 10;
            width: 40px;
            height: 100%;
            background-color: #F6F6F6;
            right: -40px;
            position: fixed;
            top: 0px;
            border: 1px solid #dddddd;
        }

        #toolbar_right_hover button {
            width: 100%;
            background-color: transparent;
            height: 40px;
            border: 0px;
            border-bottom: 1px solid #dddddd;
            color: #ff6699;
        }

        #toolbar_right_hover button:hover {
            background-color: #ff6699;
            color: #ffffff;
        }

        #dv8_hover {
            background-color: black;
            opacity: 0.5;
            position: absolute;
        }

        #dv8_hover button {
            width: 100px;
            line-height: 40px;
            color: #ffffff;
            background-color: black;
            border: 1px solid #ffffff;
            margin-left: 35%;
            margin-top: 50px;
        }

        #dv8_hover button:hover {
            width: 100px;
            line-height: 40px;
            color: black;
            background-color: #ffffff;
            border: 1px solid black;
            margin-left: 35%;
            margin-top: 50px;
        }

        .left_item_list {
            position: absolute;
            background-color: red;
            width: 300px;
            height: 200px;
            z-index: 7;
            background-color: #ffffff;
            border: 1px solid #cccccc;
        }

    </style>
</head>
<body>
<div class="container ">
    <%--头部--%>

    <%--首页导航1--%>
    <div id="tp1">
        <div class="pull-right">
            <a href="">
                帮助中心
            </a>
        </div>
        <div class="pull-right">
            <a href="">
                <i class="glyphicon glyphicon-phone" style="color: #cccccc;"></i>
                &nbsp;下载App
            </a>
        </div>
        <div class="pull-right">
            <a href="">
                <i class="glyphicon glyphicon-list-alt" style="color: #cccccc;"></i>
                &nbsp;我的订单
            </a>
        </div>
        <div class="pull-right">
            <a href="">
                <i class="glyphicon glyphicon-shopping-cart" style="color: #ff6699;"></i>
                &nbsp;我的购物车
            </a>
        </div>
        <div class="pull-right">
            <a href="">
                注册
            </a>
        </div>
        <div class="pull-right">
            <a href="">
                登录
            </a>
        </div>
        <div class="pull-right">
            <a href="">
                <i class="iconfont">&#xe607;</i>
                QQ登录
            </a>
        </div>
        <div class="pull-right">
            <a href="">
                <i class="iconfont">&#xe632;</i>
                微信登录
            </a>
        </div>
    </div>

    <%--首页导航2--%>
    <div id="tp2">
        <div class="col-lg-10 col-lg-offset-1">
            <div class="col-lg-4">
                <img src="/mls/imgs/mls_logo.png" style="width: auto;height: auto;margin-top: 30px;">
            </div>

            <div class="col-lg-6 text-left" style="margin-top: 20px;">
                <div>
                    <button class="btn"
                            style="border: 0px;border-radius: 0px;background-color: #ff6699;font-size: 12px;height: 25px;line-height: 12px">
                        宝贝
                    </button>
                    <button class="btn"
                            style="border: 0px;border-radius: 0px;background-color: #f3f1f3;font-size: 12px;height: 25px;line-height: 12px">
                        店铺
                    </button>
                </div>

                <div class="col-lg-10" style="background-color: #ff6699;padding: 2px">
                    <input type="text" class="form-control"
                           style="height: 25px;border-radius: 0px;border: 0px;width: 85%;float: left;">
                    <button class="btn" style="background-color: transparent;float: left;"><i
                            class="glyphicon glyphicon-search"
                            style="color: white;margin-top: -3px;width: 15%;margin-left: 10px"></i></button>
                </div>
                <br>
                <br>
                <div style="font-size: 12px;color: #ff6699">
                    连衣裙 拖鞋 短裤 套装 泳衣 长裙 睡衣 凉鞋 双肩包 帽子
                </div>
            </div>

        </div>
    </div>

    <%--首页导航3--%>
    <div id="tp3" class="col-lg-12">
        <div class="col-lg-10 col-lg-offset-1" style="line-height: 40px">
            <div class="tp3_link_1">
                首页
            </div>
            <div class="tp3_link_1">
                最热
            </div>
            <div class="tp3_link_1">
                上衣
            </div>
            <div class="tp3_link_1">
                裙子
            </div>
            <div class="tp3_link_1">
                裤子
            </div>
            <div class="tp3_link_1">
                鞋子
            </div>
            <div class="tp3_link_1">
                包包
            </div>
            <div class="tp3_link_1">
                配饰
            </div>
            <div class="tp3_link_1" id="find_more" style="width: 100px">
                更多
            </div>
            <div style="float: left;width:30px;border-left:1px solid #cccccc ;height: 16px;margin-top: 12px">
                &nbsp;
            </div>
            <div class="tp3_link_2">
                Hi范儿
            </div>
            <div class="tp3_link_2">
                明星同款
            </div>
            <div class="tp3_link_2">
                韩国馆
            </div>
            <div class="tp3_link_2">
                团购
            </div>
            <div class="tp3_link_2">
                福利社
            </div>
        </div>
    </div>


    <%--滚屏广告部分--%>
    <div class="col-lg-10 col-lg-offset-1" style="height:500px;" id="body_dv1">

        <%--  左侧导航--%>

        <div class="col-lg-3" style="height: 100%;width:20%;z-index: 8;" id="body_dv1_left">
            <div role="left_item_panel" class="col-lg-12"
                 style="width: 100%;height: 20%;background-color: #ffffff;border-left: 1px solid #cccccc">
                <div role="left_item"
                     style="width:75%;height:100%;margin-left: 10%;float: left;border-bottom: 1px dotted #cccccc;">
                    <h4>每日精选</h4>
                    秋季新品 T恤 雪纺衫 衣裙套装 连衣裙 泳衣 短裤 凉鞋 拖鞋 双肩包 防晒霜
                </div>
                <div style="width:6%;height: 100%;float: left;">
                    <i class="glyphicon glyphicon-menu-right" style="margin-top: 40px;color: #cccccc;"></i>
                </div>
            </div>

            <div role="left_item_panel" class="col-lg-12"
                 style="width: 100%;height: 20%;background-color: #ffffff;border-left: 1px solid #cccccc">
                <div role="left_item"
                     style="width:75%;height:100%;margin-left: 10%;float: left;border-bottom: 1px dotted #cccccc;">
                    <h4>2016流行</h4>
                    秋季新品 T恤 雪纺衫 衣裙套装 连衣裙 泳衣 短裤 凉鞋 拖鞋 双肩包 防晒霜
                </div>
                <div style="width:6%;height: 100%;float: left;">
                    <i class="glyphicon glyphicon-menu-right" style="margin-top: 40px;color: #cccccc;"></i>
                </div>
            </div>

            <div role="left_item_panel" class="col-lg-12"
                 style="width: 100%;height: 20%;background-color: #ffffff;border-left: 1px solid #cccccc">
                <div role="left_item"
                     style="width:75%;height:100%;margin-left: 10%;float: left;border-bottom: 1px dotted #cccccc;">
                    <h4>时尚经典</h4>
                    秋季新品 T恤 雪纺衫 衣裙套装 连衣裙 泳衣 短裤 凉鞋 拖鞋 双肩包 防晒霜
                </div>
                <div style="width:6%;height: 100%;float: left;">
                    <i class="glyphicon glyphicon-menu-right" style="margin-top: 40px;color: #cccccc;"></i>
                </div>
            </div>

            <div role="left_item_panel" class="col-lg-12"
                 style="width: 100%;height: 20%;background-color: #ffffff;border-left: 1px solid #cccccc">
                <div role="left_item"
                     style="width:75%;height:100%;margin-left: 10%;float: left;border-bottom: 1px dotted #cccccc;">
                    <h4>实穿百搭</h4>
                    秋季新品 T恤 雪纺衫 衣裙套装 连衣裙 泳衣 短裤 凉鞋 拖鞋 双肩包 防晒霜
                </div>
                <div style="width:6%;height: 100%;float: left;">
                    <i class="glyphicon glyphicon-menu-right" style="margin-top: 40px;color: #cccccc;"></i>
                </div>
            </div>

            <div role="left_item_panel" class="col-lg-12"
                 style="width: 100%;height: 20%;background-color: #ffffff;border-bottom: 1px solid #cccccc;border-left: 1px solid #cccccc;">
                <div role="left_item" style="width:75%;height:100%;margin-left: 10%;float: left;">
                    <h4>美好生活</h4>
                    秋季新品 T恤 雪纺衫 衣裙套装 连衣裙 泳衣 短裤 凉鞋 拖鞋 双肩包 防晒霜
                </div>
                <div style="width:6%;height: 100%;float: left;">
                    <i class="glyphicon glyphicon-menu-right" style="margin-top: 40px;color: #cccccc;"></i>
                </div>
            </div>
        </div>

        <%--右侧滚动--%>

        <div class="col-lg-9 bg-danger" style="height: 72%;width:80%">
            <%@ include file="will.jsp" %>
        </div>

        <%--右侧下方主题--%>

        <div class="col-lg-9" id="body_dv1_bottm">

            <div>
                <div class="col-lg-12">
                    <div class="thumbnail">
                        <img src="/mls/imgs/dv1_bottom1.jpg" alt="...">
                    </div>
                </div>
            </div>

            <div>
                <div class="col-lg-12">
                    <div class="thumbnail">
                        <img src="/mls/imgs/dv1_bottom2.jpg" alt="...">
                    </div>
                </div>
            </div>

            <div>
                <div class="col-lg-12">
                    <div class="thumbnail">
                        <img src="/mls/imgs/dv1_bottom3.jpg" alt="...">
                    </div>
                </div>
            </div>

            <div>
                <div class="col-lg-12">
                    <div class="thumbnail">
                        <img src="/mls/imgs/dv1_bottom4.jpg" alt="...">
                    </div>
                </div>
            </div>

            <div>
                <div class="col-lg-12">
                    <div class="thumbnail">
                        <a href="www.baidu.com">
                            <img src="/mls/imgs/dv1_bottom5.jpg" alt="...">
                        </a>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="col-lg-10 col-lg-offset-1 " style="height:400px;margin-top: 50px" id="body_dv2">
        每日新款发售
        <hr style="margin-top: 0px">
        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv2_1.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv2_2.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv2_3.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-10 col-lg-offset-1 " id="body_dv3">
        正在流行
        <hr style="margin-top: 0px">
        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv3_1.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv3_2.png" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv3_3.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv3_4.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv3_5.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv3_6.png" alt="...">
                    </a>
                </div>
            </div>
        </div>

    </div>

    <div class="col-lg-10 col-lg-offset-1 " id="body_div4">
        新品精选
        <hr style="margin-top: 0px">
        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/div4_1.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/div4_2.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/div4_3.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/div4_4.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/div4_5.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/div4_6.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/div4_7.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/div4_8.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/div4_9.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/div4_10.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>


    </div>

    <div class="col-lg-10 col-lg-offset-1 " style="height:450px;" id="body_dv5">
        明星同款
        <hr style="margin-top: 0px">
        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv2_1.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv2_2.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv2_3.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-10 col-lg-offset-1 " style="height:450px;" id="body_dv6">
        时尚美妆
        <hr style="margin-top: 0px">
        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv2_1.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv2_2.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv2_3.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-10 col-lg-offset-1 " style="height:400px;" id="body_dv7">
        HI 范儿
        <hr style="margin-top: 0px">
        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv7_1.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv7_2.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv7_3.jpg" alt="...">
                    </a>
                </div>
            </div>
        </div>

    </div>

    <div class="col-lg-10 col-lg-offset-1 " style="height:509px;" id="body_dv8">
        好店推荐 店铺精选 品质保证
        <hr style="margin-top: 0px">
        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv8_1.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv8_2.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv8_3.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-10 col-lg-offset-1 " style="height:915px;" id="body_dv9">
        新店驾到
        <hr style="margin-top: 0px">

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv9_1.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv9_2.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv9_3.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv9_4.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv9_5.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>


        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv9_6.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv9_7.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv9_8.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv9_9.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="col-lg-12">
                <div class="thumbnail">
                    <a href="www.baidu.com">
                        <img src="/mls/imgs/dv9_10.jpg" alt="...">
                    </a>
                    <div class="caption">
                        <p>...</p>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div id="footer" class="col-lg-12"></div>


    <%-- 右侧  购物车客服信息--%>
    <div id="toolbar_right">
        <button><i class="glyphicon glyphicon-shopping-cart"></i><br>购<br>物<br>车
        </button>
        <button><i
                class="glyphicon glyphicon-comment"></i><br>客<br>服<br>信<br>息
        </button>
    </div>

    <%--右侧 返回顶部--%>
    <div id="to_Top">
        <button style="border:0px;background-color: transparent;padding: 0px;font-size:12px;color: #ff6699;">
            <i class="glyphicon glyphicon-menu-up" style="color: #ff6699;margin-top: 50%"></i>
        </button>
    </div>

    <div id="toolbar_right_hover">

        <button style="margin-top: 310px" <%--data-toggle="tooltip" data-placement="left" title="优惠券"--%>>
            <i class="glyphicon glyphicon-yen"></i>
        </button>

        <button <%--data-toggle="tooltip" data-placement="left" title="收藏"--%>>
            <i class="glyphicon glyphicon-heart-empty"></i>
        </button>

        <button <%--data-toggle="tooltip" data-placement="left" title="调查问卷"--%>>
            <i class="glyphicon glyphicon-phone-alt"></i>
        </button>

    </div>


</div>

</body>

<script type="text/javascript">
    (function () {

        /**用于页面顶部导航滚动跟随的方法**/
        function top3_beScrolling() {
            $(window).scroll(function () {
                $("#the_more").css("top",$("#tp3").offset().top+$("#tp3").height());
                if ($(window).scrollTop() >= 100) {
                    $("#to_Top").show();
                } else {
                    $("#to_Top").hide();
                }

                if ($(window).scrollTop() >= 160) {
                    $("#tp3").addClass("tp3_scroll");
                } else {
                    $("#tp3").removeClass("tp3_scroll");
                }

            });
        }

        //用于首页布局的方法
        function page_init() {

            /*页面样式加载*/
            $("#body_dv1_bottm>div").addClass("col-lg-2 bg-primary pull-right body_dv1_bottom_item");

            $("#body_dv2>div").addClass("col-lg-4 bg-danger body_dv2_item");

            $("#body_dv2>div:last").css("margin-right", "0px");

            $("#body_dv3>div").addClass("col-lg-2 bg-danger body_dv3_item");

            $("#body_dv3>div:last").css("margin-right", "0px");

            $("#body_div4>div").addClass("col-lg-2 bg-danger body_div4_item").each(function (i) {
                if (i == 4 || i == 9) {
                    $(this).css("margin-right", "0px")
                }
            });

            $("#body_dv5>div").addClass("col-lg-4 bg-danger body_dv5_item").last().css("margin-right", "0px");

            $("#body_dv6>div").addClass("col-lg-4 bg-danger body_dv6_item").last().css("margin-right", "0px");

            $("#body_dv7>div").addClass("col-lg-4 bg-danger body_dv7_item").last().css("margin-right", "0px");

            $("#body_dv8>div").addClass("col-lg-4 bg-danger body_dv8_item").last().css("margin-right", "0px");

            $("#body_dv9>div").addClass("col-lg-2 bg-danger body_dv9_item").last().css("margin-right", "0px");

            $("#body_dv9>div:eq(4),#body_dv9 div:eq(9),#body_dv9 div:last").css("margin-right", "0px");

            /*右侧工具栏按钮hover效果*/
            $("#toolbar_right button").mouseover(function () {

                $(this).children("i").css("color", "#ffffff");

            }).mouseout(function () {

                $(this).children("i").css("color", "#ff6699");

            });

            /*返回顶部按钮相关操作*/
            $("#to_Top button").mouseover(function () {

                $(this).html("返回<br>顶部");

            }).mouseout(function () {

                $(this).html("<i class='glyphicon glyphicon-menu-up' style='color: #ff6699;margin-top: 50%'></i>");

            }).click(function () {

                $(window).scrollTop("0px");

            });


            /*右侧浮动隐藏工具栏*/

            $("body").mousemove(function (e) {

                if (e.pageX > ($(this).width() - $("#toolbar_right_hover").width())) {
                    $("#toolbar_right_hover").stop();
                    $("#toolbar_right_hover").animate({"right": "0px"}, 200);

                }
                /* else {
                 $("#toolbar_right_hover").stop();
                 $("#toolbar_right_hover").animate({"right":"-40px"},200);
                 }*/

            });

            $("#toolbar_right_hover").mouseout(function () {
                $("#toolbar_right_hover").stop();
                $("#toolbar_right_hover").animate({"right": "-40px"}, 200);
            });

            top3_beScrolling();

            $("#body_dv1_left>div").css("border-right", "1px solid #cccccc");

            $("[role='left_item']").css("color", "#FF6699");

            $("[role='left_item']").mouseover(function () {

                $(this).parent().prev().children("[role='left_item']").css({"border": "0px"});

                $(this).css({"border": "0px"});

                $(this).parent().css({
                    "border-top": "1px solid #cccccc",
                    "border-bottom": "1px solid #cccccc",
                    "border-right": "0px"
                });

                var left_item_list = "<div class='left_item_list'></div>"

                $(".left_item_list").remove();

                $("body").append(left_item_list);

                $(".left_item_list").css("top", $(this).parent().offset().top);
                $(".left_item_list").css("left", $(this).parent().offset().left + $(this).parent().width());
                $(".left_item_list").mouseout(function (event) {
                    if (event.pageX > ($(this).offset().left + 2) || (event.pageX <= ($(this).offset().left + 2) && event.pageY > $("[role='left_item_panel']").height() + $(this).offset().top)) {

                        $(".left_item_list").remove();

                        $("[role='left_item']").each(function (i) {

                            if (i == 4) {

                                $(this).prev().parent().children("[role='left_item']").css({"border-bottom": "1px dotted #cccccc"});

                                $(this).css({"border-bottom": "0px dotted #cccccc"});

                                $(this).parent().css({
                                    "border-top": "0px",
                                    "border-bottom": "1px solid #cccccc",
                                    "border-right": "1px solid #cccccc"
                                });
                            } else {
                                $(this).prev().parent().children("[role='left_item']").css({"border-bottom": "1px dotted #cccccc"});

                                $(this).css({"border-bottom": "1px dotted #cccccc"});

                                $(this).parent().css({
                                    "border-top": "0px",
                                    "border-bottom": "0px",
                                    "border-right": "1px solid #cccccc"
                                });
                            }
                        });
                    }
                });

            });


            $("[role='left_item_panel']").mouseout(function (event) {

                if (event.pageX < $("[role='left_item_panel']").offset().left || event.pageY >= ($(this).offset().top + $(this).height()) - 3 || event.pageY <= $(this).offset().top + 1) {

                    $(".left_item_list").remove();

                    $(this).prev().children("[role='left_item']").css({"border-bottom": "1px dotted #cccccc"});

                    $(this).children("[role='left_item']").css({"border-bottom": "1px dotted #cccccc"});

                    $(this).css({"border-top": "0px", "border-bottom": "0px", "border-right": "1px solid #cccccc"});
                }

            });


            $("[role='left_item_panel']:last").mouseout(function () {

                if (event.pageX < $("[role='left_item_panel']").offset().left || event.pageY >= ($(this).offset().top + $(this).height()) - 3 || event.pageY <= $(this).offset().top + 1) {

                    $(this).prev().children("[role='left_item']").css({"border-bottom": "1px dotted #cccccc"});

                    $(this).children("[role='left_item']").css({"border-bottom": "0px dotted #cccccc"});

                    $(this).css({
                        "border-top": "0px",
                        "border-bottom": "1px solid #cccccc",
                        "border-right": "1px solid #cccccc"
                    });

                }

            });

            $("#find_more").mouseover(function () {
                $("#the_more").remove();

                var more = "<div id='the_more' style='border: 1px solid #cccccc;border-top: 4px solid white'>";
                more +="<div><a>内衣</a></div>";
                more +="<div><a>美妆</a></div>";
                more +="<div><a>男装</a></div>";
                more +="<div><a>童装</a></div>";
                more +="<div><a>家居</a></div>";
                more +="<div><a>小家电</a></div>";
                more +="<div><a>食品</a></div>";
                more +="</div>";

                $("body").append(more);

                $("#the_more").css("left",$(this).offset().left).css("top",$(this).offset().top+$(this).height());

                $("#the_more").mouseout(function (event) {

                    if(event.pageX<$(this).offset().left||event.pageX>$(this).offset().left+$(this).width()||event.pageY>=$(this).offset().top+$(this).height()-2){

                        $("#the_more").remove();

                    }

                });

        });

            $("#find_more").mouseout(function (event) {

                if(event.pageY<$(this).offset().top+$(this).height()-2) {
                    $("#the_more").remove();
                }
            });

            $("#the_more").mouseover(function () {

                console.log("event.pageY-------------->"+event.pageY);

                console.log("$(this).offset().top-------------->"+$(this).offset().top);

                console.log("$(this).height()-------------->"+$(this).height());

                console.log("===================================================================");
                $("#the_more").remove();
            });

        }

        /*好店推荐  鼠标hover 效果*/
        function dv8_hover() {
            $("#body_dv8>div>div").mouseover(function () {
                $("#dv8_hover").remove();
                var $_dv8_hover = "<div id='dv8_hover'></div>";
                $("body").append($_dv8_hover);
                $("#dv8_hover").width($(this).width());
                $("#dv8_hover").height("332px");
                $("#dv8_hover").css({"left": $(this).offset().left, "top": $(this).offset().top});
                var $_dv8_hover_bt1 = "<button>关注</button>";
                var $_dv8_hover_bt2 = "<button>去逛逛</button>";
                $("#dv8_hover").append($_dv8_hover_bt1, $_dv8_hover_bt2);
            });
        }


        $("").ready(function () {

            page_init();
            dv8_hover();

        });

    })();
</script>

</html>
