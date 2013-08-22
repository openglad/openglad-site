package org.openglad.site.rest.mapper;

import com.google.appengine.labs.repackaged.com.google.common.collect.Lists;
import com.google.appengine.labs.repackaged.com.google.common.collect.Maps;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;
import java.util.List;
import java.util.Map;

/**
 * @author Sean Ford
 * @since 2013-08-21
 */
public class ConstraintValidationExceptionMapper implements ExceptionMapper<ConstraintViolationException>
{
	@Override
	public Response toResponse(ConstraintViolationException exception)
	{
		List<String> errors = Lists.newArrayList();

		for(ConstraintViolation cv : exception.getConstraintViolations())
		{
			errors.add(cv.getMessage());
		}

		Map<String, Object> m = Maps.newHashMap();
		m.put("errors", errors);

		return Response.status(400).entity(m).build();
	}
}
