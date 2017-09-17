package com.ucms.domain;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Topic {

	@Id
    @NotNull
    @Size(max = 32)
    @Column(name = "id", nullable = false)
    private String name;

    @NotNull
    @Column(name = "value", nullable = false, length = 10_000)
    private String value;

    @Column(name = "active", nullable = false)
	private Boolean active;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}
}
