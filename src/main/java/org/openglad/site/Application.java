package org.openglad.site;

import org.glassfish.jersey.jackson.JacksonFeature;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.mvc.jsp.JspMvcFeature;
import org.openglad.site.resources.Campaign;

import javax.ws.rs.ApplicationPath;

/**
 * @author Sean Ford
 * @since 2013-06-17
 */
@ApplicationPath("/test")
public class Application extends ResourceConfig
{
	public Application()
	{
		System.out.println(Campaign.class.getPackage().getName());
		packages(Campaign.class.getPackage().getName());
		register(JspMvcFeature.class);
		register(JacksonFeature.class);
		register(JacksonObjectMapper.class);
	}
}
