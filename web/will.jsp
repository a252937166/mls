<%--
  Created by IntelliJ IDEA.
  User: 欧阳杜泞
  Date: 2016/8/7
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" style="width: 100%;height: 100%">
        <div class="item active">
            <img src="/mls/imgs/1.jpg">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="/mls/imgs/2.jpg">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="/mls/imgs/3.jpg">
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="/mls/imgs/4.jpg">
            <div class="carousel-caption">
            </div>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
