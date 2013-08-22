<jsp:include page="/includes/header.jsp" />

<h1><small>The latest news about Openglad, coming straight to you from the mouths of the Openglad Team!</small></h1>
<hr class="style-three">

<div id="entries">Loading news entries....</div>

<script type="text/javascript" src="http://openglad.tumblr.com/api/read/js"></script>
<script type="text/javascript" src="/static/js/t.js"></script>
<script>
	tumblr_obj.writeEntries(tumblr_api_read, 20);
</script>

<hr class="style-three">
<h2>Want more news?</h2>

Get the full backlog at <a href="http://openglad.tumblr.com">the tumblr</a>.

<jsp:include page="/includes/footer.jsp" />

