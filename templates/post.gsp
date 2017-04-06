<%include "header.gsp"%>

	<%include "menu.gsp"%>

	<div class="page-header">
        <div class="row">
            <div class="col-xs-12 col-md-8"><h1>${content.title}</h1></div>
        </div>
	</div>

    <div class="row">

        <div class="col-sm-8" itemscope itemtype="http://schema.org/Blog">

        <p>
            <em>
                <time itemprop="datePublished"
                      datetime="${content.date.format("yyyy-MM-dd")}">
                    ${content.date.format("dd MMMM yyyy")}
                </time>
            </em>
        </p>

        <meta itemprop="name" content="${content.title}"/>

        <div itemprop="author" itemscope itemtype="http://schema.org/Person">
            <meta itemprop="name" content="Yan Bonnel"/>
        </div>
        <meta itemprop="inLanguage" content="fr-FR"/>
        <meta itemprop="url" content="${config.site_host}/${content.uri}"/>
        <meta itemprop="discussionUrl" content="${config.site_host}/${content.uri}#disqus_thread"/>



        <p>Tags :
        <meta itemprop="keywords" content="${content.tags.join(",")}"/>
        <%
            out << content.tags.collect { post_tag ->
                """<a href="${content.rootpath}tags/${post_tag}.html">${post_tag}</a>"""
            } .join(", ")
        %>
        </p>

				<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://xmunch.com/me/${content.uri}" data-text="${content.title}" data-via="dgrmunch" data-lang="fr">[Share in Twitter]</a>
				<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
				<div class="g-plusone" data-size="medium" data-href="http://xmunch.com/me/${content.uri}"></div>

        <div class="blogpost" itemprop="blogPost">
        <p>${content.body}</p>
        </div>

    </div>

    		<%include "sidebar.gsp"%>

<%include "footer.gsp"%>
