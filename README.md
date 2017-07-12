# Static content blog for xmunch.com

After some years using PHP/Mysql based solutions for my blogs (basically Wordpress) I decided to move to a model of static files.

I was exploring different Javascript solutions last year but finally I decided to use `JBake`. I am a *Java/Groovy* developer so a **JVM** solution looked pretty well :)
 
This blog will be written mostly in *Markdown* and *AsciiDoc*, although I will probably add inline *html* and *JS*. 

To bake the plain-text files into *html*:

```
jbake -b . docs

```

To run a server:

```
jbake -s
```
