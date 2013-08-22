package org.openglad.site.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

/**
 * @author Sean Ford
 * @since 2013-08-21
 */
@Entity
public class CampaignFile
{
	@Id
	private String hash;

	private byte[] data;

	private CampaignFile()
	{
		// unused
	}

	public CampaignFile(String hash)
	{
		this.hash = hash;
		this.data = null;
	}

	public CampaignFile(String hash, byte[] data)
	{
		this.hash = hash;
		this.data = data;
	}

	public String getHash()
	{
		return hash;
	}

	public byte[] getData()
	{
		return data;
	}
}
