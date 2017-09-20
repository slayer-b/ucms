package com.ucms.controller;

import com.ucms.domain.Comment;
import com.ucms.domain.Topic;
import com.ucms.service.CommentService;
import com.ucms.service.ConfigService;
import com.ucms.service.TopicService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
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
    @Inject
    private CommentService commentService;

    @RequestMapping(value = "topics", method = RequestMethod.GET)
    public ModelAndView topics() {
        LOGGER.debug("Received request for user create view");
        ModelMap model = new ModelMap();
        model.addAttribute("texts", configService.findAll());
        List<Topic> topics = topicService.getActive();
        model.addAttribute("topics", topics);
        return new ModelAndView("topics", model);
    }

    @RequestMapping(value = "topics/{name}", method = RequestMethod.GET)
    public ModelAndView topic(@PathVariable("name") String name) {
        LOGGER.debug("Received request for user create view");
        ModelMap model = new ModelMap();
        model.addAttribute("texts", configService.findAll());
        Topic topic = topicService.findByName(name);
        model.addAttribute("topic", topic);
        List<Comment> comments = commentService.findByTopic(topic.getId());
        model.addAttribute("comments", comments);
        return new ModelAndView("topic", model);
    }

    @RequestMapping(value = "comment/{topicId}/{text}", method = RequestMethod.GET)
    public Long comment(@PathVariable("topicId") Long topicId, @PathVariable("text") String text) {
        LOGGER.debug("Save comment");
        Comment comment = new Comment();
        comment.setComment(text);
        comment.setTopic(topicId);
        Comment saved = commentService.save(comment);
        return saved.getId();
    }

}
