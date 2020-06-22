<#include "module/default.ftl">
<@default title="日志 - ${blog_title!}">

<link rel="stylesheet" href="${theme_base!}/source/css/journals/style.css">
<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <!-- Page Header -->
<header class="intro-header" style="background-image: url('http://bk.img.langhe.vip/FpzHG6LUvxn1dgbTGkpY3WVzzhDB')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading" id="tag-heading">
                    <h1>日志</h1>
                    <span class="subheading">偶然还是可以发发癫</span>
                </div>
            </div>
        </div>
    </div>
</header>

    <!-- Main Content -->
    <div class="container">
        <div class="row" >
            <div class="col-lg-12  col-md-12 ">
                <div class="content">
                    <div class="wrapper">
                        <div class="light"><i></i></div>
                        <hr class="line-left">
                        <hr class="line-right">
                        <div class="main">
                            <h1 class="title">日志</h1>


                            <#assign yyyy=""/>
                            <#assign cot=1/>
                            <#list journals.content as journal>

                                <#if (journal. type=="PUBLIC")>

                                    <#if ((journal.createTime?string("yyyy-MM"))!=yyyy)>

                                        <#if (cot!=1)>
                                                </ul>
                                            </div>
                                        </div>
                                        </#if>

                                        <#assign cot=2/>
                                        <div class="year">
                                            <h2><a href="#">${(journal.createTime?string("yyyy-MM"))!}<i></i></a></h2>
                                            <div class="list">
                                             <ul>
                                                <li class="cls">
                                                    <p class="date">${(journal.createTime?string("MM-dd"))!}</p>
                                                    <p class="intro">&nbsp;</p>
                                                    <p class="version">&nbsp;  </p>
                                                    <div class="more">
                                                        <p>${journal.content}</p>
                                                    </div>
                                                </li>
                                        <#assign yyyy=(journal.createTime?string("yyyy-MM"))/>
                                    <#elseif ((journal.createTime?string("yyyy-MM"))==yyyy)>
                                        <li class="cls highlight">
                                            <p class="date">${(journal.createTime?string("MM-dd"))!}</p>
                                            <p class="intro">&nbsp;</p>
                                            <p class="version">&nbsp; </p>
                                            <div class="more">
                                                <p>${journal.content}</p>
                                            </div>
                                        </li>
                                    </#if>
                                </#if>

                            </#list>




                        </div>
                        </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <script type="text/javascript">
        $(".main .year .list").each(function(e, target){
            var $target=$(target),
                $ul = $target.find("ul");
            $target.height($ul.outerHeight()), $ul.css("position", "absolute");
        });
        $(".main .year>h2>a").click(function(e){
            e.preventDefault();
            $(this).parents(".year").toggleClass("close");
        });
    </script>
</@default>
