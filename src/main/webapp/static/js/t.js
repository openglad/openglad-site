// MANY thanks to Joe at: http://www.joecoulson.site90.net/files/html/tumblrEmbed.html
// Obviously, this is licenced whatever he licensed it as.

//This may all work if rehashed as an instant function and using document.write() inside the "entries" div and may also make vidsArray and the pullVids() method obselete - this is just how I ended up writing it all.
tumblr_obj = {};
tumblr_obj.writeEntries = function(x){
  var posts = x.posts,
  i = posts.length,
  r = posts.length - i,
  output = "",
  vidsArray = [];

  console.log("Retrieved " + posts.length + " posts.");

  //This is simple but if you don't know javascript it simply loops through the posts and, depending on the type, writes the html for your page.
  while(i--) {
	r = posts.length - (i + 1);
	console.log(posts[r])
	output += '<div class="tumblr_entry ' + (posts.length - i) + '">';
	
	var date = posts[r]["date"];
	var author;
	var title;
	var content;
	var img;
	var video;
	var audio;
	var link;

	switch (posts[r].type) {
	  case "regular":
		title = posts[r]["regular-title"];
		content = posts[r]["regular-body"];
		break;
	  case "photo":
		title = "Image";
		//there are several different photo options "photo-url-1280" is the highest quality option (I think) have a look at the tumblr_api_read object in your browser console to see what they all are
		img = posts[r]["photo-url-1280"];
		content = posts[r]["photo-caption"];
		break;
	 case "audio":
		title = posts[r]["id3-title"] + " by " + posts[r]["id3-artist"];
		audio = posts[r]["audio-player"];
		content = posts[r]["audio-caption"];
		break;
	 case "video":
		title = "Video";
		video = posts[r]["video-player-500"];
		content = posts[r]["video-caption"];
		//due to the posts being added to page after load the video won't display unless you add the variables to this array and invoke them once they are drawn to page.
		vidsArray.push(posts[r]["video-player"].substr(posts[r]["video-player"].indexOf('rVideo(') + 7, (posts[r]["video-player"].indexOf('</scrip')-(posts[r]["video-player"].indexOf('rVideo(') + 7))).split(","));
		break;
	 case "quote":
		title = "Quote";
		content = posts[r]["quote-text"] + ' - ' + posts[r]["quote-source"];
		break;
	 case "link":
		title = 'Link';
		link = '<a href="' + posts[r]["link-url"] + '">' + posts[r]["link-text"] + '</a>'
		content = posts[r]["link-description"];
		break;
	 case "conversation":
		title = posts[r]["conversation-title"];
		content = posts[r]["conversation-text"];
	 default:
		title = "";
		content = "";
		break;
	}

	output += "<div class='news_post'>";
	output += "<h2>" + title + " <small>on " + date + "</small></h2>";
	if (author) output += "<hr3>Posted by " + author + "</h3>";
	if (img) output += "<p><img src='" + img + "' /></p>";
	if (video) output += "<p>" + video + "</p>";
	if (audio) output += "<p>" + audio + "</p>";
	if (link) output += "<p>" + link + "</p>";
	output += "<p>" + content + "</p>";
	//output += "<p><a href='" + posts[r]['url'] + "'>Comment!</a></p>"

	output += "</div>";
  }
  document.querySelector('#entries').innerHTML = output;
  tumblr_obj.pullVids(vidsArray);
};

//This object takes vidsArray and uses it to provide the required arguments to the renderVideo() method that is supplied in tumblelog.js
tumblr_obj.pullVids = function(arr) {
  for(var i = arr.length - 1; i >= 0; i--) {
	renderVideo(arr[i].shift().replace(/(\"|\|'\))/g, ""),arr[i].shift().replace(/(\"|\'|\))/g, ""),arr[i].shift().replace(/(\"|\'|\))/g, ""),arr[i].shift().replace(/(\"|\'|\))/g, ""),arr[i].join(",").replace(/(\"|\'|\))/g, ""));
  }
}

tumblr_obj.writeEntries(tumblr_api_read);
