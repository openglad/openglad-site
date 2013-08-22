package org.openglad.site.rest.resources;

import org.glassfish.jersey.server.mvc.Viewable;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

/**
 * @author Sean Ford
 * @since 2013-06-19
 */
@Path("/media")
public class Media
{
	@GET
	public Viewable get()
	{
		return new Viewable("/media", this);
	}
}
