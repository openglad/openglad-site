package org.openglad.site;

import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.impl.translate.opt.joda.JodaTimeTranslators;
import org.glassfish.jersey.jackson.JacksonFeature;
import org.glassfish.jersey.media.multipart.MultiPartFeature;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.mvc.jsp.JspMvcFeature;
import org.openglad.site.entity.Campaign;
import org.openglad.site.resources.Campaigns;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.ApplicationPath;

/**
 * @author Sean Ford
 * @since 2013-06-17
 */
@ApplicationPath("/")
public class Application extends ResourceConfig
{
	private static final Logger log = LoggerFactory.getLogger(Application.class);

	public Application()
	{
		log.info("registering JAX-RS resources");

		packages(Campaigns.class.getPackage().getName());
		register(JspMvcFeature.class);
		register(JacksonFeature.class);
		register(JacksonObjectMapper.class);
		register(MultiPartFeature.class);

		registerObjectifyEntities();
	}

	private void registerObjectifyEntities()
	{
		log.info("registering objectify entities");

		JodaTimeTranslators.add(ObjectifyService.factory());

		ObjectifyService.factory().register(Campaign.class);
	}
}
