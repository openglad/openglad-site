package org.openglad.site.rest.resources;

import com.google.common.collect.Maps;
import com.google.common.io.ByteStreams;
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.glassfish.jersey.server.mvc.Viewable;
import org.joda.time.DateTime;
import org.openglad.site.CampaignFileParser;
import org.openglad.site.entity.Campaign;
import org.openglad.site.entity.CampaignFile;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.validation.constraints.NotNull;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
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
				.filter("uploadTime >", DateTime.now().minusDays(7))
				.limit(50)
				.order("-uploadTime")
				.list();

		log.debug("retrieving campaigns, found {}", campaigns.size());

		return campaigns;
	}


	@POST
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	@Produces(MediaType.APPLICATION_JSON)
	public Campaign store(@NotNull(message = "File is required.") @FormDataParam("file") InputStream inputStream) throws IOException
	{
		byte[] data = ByteStreams.toByteArray(inputStream);

		Campaign campaign = CampaignFileParser.parse(new ByteArrayInputStream(data));

		CampaignFile campaignFile = new CampaignFile(campaign.getFileHash(), data);

		ofy().save().entity(campaign).now();
		ofy().save().entity(campaignFile).now();

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

	@GET
	@Path("{campaignId}/file")
	@Produces(MediaType.APPLICATION_OCTET_STREAM)
	public Response getFile(@PathParam("campaignId") UUID campaignId)
	{
		Campaign campaign = retrieveCampaign(campaignId);

		if(campaign == null)
		{
			return Response.status(Response.Status.NOT_FOUND).build();
		}

		CampaignFile campaignFile = ofy().load().entity(new CampaignFile(campaign.getFileHash())).now();

		return Response.ok(campaignFile.getData())
				.header("content-disposition","attachment; filename = campaign.glad")
				.build();
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

	@GET
	@Path("/recent")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getRecent()
	{
		return Response.ok(getCampaigns()).build();
	}
}
