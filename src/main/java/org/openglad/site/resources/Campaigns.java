package org.openglad.site.resources;

import org.glassfish.jersey.server.mvc.Template;
import org.joda.time.DateTime;
import org.openglad.site.entity.OpengladCampaign;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.Path;
import java.util.List;

import static com.googlecode.objectify.ObjectifyService.ofy;

/**
 * @author Sean Ford
 * @since 2013-06-19
 */
@Path("/campaigns")
@Template
public class Campaigns
{
	private static final Logger log = LoggerFactory.getLogger(Campaigns.class);

	public List<OpengladCampaign> getCampaigns()
	{
		List<OpengladCampaign> campaigns = ofy().load()
				.type(OpengladCampaign.class)
				.filter("uploadTime >", DateTime.now().minusDays(1))
				.limit(10)
				.order("-uploadTime")
				.list();

		log.debug("retrieving campaigns, found {}", campaigns.size());

		return campaigns;
	}
}
