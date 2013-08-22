package org.openglad.site;

import com.google.common.base.Charsets;
import com.google.common.hash.Hashing;
import com.google.common.io.ByteStreams;
import org.openglad.site.entity.Campaign;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.yaml.snakeyaml.Yaml;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/**
 * @author Sean Ford
 * @since 2013-08-21
 */
public class CampaignFileParser
{
	private static final Logger log = LoggerFactory.getLogger(CampaignFileParser.class);

	public static Campaign parse(InputStream inputStream) throws IOException
	{
		byte[] data = ByteStreams.toByteArray(inputStream);

		Yaml yaml = new Yaml();
		Map<String, Object> map = (Map< String, Object>)yaml.load(findCampaignTxt(new ByteArrayInputStream(data)));

		String hash = Hashing.sha256().hashBytes(data).toString();

		Campaign campaign = new Campaign(
				UUID.randomUUID().toString(),
				(Integer)map.get("format_version"),
				(String)map.get("title"),
				(Integer)map.get("version"),
				(String)map.get("authors"),
				(String)map.get("contributors"),
				(String)map.get("description"),
				hash);

		return campaign;
	}

	private static String findCampaignTxt(InputStream inputStream) throws IOException
	{
		ZipInputStream zis = new ZipInputStream(inputStream);

		ZipEntry zipEntry = zis.getNextEntry();
		while(zipEntry != null)
		{
			log.debug("found file: {}", zipEntry.getName());

			if(zipEntry.getName().equals("campaign.yaml"))
			{
				byte[] data = ByteStreams.toByteArray(zis);
				return new String(data, Charsets.UTF_8);
			}

			zipEntry = zis.getNextEntry();
		}

		throw new IOException("invalid campaign file, can't find campaign.txt!");
	}
}
