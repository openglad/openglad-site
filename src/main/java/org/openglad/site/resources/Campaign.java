package org.openglad.site.resources;

import com.google.common.collect.Maps;
import org.glassfish.jersey.server.mvc.Template;
import org.glassfish.jersey.server.mvc.Viewable;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.Map;

/**
 * @author Sean Ford
 * @since 2013-06-17
 */
@Path("/campaign")
@Template
public class Campaign
{
	public String getFoo()
	{
		return "bar";
	}

	@GET
	@Path("{campaignId}")
	@Produces(MediaType.TEXT_HTML)
	public Viewable get(@PathParam("campaignId") String campaignId)
	{
		Map<String, Object> map = Maps.newHashMap();
		map.put("campaignId", campaignId);
		map.put("campaignName", "Campaign Name");

		return new Viewable("index", map);
	}

	@GET
	@Path("{campaignId}")
	@Produces(MediaType.APPLICATION_JSON)
	public TestJsonResponse test(@PathParam("campaignId") String campaignId)
	{
		return new TestJsonResponse(campaignId, "Campaign Name");
	}

	public static class TestJsonResponse
	{
		private final String campaignId;
		private final String campaignName;

		public TestJsonResponse(String campaignId, String campaignName)
		{
			this.campaignId = campaignId;
			this.campaignName = campaignName;
		}

		public String getCampaignId() {
			return campaignId;
		}

		public String getCampaignName() {
			return campaignName;
		}
	}
}
