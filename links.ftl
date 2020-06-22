<#include "module/default.ftl">
<@default title="链接收藏 - ${blog_title!}">

<link rel="stylesheet" href="${theme_base!}/source/css/limks/iconfont.css">
<link rel="stylesheet" href="${theme_base!}/source/css/limks/style.css">


    <!-- Page Header -->
<header class="intro-header" style="background-image: url('http://bk.img.langhe.vip/FpzHG6LUvxn1dgbTGkpY3WVzzhDB')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading" id="tag-heading">
                    <h1>链接收藏</h1>
                    <span class="subheading">或许会有想不到的惊喜</span>
                </div>
            </div>
        </div>
    </div>
</header>

    <!-- Main Content -->
    <div class="container">

        <div class="row">
            <div class="col-lg-12  col-md-12 ">
                <div class="container" id="container">
                    <section class="main">
                        <div id="mainContent">
                            <@linkTag method="listTeams">
                                <#list teams as item>
                                    <!-- 技术博客 -->
                                    <div class="box">
                                        <a href="#" name="${item.team}"></a>
                                        <div class="sub-category">
                                            <div><i class="iconfont icon-blogger"></i>${item.team}</div>
                                        </div>
                                        <div>
                                            <#list item.links as link>
                                                <a href=""></a>
                                                <a target="_blank" href="${link.url!}">
                                                    <div class="item">
                                                        <div class="logo"><img src="${link.logo!}" alt="${link.name!}"> ${link.name!}</div>
                                                        <div class="desc">${link.description!}</div>
                                                    </div>
                                                </a>
                                            </#list>
                                        </div>
                                    </div>
                                </#list>
                            </@linkTag>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>

    <script>
        var oMenu = document.getElementById('menu');
        var oBtn = oMenu.getElementsByTagName('a')[0];
        var oLeftBar = document.getElementById('leftBar');
        oBtn.onclick = function() {
            if (oLeftBar.offsetLeft == 0) {
                oLeftBar.style.left = -249 + 'px';
            } else {
                oLeftBar.style.left = 0 + 'px';
            }
            if (document.documentElement.clientWidth <= 481) {
                document.onclick = function() {
                    if (oLeftBar.offsetLeft == 0) {
                        console.log(123);
                        oLeftBar.style.left = -249 + 'px';
                    }
                }
            }
        }

        var oNavItem = document.getElementById('navItem');
        var aA = oNavItem.getElementsByTagName('a');
        for(var i=0; i<aA.length; i++) {
            aA[i].onclick = function() {
                for(var j=0; j<aA.length; j++) {
                    aA[j].className = '';
                }
                this.className = 'active';
            }
        }
    </script>
</@default>
