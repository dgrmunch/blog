<%include "header.gsp"%>

	<%include "menu.gsp"%>

	<div class="page-header">
            <div class="row">
                <div class="col-xs-12 col-md-8"><h1>Tag: ${tag}</h1></div>
            </div>
	</div>

    <div class="row">

    <div class="col-sm-8">
        <% tag_posts.each { post -> %>
            <%if (post.status == "published") {%>

                <a href="../${post.uri}"><h1>${post.title}</h1></a>

								<div class="blogpost">
                <p>${post.date.format("dd MMMM yyyy")}</p>

                <p>Tags :
                <%
                        out << post.tags.collect { post_tag ->
                            """<a href="${post_tag}.html">${post_tag}</a>"""
                        } .join(", ")
                %>
                </p>

								<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://xmunch.com/me/${post.uri}" data-text="${post.title}" data-via="dgrmunch" data-lang="fr">[Share in Twitter]</a>
								<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
								<div class="g-plusone" data-size="medium" data-href="http://xmunch.com/me/${post.uri}"></div>

                <p>${post.body}</p>
							</div>
            <%}%>

        <%}%>

    </div>

		<%include "sidebar.gsp"%>

    </div>

<%include "footer.gsp"%>
