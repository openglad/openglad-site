package org.openglad.site;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.SerializationConfig;

import javax.ws.rs.ext.ContextResolver;

/**
 * @author Sean Ford
 * @since 2013-06-17
 */
public class JacksonObjectMapper implements ContextResolver<ObjectMapper>
{
	@Override
	public ObjectMapper getContext(Class<?> type) {
		final ObjectMapper result = new ObjectMapper();
		result.configure(SerializationConfig.Feature.INDENT_OUTPUT, true);

		return result;
	}
}
