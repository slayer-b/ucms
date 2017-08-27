package com.ucms.domain;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;
import org.hibernate.annotations.GeneratorType;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.mapping.IdGenerator;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Topic {

	@Id
	@Generated(GenerationTime.INSERT)
    @NotNull
    @Size(max = 32)
    @Column(name = "id", nullable = false)
    private Long id;

    @NotNull
    @Column(name = "value", nullable = false)
    private String value;

    @Column(name = "active", nullable = false)
	private Boolean active;

	public Topic() {

	}

	public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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
