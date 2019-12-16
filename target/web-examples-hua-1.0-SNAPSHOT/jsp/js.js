$(function () {
    $(".nav>h2").click(function () {
        // 被点击标题之后的ul元素，与标题平级
        let ul = $(this).next("ul");
        // 此二级导航，滑动切换
        ul.slideToggle();
        // 其他二级导航，排除当前导航，全部滑上
        $(".nav>ul").not(ul).slideUp();
    });
})