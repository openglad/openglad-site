<jsp:include page="/includes/header.jsp" />

<h1>News</h1>

These are the latest news about Openglad, coming straight to you from the mouths of the Openglad Team!

<div id="entries">Loading news entries....</div>

<script type="text/javascript" src="http://openglad.tumblr.com/api/read/js"></script>
<script type="text/javascript" src="/static/js/t.js"></script>
<script>
	tumblr_obj.writeEntries(tumblr_api_read, 20);
</script>

<h2>Want more news?</h2>

Get the full backlog at <a href="http://openglad.tumblr.com">the tumblr</a>.

<jsp:include page="/includes/footer.jsp" />

