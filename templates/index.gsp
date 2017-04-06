<%include "header.gsp"%>

	<%include "menu.gsp"%>

	<div class="page-header">
        <div class="row">
          <div class="col-xs-12 col-md-8"><h1>xmunch.com</h1></div>
        </div>
	</div>

    <div class="row">

        <div class="col-sm-8">

            <% posts.take(5).each { post -> %>
                <%if (post.status == "published") {%>
                    <div  itemscope itemtype="http://schema.org/Blog">
                        <div itemprop="author" itemscope itemtype="http://schema.org/Person">
                            <meta itemprop="name" content="Yan Bonnel"/>
                        </div>
                        <meta itemprop="inLanguage" content="fr-FR"/>
                        <a itemprop="url" href="${post.uri}">
                            <h1 itemprop="name">${post.title}</h1>
                        </a>
                        <p>
                            <time itemprop="datePublished"
                                  datetime="${post.date.format("yyyy-MM-dd")}">
                                ${post.date.format("dd MMMM yyyy")}
                            </time>
                        </p>

                        <p>Tags :
                            <meta itemprop="keywords" content="${post.tags.join(",")}"/>
                            <%
                                out << post.tags.collect { post_tag ->
                                    """<a href="tags/${post_tag}.html">${post_tag}</a>"""
                                } .join(", ")
                            %>
                        </p>

                        <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://xmunch.com/me/${post.uri}" data-text="${post.title}" data-via="dgrmunch" data-lang="fr">[Share in Twitter]</a>
                        <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
                        <div class="g-plusone" data-size="medium" data-href="http://xmunch.com/me/${post.uri}"></div>

                        <div class="blogpost" itemprop="blogPost">
                            <p>${post.body}</p>
                        </div>

                    </div>
                <%}%>

            <%}%>

            <hr />

            <p> [Ver blogs más antiguos en el <a href="${config.archive_file}">archivo</a>]</p>
						<p> [See more posts in the <a href="${config.archive_file}">archive</a>]</p>

        </div>

				<%include "sidebar.gsp"%>

    </div>

<%include "footer.gsp"%>
