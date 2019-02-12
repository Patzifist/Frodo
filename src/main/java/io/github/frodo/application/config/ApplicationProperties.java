package io.github.frodo.application.config;

import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * IRSProperties specific to IRS.
 * <p>
 * IRSProperties are configured in the application.yml file.
 */
@ConfigurationProperties(prefix = "application", ignoreUnknownFields = false)
public class ApplicationProperties {

}
