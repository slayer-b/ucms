package com.ucms.service;

import com.ucms.domain.Topic;
import com.ucms.repository.TopicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TopicService {
	@Autowired
	private TopicRepository topicRepository;

	public List<Topic> getActive() {
		return topicRepository.findByActive(Boolean.TRUE);
	}

	public Topic findByName(String name) {
		return topicRepository.findByName(name);
	}

	public List<Topic> findAllJson() {
		return topicRepository.findAll();
	}

	public void save(Topic topic) {
		topicRepository.save(topic);
	}
}
