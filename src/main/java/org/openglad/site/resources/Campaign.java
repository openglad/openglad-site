package org.openglad.site.resources;

import com.google.common.collect.Maps;
import org.glassfish.jersey.server.mvc.Viewable;
import org.openglad.site.entity.OpengladCampaign;
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
import java.util.Map;
import java.util.UUID;

import static com.googlecode.objectify.ObjectifyService.ofy;

/**
 * @author Sean Ford
 * @since 2013-06-17
 */
@Path("/campaign")
public class Campaign
{
	private static final Logger log = LoggerFactory.getLogger(Campaign.class);

	@POST
	@Produces(MediaType.APPLICATION_JSON)
	public OpengladCampaign store()
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

		OpengladCampaign campaign = new OpengladCampaign(id.toString(), "Campaign Name", null);
		ofy().save().entity(campaign).now();

		return campaign;
	}

	@GET
	@Path("{campaignId}")
	@Produces(MediaType.TEXT_HTML)
	public Viewable getHtml(@PathParam("campaignId") UUID campaignId)
	{
		OpengladCampaign campaign = retrieveCampaign(campaignId);

		if(campaign == null)
		{
			throw new WebApplicationException(Response.Status.NOT_FOUND);
		}

		Map<String, Object> map = Maps.newHashMap();
		map.put("campaign", campaign);

		return new Viewable("index", map);
	}

	@GET
	@Path("{campaignId}")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getJson(@PathParam("campaignId") UUID campaignId)
	{
		OpengladCampaign opengladCampaign = retrieveCampaign(campaignId);

		if(opengladCampaign == null)
		{
			return Response.status(Response.Status.NOT_FOUND).build();
		}

		return Response.ok(opengladCampaign).build();
	}

	private OpengladCampaign retrieveCampaign(UUID campaignId)
	{
		OpengladCampaign opengladCampaign = new OpengladCampaign(campaignId.toString());

		log.debug("retrieving campaignId {}", campaignId);

		opengladCampaign = ofy().load().entity(opengladCampaign).now();

		if(opengladCampaign == null)
		{
			log.info("campaign {} not found", campaignId);
		}

		return opengladCampaign;
	}
}
