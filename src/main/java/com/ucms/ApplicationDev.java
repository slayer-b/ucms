package com.ucms;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

@Configuration
@Profile("dev")
//    -Dspring.profiles.active=dev
public class ApplicationDev extends SpringBootServletInitializer {

}
