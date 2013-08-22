package org.openglad.site.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
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
	private String name;

	@Index
	private DateTime uploadTime;

	private byte[] file;


	private Campaign()
	{
		// unused
	}

	public Campaign(String id)
	{
		this.id = id;
	}

	public Campaign(String id, String name, byte[] file)
	{
		this.id = id;
		this.name = name;
		this.uploadTime = DateTime.now();
		this.file = file;
	}

	public String getId()
	{
		return id;
	}

	public String getName()
	{
		return name;
	}

	public DateTime getUploadTime()
	{
		return uploadTime;
	}

	public byte[] getFile()
	{
		return file;
	}
}
