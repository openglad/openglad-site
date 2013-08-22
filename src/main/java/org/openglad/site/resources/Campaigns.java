package org.openglad.site.resources;

import com.google.common.collect.Maps;
import org.glassfish.jersey.server.mvc.Viewable;
import org.joda.time.DateTime;
import org.openglad.site.entity.Campaign;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import static com.googlecode.objectify.ObjectifyService.ofy;

/**
 * @author Sean Ford
 * @since 2013-06-19
 */
@Path("/campaigns")
public class Campaigns
{
	private static final Logger log = LoggerFactory.getLogger(Campaigns.class);

	@GET
	@Produces(MediaType.TEXT_HTML)
	public Viewable getCampaignsPage()
	{
		return new Viewable("/campaigns", this);
	}

	public List<Campaign> getCampaigns()
	{
		List<Campaign> campaigns = ofy().load()
				.type(Campaign.class)
				.filter("uploadTime >", DateTime.now().minusDays(1))
				.limit(10)
				.order("-uploadTime")
				.list();

		log.debug("retrieving campaigns, found {}", campaigns.size());

		return campaigns;
	}


	@POST
	@Produces(MediaType.APPLICATION_JSON)
	public Campaign store()
	{
		UUID id = UUID.randomUUID();

		//log.info("uploaded file name={} size={}", fileDisposition.getName(), fileDisposition.getSize());
		//log.info("storing campaign {}", id);

		//byte[] fileData = null;
		//try
		//{
		//	fileData = ByteStreams.toByteArray(file);
		//}
		//catch (IOException e)
		//{
		//	log.error("error reading file",e);
		//	throw new WebApplicationException(500);
		//}

		//log.debug("read in bytes: {}", fileData.length);

		Campaign campaign = new Campaign(id.toString(), "Campaign Name", null);
		ofy().save().entity(campaign).now();

		return campaign;
	}

	@GET
	@Path("{campaignId}")
	@Produces(MediaType.TEXT_HTML)
	public Viewable getCampaignPage(@PathParam("campaignId") UUID campaignId)
	{
		Campaign campaign = retrieveCampaign(campaignId);

		if(campaign == null)
		{
			throw new WebApplicationException(Response.Status.NOT_FOUND);
		}

		Map<String, Object> map = Maps.newHashMap();
		map.put("campaign", campaign);

		return new Viewable("/campaign", map);
	}

	@GET
	@Path("{campaignId}")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getJson(@PathParam("campaignId") UUID campaignId)
	{
		Campaign campaign = retrieveCampaign(campaignId);

		if(campaign == null)
		{
			return Response.status(Response.Status.NOT_FOUND).build();
		}

		return Response.ok(campaign).build();
	}

	private Campaign retrieveCampaign(UUID campaignId)
	{
		Campaign campaign = new Campaign(campaignId.toString());

		log.debug("retrieving campaignId {}", campaignId);

		campaign = ofy().load().entity(campaign).now();

		if(campaign == null)
		{
			log.info("campaign {} not found", campaignId);
		}

		return campaign;
	}
}
