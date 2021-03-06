<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <%
        def pagetitle = null
        if (content.title) {
            pagetitle = content.title
        } else if (content.type == "tag") {
            pagetitle = "${tag}"

        } else if (content.type == "archive") {
            pagetitle = "Archive"
        }
    %>
    <title>xmunch.com <%if (pagetitle) {%> - ${pagetitle}<%}%></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="<%
        if (pagetitle) {
            out << "xmunch.com : ${pagetitle}"
        } else {
            out << "xmunch.com"
        }
    %>">
    <meta property="og:title" content="<%
        if (pagetitle) {
            out << "xmunch.com - ${pagetitle}"
        } else {
            out << "xmunch.com"
        }
    %>" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="<%
        if (content.type == "archive") {
            out << """${config.site_host}/archive.html"""
        } else if (content.type == "tag") {
            out << """${config.site_host}/tags/${tag}.html"""
        } else {
            out << config.site_host
        }
    %>" />
    <meta property="og:description" content="<%
        if (pagetitle) {
            out << "xmunch.com : ${pagetitle}"
        } else {
            out << "xmunch.com"
        }
    %>" />
    <meta property="og:locale" content="es_ES" />
    <meta property="og:site_name" content="xmunch.com" />
    <link href="<%if (content.rootpath){%>${content.rootpath}<%}else{if (content.type == "tag"){%>../<%}}%>css/yeti/bootstrap.min.css" rel="stylesheet">
    <link href="<%if (content.rootpath){%>${content.rootpath}<%}else{if (content.type == "tag"){%>../<%}}%>css/base.css" rel="stylesheet">
    <link href="<%if (content.rootpath){%>${content.rootpath}<%}else{if (content.type == "tag"){%>../<%}}%>css/asciidoctor.css" rel="stylesheet">
    <link href="<%if (content.rootpath){%>${content.rootpath}<%}else{if (content.type == "tag"){%>../<%}}%>css/xmunch.css?build=@10" rel="stylesheet">
    <!-- link href="/css/bootstrap-theme.min.css" rel="stylesheet" -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='http://alexgorbatchev.com/pub/sh/3.0.83/styles/shCore.css' rel='stylesheet' type='text/css'/>
    <link href='http://alexgorbatchev.com/pub/sh/3.0.83/styles/shThemeDefault.css' rel='stylesheet' type='text/css'/>

    <script>
              (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                                                                        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                                                                        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                                                                        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

                                                                        ga('create', 'UA-62113801-1', 'auto');
                                                                        ga('send', 'pageview');
      </script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">-->
    <link rel="shortcut icon" href="<%if (content.rootpath){%>${content.rootpath}<%}else{if (content.type == "tag"){%>../<%}}%>favicon.ico">
  </head>
  <body>
    <div id="wrap">
