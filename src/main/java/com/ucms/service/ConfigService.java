package com.ucms.service;

import com.ucms.domain.Config;
import com.ucms.repository.ConfigRepository;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class ConfigService {
	@Inject
	private ConfigRepository configRepository;
	//TODO remake
	private Map<String, String> configs = null;

	public Map<String, String> findAll() {
		if (configs == null) {
			configs = configRepository.findAll().stream()
//					.collect(Collectors.toMap(Config::getKey, Config::getValue));
					.collect(Collectors.toMap(Config::getKey, Config::getValue));
		}
		return configs;
	}

	public List<Config> findAllJson() {
		return configRepository.findAll();
	}

	public void save(Config config) {
		configRepository.save(config);
	}
}
