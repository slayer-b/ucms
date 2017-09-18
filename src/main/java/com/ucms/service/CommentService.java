package com.ucms.service;

import com.ucms.domain.Comment;
import com.ucms.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentService {
	@Autowired
	private CommentRepository repository;

	public Comment save(Comment comment) {
		return repository.save(comment);
	}

	public List<Comment> findAllJson() {
		return repository.findAll();
	}

	public void delete(Long id) {
		repository.delete(id);
	}

	public List<Comment> findByTopic(Long topic) {
		return repository.findByTopic(topic);
	}
}
