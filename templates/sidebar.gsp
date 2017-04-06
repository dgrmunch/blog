
        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
            <div class="sidebar-module sidebar-module-inset">
                <h4>Diego González</h4>
                <p>Research & Development</p>
                <ul>
								  	<li><a href="about.html">About me / Sobre mi</a></li>
                    <li><a href="https://twitter.com/dgrmunch">Twitter</a></li>
										<li><a href="https://www.linkedin.com/in/xmunch/en">Linkedin</a></li>
										<li><a href="https://github.com/dgrmunch">Github</a></li>
										<li><a href="https://www.instagram.com/xmunch">Instagram</a></li>
										<li><a href="https://www.flickr.com/photos/xmunch">Flickr</a></li>
                </ul>
            </div>

            <div class="sidebar-module">
							Other projects / Otros proyectos
							<a href="http://www.sciartlab.com">SciArt Lab</a>
							<a href="http://xmunch.com/blog">Rhizome Ethnographies</a>
					  </div>

            <div class="sidebar-module">
                <h4>Tags</h4>
                <ol class="list-unstyled" style="margin-left: 0px">
                    <%
                        // alltags : list de tags (String)
                        alltags.collect { tag ->
                            [
                                tag,
                                posts.findAll { post ->
                                    post.tags.contains(tag)
                                }.size()
                            ]
                        } .sort { tag ->
                            String.format("%03d%s", 1000 - tag[1], tag[0].toLowerCase())
                        } .each { tagWithCount ->
                    %>
                        <li><a href="tags/${tagWithCount[0]}.html">${tagWithCount[0]}</a> (${tagWithCount[1]})</li>
                    <%}%>
                 </ol>
            </div>
        </div>
