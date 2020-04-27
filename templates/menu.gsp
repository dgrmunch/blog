      <!-- Fixed navbar -->
      <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" onclick="if(document.getElementById('navbar-menu').classList.contains('collapse')) document.getElementById('navbar-menu').classList.remove('collapse'); else document.getElementById('navbar-menu').classList.add('collapse')">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <span class="navbar-brand"><img src="http://filedn.com/lzKR35HlP1yHLFtV0oLTAku/landings/sciartlab.com/index_files/sciarlab-inverted.png" alt="SciArt Lab"></span>
          </div>
          <div class="collapse navbar-collapse" id="navbar-menu">
            <ul class="nav navbar-nav">
              <li><a href="<%if (content.rootpath){%>${content.rootpath}<%}else{if (content.type == "tag"){%>../<%}}%>archive.html">Archive</a></li>
              <li><a href="<%if (content.rootpath){%>${content.rootpath}<%}else{if (content.type == "tag"){%>../<%}}%>tags/spanish.html">Art&iacute;culos en Espa&ntilde;ol</a></li>
              <li><a href="<%if (content.rootpath){%>${content.rootpath}<%}else{if (content.type == "tag"){%>../<%}}%>tags/english.html">Posts in English</a></li>
              <li><a href="<%if (content.rootpath){%>${content.rootpath}<%}else{if (content.type == "tag"){%>../<%}}%>${config.feed_file}">RSS</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
      <div class="container">
