package com.ucms.controller;

import com.ucms.domain.Topic;
import com.ucms.service.ConfigService;
import com.ucms.service.TopicService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;
import java.util.List;

@Controller
public class TopicController {
	private static final Logger LOGGER = LoggerFactory.getLogger(TopicController.class);
	@Inject
	private TopicService topicService;
	@Inject
	private ConfigService configService;

	@RequestMapping(value = "topics.html", method = RequestMethod.GET)
	public ModelAndView getActive() {
		LOGGER.debug("Received request for user create view");
		ModelMap model = new ModelMap();
		model.addAttribute("texts", configService.findAll());
		List<Topic> topics = topicService.getActive();
		model.addAttribute("topics", topics);
		return new ModelAndView("topic", "topics", model);
	}

}
