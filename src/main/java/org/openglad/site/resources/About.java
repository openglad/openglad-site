package org.openglad.site.resources;

import org.glassfish.jersey.server.mvc.Viewable;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

/**
 * @author Sean Ford
 * @since 2013-06-19
 */
@Path("/about")
public class About
{
	@GET
	public Viewable get()
	{
		return new Viewable("/about", this);
	}
}
