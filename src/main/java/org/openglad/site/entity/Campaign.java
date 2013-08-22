package org.openglad.site.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.joda.time.DateTime;

/**
 * @author Sean Ford
 * @since 2013-06-19
 */
@Entity
public class Campaign
{
	@Id
	private String id;

	private Integer formatVersion;
	private String title;
	private Integer version;
	private String authors;
	private String contributors;
	private String description;

	@JsonIgnore
	@Index
	private DateTime uploadTime;

	@JsonIgnore
	private String fileHash;


	private Campaign()
	{
		// unused
	}

	public Campaign(String id)
	{
		this.id = id;
	}

	public Campaign(String id, Integer formatVersion, String title, Integer version, String authors, String contributors,
					String description, String fileHash)
	{
		this.id = id;
		this.formatVersion = formatVersion;
		this.title = title;
		this.version = version;
		this.authors = authors;
		this.contributors = contributors;
		this.description = description;
		this.uploadTime = DateTime.now();
		this.fileHash = fileHash;
	}

	public String getId()
	{
		return id;
	}

	public String getTitle()
	{
		return title;
	}

	public String getDescription()
	{
		return description;
	}

	public Integer getFormatVersion()
	{
		return formatVersion;
	}

	public Integer getVersion()
	{
		return version;
	}

	public String getAuthors()
	{
		return authors;
	}

	public String getContributors()
	{
		return contributors;
	}

	public DateTime getUploadTime()
	{
		return uploadTime;
	}

	public String getFileHash()
	{
		return fileHash;
	}
}
