package org.openglad.site.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;
import java.net.URI;
import java.net.URISyntaxException;

/**
 * @author Sean Ford
 * @since 2013-06-19
 */
@Path("/")
public class Index
{
	@GET
	public Response redirectToNews() throws URISyntaxException
	{
		return Response.seeOther(new URI("/news")).build();
	}
}
