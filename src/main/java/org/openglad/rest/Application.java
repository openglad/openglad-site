package org.openglad.rest;

import org.glassfish.jersey.jackson.JacksonFeature;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.mvc.freemarker.FreemarkerMvcFeature;

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
		packages("org.openglad.rest");
		register(FreemarkerMvcFeature.class);
		register(JacksonFeature.class);
		register(JacksonObjectMapper.class);
	}
}
