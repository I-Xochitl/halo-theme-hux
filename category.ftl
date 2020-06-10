<#include "module/default.ftl">
<@default title="${category.name} - ${blog_title!}">
    <#include "module/page.ftl">

    <!-- Page Header -->
<header class="intro-header" style="background-image: url('${category.thumbnail}')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading" id="tag-heading">
                    <h1>${category.name}</h1>
                    <span class="subheading">${category.description}</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">

        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <@postTag method="listByCategoryId" categoryId="${category.id}">
                <#list posts as post>
                <div class="post-preview">
                    <a href="${post.fullPath!}">
                        <h2 class="post-title">
                            ${post.title!}
                        </h2>
                        <div class="post-content-preview">
                            ${post.summary}
                        </div>
                    </a>
                    <p class="post-meta">
                        Posted by ${user.nickname!} on ${post.createTime?string("MM-dd，yyyy")}
                    </p>
                </div>
                <hr>
            </#list>
            </@postTag>

            <div class="mini-post-list js-result">
                <#include "module/page.ftl">
            </div>
        </div>
    </div>
</div>
</@default>
