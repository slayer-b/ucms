package com.ucms;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

import javax.sql.DataSource;
import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Configuration
@Profile("prod")
//    -Dspring.profiles.active=prod
public class ApplicationProd extends SpringBootServletInitializer {

    @Override
    protected final SpringApplicationBuilder configure(final SpringApplicationBuilder application) {
        return application.sources(ApplicationProd.class);
    }

    @Bean
	public DataSource dataSource() throws URISyntaxException {
		URI dbUri = new URI(System.getenv("DATABASE_URL"));

		String username = dbUri.getUserInfo().split(":")[0];
		String password = dbUri.getUserInfo().split(":")[1];
		String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setUsername(username);
		basicDataSource.setPassword(password);
		basicDataSource.setUrl(dbUrl);

		System.out.println("--------------");
		try {
			Connection connection = basicDataSource.getConnection();
			PreparedStatement s = connection.prepareStatement("select 2 from comment");
			ResultSet execute = s.executeQuery();
			System.out.println("execute: " + execute);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("--------------");
		return basicDataSource;
	}

}