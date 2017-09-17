package com.ucms.controller;

import com.ucms.domain.Comment;
import com.ucms.domain.Config;
import com.ucms.domain.Topic;
import com.ucms.service.CommentService;
import com.ucms.service.ConfigService;
import com.ucms.service.TopicService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {
	private static final Logger LOGGER = LoggerFactory.getLogger(AdminController.class);
	@Inject
	private ConfigService configService;
	@Inject
	private TopicService topicService;
	@Inject
	private CommentService commentService;

	@RequestMapping(value = "/admin/configs.html", method = RequestMethod.GET)
	public ModelAndView getConfigs() {
		return new ModelAndView("admin/configs");
	}

	@RequestMapping(value = "/admin/configs", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getAllJson() {
		Map<String, Object> rez = new HashMap<>();
		List<Config> all = configService.findAllJson();
		rez.put("data", all);
		rez.put("itemsCount", all.size());
		return rez;
	}

	@RequestMapping(value = "/admin/configs", method = RequestMethod.POST)
	@ResponseBody
	public Config updateConfig(Config config) {
		configService.save(config);
		return config;
	}

	@RequestMapping(value = "/admin/topic.html", method = RequestMethod.GET)
	public ModelAndView getTopics() {
		return new ModelAndView("admin/topic");
	}

	@RequestMapping(value = "/admin/topic", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getAllTopicsJson() {
		Map<String, Object> rez = new HashMap<>();
		List<Topic> all = topicService.findAllJson();
		rez.put("data", all);
		rez.put("itemsCount", all.size());
		return rez;
	}

	@RequestMapping(value = "/admin/topic", method = RequestMethod.POST)
	@ResponseBody
	public Topic updateTopic(Topic topic) {
		topicService.save(topic);
		return topic;
	}

	@RequestMapping(value = "/admin/comment.html", method = RequestMethod.GET)
	public ModelAndView getComments() {
		return new ModelAndView("admin/comment");
	}

	@RequestMapping(value = "/admin/comment", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getAllCommentsJson() {
		Map<String, Object> rez = new HashMap<>();
		List<Comment> all = commentService.findAllJson();
		rez.put("data", all);
		rez.put("itemsCount", all.size());
		return rez;
	}

	@RequestMapping(value = "/admin/comment/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public void deleteComment(@PathVariable("id") Long id) {
		Map<String, Object> rez = new HashMap<>();
		commentService.delete(id);
	}

}
