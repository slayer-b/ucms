package com.ucms.controller;

import com.ucms.service.ConfigService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;

@Controller
public class HomeController {

    private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);
    @Inject
    private ConfigService configService;

    @RequestMapping({"/index.html", "/"})
    public ModelAndView getListUsersView() {
        LOGGER.debug("Received request to get user list view");
        ModelMap model = new ModelMap();
        model.addAttribute("texts", configService.findAll());
        return new ModelAndView("index", model);
    }

}
