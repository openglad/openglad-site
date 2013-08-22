// MANY thanks to Joe at: http://www.joecoulson.site90.net/files/html/tumblrEmbed.html
// Obviously, this is licenced whatever he licensed it as.

tumblr_obj = {};
tumblr_obj.writeEntries = function(x, limit)
{
	var posts = x.posts,
	i = posts.length,
	r = posts.length - i,
	output = "<div class='media'>",
	vidsArray = [];

	//alert("Retrieved " + posts.length + " posts.");

	while(i--)
	{
		r = posts.length - (i + 1);
		var current_post = posts[r];
		// console.log(current_post);

		var date = current_post["date"];
		var author = null;
		var title = null;
		var content = null;
		var img = null;
		var video = null;
		var audio = null;
		var link = null;

		switch (current_post.type)
		{
			case "regular":
				title = current_post["regular-title"];
				content = current_post["regular-body"];
				break;
			case "photo":
				//title = "Image";
				//there are several different photo options "photo-url-1280" is the highest quality option (I think) have a look at the tumblr_api_read object in your browser console to see what they all are
				img = current_post["photo-url-1280"];
				title = current_post["photo-caption"];
				break;
			 case "audio":
				title = current_post["id3-title"] + " by " + current_post["id3-artist"];
				audio = current_post["audio-player"];
				content = current_post["audio-caption"];
				break;
			 case "video":
				//title = "Video";
				video = current_post["video-player-500"];
				title = current_post["video-caption"];
				//due to the posts being added to page after load the video won't display unless you add the variables to this array and invoke them once they are drawn to page.
				vidsArray.push(current_post["video-player"].substr(current_post["video-player"].indexOf('rVideo(') + 7, (current_post["video-player"].indexOf('</scrip')-(current_post["video-player"].indexOf('rVideo(') + 7))).split(","));
				break;
			 case "quote":
				title = "Quote";
				content = current_post["quote-text"] + ' - ' + current_post["quote-source"];
				break;
			 case "link":
				title = 'Link';
				link = '<a href="' + current_post["link-url"] + '">' + current_post["link-text"] + '</a>'
				content = current_post["link-description"];
				break;
			 case "conversation":
				title = current_post["conversation-title"];
				content = current_post["conversation-text"];
			 default:
				title = "";
				content = "";
				break;
		}

		output += "<div class='media-body'>";
		if (title) output += "<h2 class='media-heading'>" + title + " <small>on " + date + "</small></h4>";
		//if (author) output += "<hr3 class='media-heading'>Posted by " + author + "</h3>";

		if (img) output += "<br><p align=center><img src='" + img + "' height='400' /></p>";
		if (video) output += "<br><p align=center>" + video + "</p>";
		if (audio) output += "<p>" + audio + "</p>";
		if (link) output += "<p>" + link + "</p>";
		if (content) output += "<p>" + content + "</p>";
		//output += "<p><a href='" + current_post['url'] + "'>Comment!</a></p>"

		output += "</div><br>";
	}
	output += "</div>"
	document.getElementById('entries').innerHTML = output;
	//tumblr_obj.pullVids(vidsArray);
};

//This object takes vidsArray and uses it to provide the required arguments to the renderVideo() method that is supplied in tumblelog.js
tumblr_obj.pullVids = function(arr) {
	for(var i = arr.length - 1; i >= 0; i--) {
	renderVideo(arr[i].shift().replace(/(\"|\|'\))/g, ""),arr[i].shift().replace(/(\"|\'|\))/g, ""),arr[i].shift().replace(/(\"|\'|\))/g, ""),arr[i].shift().replace(/(\"|\'|\))/g, ""),arr[i].join(",").replace(/(\"|\'|\))/g, ""));
	}
}

function load_entries()
{
	try {tumblr_obj.writeEntries(tumblr_api_read, 20); }
	catch (err) { alert(err); }
}
