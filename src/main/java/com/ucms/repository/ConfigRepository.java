package com.ucms.repository;

import com.ucms.domain.Config;
import com.ucms.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConfigRepository extends JpaRepository<Config, String> {
}
