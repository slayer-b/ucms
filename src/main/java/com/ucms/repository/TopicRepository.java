package com.ucms.repository;

import com.ucms.domain.Config;
import com.ucms.domain.Topic;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TopicRepository extends JpaRepository<Topic, Long> {

	List<Topic> findByActive(Boolean active);
}
