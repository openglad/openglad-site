<jsp:include page="/includes/header.jsp" />

<h1>Campaign</h1>

Id: ${it.campaign.id}<br/>
Title: ${it.campaign.title}<br/>
Description: ${it.campaign.description}<br/>
Author: ${it.campaign.authors}<br/>
Version: ${it.campaign.version}<br/>
Format Version: ${it.campaign.formatVersion}<br/>

Upload Time: ${it.campaign.uploadTime}

<br/>
<a href="/campaigns/${it.campaign.id}/file">Download</a>

<jsp:include page="/includes/footer.jsp" />
