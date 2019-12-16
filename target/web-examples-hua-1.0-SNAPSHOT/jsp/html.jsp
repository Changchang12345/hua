<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

</head>
<body>
<script src="/jsp/jquery-3.4.1.min.js"  type="text/javascript"></script>
<script src="/jsp/js.js" type="text/javascript" ></script>
<style>
    * {
        box-sizing: border-box;
        padding: 0;
        margin: 0;
    }
    .news{
        margin-top:0px;
        width: 100%;
        background-image: url("https://ww4.sinaimg.cn/bmiddle/6c942574ly1g9iqa3gbp0j21gr0u0jt1.jpg");
    }
    .news h2{
        padding: 15px;
        text-align: center;
        font-family: 新宋体;
        color: red;
    }
    .new{
        background-color: white;
        opacity: 0.6;
        padding: 40px;
        height: 250px;
    }
    .head a{
        color: white;
        text-decoration: none;
        font-size: 1.3em;
        margin-left: 500px;
    }
    .container {
        margin-top: 0px;
        display: grid;
        flex-direction: column;
        grid-template-columns: repeat(6,1fr);
        grid-template-areas: "side side side side side side"
    }
    .head{
        background-image: url("https://ww4.sinaimg.cn/bmiddle/6c942574ly1g9iqa3gbp0j21gr0u0jt1.jpg");
    }
    .pic{
        grid-area: pic;
        width: 100%;
        background-image: url("https://icec.nefu.edu.cn/images/20181228105917.jpg");
    }
    .pic img{
        width: 800px;
        height: 480px;
    }
    .head h1{
        text-align: center;
        color: antiquewhite;
        font-family: "华文行楷";
        padding:20px 5px;
    }
    .side{
        height: 100%;
        width:100%;
        margin-top: 0px;
        grid-area: side;
        background-image:url("https://ww4.sinaimg.cn/bmiddle/6c942574ly1g9iqa3gbp0j21gr0u0jt1.jpg");
    }
    .side ul{
        display: none;
        list-style-type: none;
    }
    .nav a{
        display: block;
        text-decoration: none;
        color: white;
        padding: 5px 10px;
        text-align: center;
        font-size: 17px;
    }
    .nav h2{
        width: 100%;
        padding:30px 15px ;
        transition: transform 0.5s;
        color:white;
        text-align: center;
        font-weight: bold;
    }
    .nav h2.header1{
        opacity: 0.9;
    }
    .nav h2.header2{
        opacity: 0.8;
    }
    .nav h2.header3{
        opacity: 0.7;
    }
    .nav h2.header4{
        opacity: 0.6;
    }
    .nav h2.header5{
        opacity: 0.5;
    }
    .nav h2:hover{
        opacity: 1;
        transform: scale(1.1);
        cursor: pointer;
        border-radius: 10px;
    }
    .nav a:hover{
        color: peru;
    }
    .footer{
        margin-top:30px;
        background-image: url("https://ww4.sinaimg.cn/bmiddle/6c942574ly1g9iqa3gbp0j21gr0u0jt1.jpg");
    }
    .footer p{
        margin-left: 750px;
        padding:15px 5px 10px 10px;
        font-size: 15px;
        color: white;
    }
    .hua{
        background-image: url("https://ww4.sinaimg.cn/bmiddle/6c942574ly1g9iqa3gbp0j21gr0u0jt1.jpg");
        margin-top: px;
        padding: 20px;
        display: grid;
        flex-direction: column;
        grid-template-columns: repeat(5,1fr);
        grid-template-areas: " biao biao biao biao biao"
                               " p1 p2 p3 p4 p5";

    }
    .hua #p1{
        text-align: center;
        grid-area: p1;
    }
    .hua #p2{
        text-align: center;
        grid-area: p2;
    }
    .hua #p3{
        text-align: center;
        grid-area: p3;
    }
    .hua #p4{
        text-align: center;
        grid-area: p4;
    }
    .hua #p5{
        text-align: center;
        grid-area: p5;
    }
    .hua .t1{
        padding: 10px;
        width: 120px;
        height: 120px;
        overflow: hidden;
        border-radius: 100%;
        opacity: 1;
    }
    .biao{
        padding: 15px;
        text-align: center;
        font-family: 新宋体;
        grid-area: biao;
        color: white;
    }
    .hh{
        margin:20px 25px;
        background-color: rgba(255,255,255,0.7);
        color: black;
        font-family: 新宋体;
    }
    .hh:hover{
        box-shadow: 0 4px 8px 0 red, 0 6px 20px 0 red;
    }
    .hh a{
        display: inline-block;
        padding: 5px 8px;
        background: #f44336;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }
    .last{
        margin-top: 0px;
        background-image: url("https://ww4.sinaimg.cn/bmiddle/6c942574ly1g9iqa3gbp0j21gr0u0jt1.jpg");
    }
    .last #yy{
        height: 250px;
    }
    .new1{
        background-color: white;
        opacity: 0.6;
        padding: 40px;
    }
</style>
<div class="head">
    <img src="https://icec.nefu.edu.cn/images/lolo.png">
    <a href="/login" >登录</a>
</div>
<div class="container">
    <div class="side">
        <div class="nav">
            <h2  class="header1">专业概况</h2>
            <ul class="1">
                <li><a href="/jsp/description.jsp">专业简介</a></li>
                <li><a href="">专业领导</a></li>
                <li><a href="">相关委员会</a></li>
            </ul>
        </div>
        <div class="nav">
            <h2 class="header2" >毕业指导</h2>
            <ul class="2">
                <li><a>考研</a></li>
                <li><a>保研</a></li>
                <li><a>就业</a></li>
            </ul>
        </div>
        <div class="nav">
            <h2 class="header3" >师资队伍</h2>
            <ul class="3">
                <li><a href="/jsp/teacher.jsp">讲师</a></li>
                <li><a href="/jsp/htch.jsp">教授</a></li>
                <li><a href="/jsp/tch.jsp">副教授</a></li>
            </ul>
        </div>
        <div class="nav">
            <h2 class="header4" >学科建设</h2>
            <ul class="4">
                <li><a>博士学位授权点</a></li>
                <li><a>硕士学位点</a></li>
                <li><a>博士生导师</a></li>
                <li><a>硕士生导师</a></li>
            </ul>
        </div>
        <div class="nav">
            <h2 class="header5" >科学研究</h2>
            <ul class="5">
                <li><a>科研项目</a></li>
                <li><a>研究成果及奖项</a></li>
            </ul>
        </div>
    </div>
</div>
    <div class="news">
        <h2>新闻公告</h2>
        <div class="new"><%@ include file="../admin/data.jsp"%></div>
    </div>
<div class="hua">
    <div class="biao"><h2>优秀毕业生</h2></div>
    <div id="p1" class="hh">
        <img src="../resources/ke.JPG" class="t1" >
        <h4>名字：壳哥</h4>
        <h5>级别：神仙</h5>
        <h5>优秀事迹：曾获得ET特别青睐奖</h5>
        <a href="/jsp/stu.jsp">查看更多</a>
    </div>
    <div id="p2" class="hh">
        <img class="t1" src="../resources/zha.JPG">
        <h4>名字：炸炸</h4>
        <h5>级别：神仙</h5>
        <h5>优秀事迹：曾获得ET特别青睐奖</h5>
        <a href="/jsp/stu.jsp">查看更多</a>
    </div>
    <div id="p3" class="hh">
        <img class="t1" src="../resources/sa.jpg">
        <h4>名字：飒飒</h4>
        <h5>级别：神仙</h5>
        <h5>优秀事迹：曾获得ET特别青睐奖</h5>
        <a href="/jsp/stu.jsp">查看更多</a>
    </div>
    <div id="p4" class="hh">
        <img class="t1" src="../resources/juan.JPG">
        <h4>名字：卷鹅</h4>
        <h5>级别：神仙</h5>
        <h5>优秀事迹：曾获得ET特别青睐奖</h5>
        <a href="/jsp/stu.jsp">查看更多</a>
    </div>
    <div id="p5" class="hh">
        <img class="t1" src="../resources/shi.jpg">
        <h4>名字：十爷</h4>
        <h5>级别：神仙</h5>
        <h5>优秀事迹：曾获得ET特别青睐奖</h5>
        <a href="/jsp/stu.jsp">查看更多</a>
    </div>
</div>
<div class="last">
    <div class="biao"><h2>今日共勉</h2></div>
    <div class="new1" id="yy">
        <p>树根厚重，树叶轻飘，重是轻的根基；安静厚重，浮躁轻飘，静是躁的主宰。就像君子出行离不开辎重车辆，有品格的人沉稳厚重，就算拥有华丽的生活，也如燕居一样超然处之。
        </p>
    </div>
</div>
<div class="footer">
    <p>版权所有 2019 东北林业大学信息与计算机工程学院  技术支持：数建办</p>
</div>
</body>
<script><%@include file="jquery-3.4.1.min.js"%></script>
<script>
    $(function () {
        $(".nav>h2").click(function () {
            // 被点击标题之后的ul元素，与标题平级
            let ul = $(this).next("ul");
            // 此二级导航，滑动切换

            // 其他二级导航，排除当前导航，全部滑上
            $(".nav>ul").not(ul).slideUp();
        });
    })
</script>
</html>
