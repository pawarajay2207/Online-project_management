package com.project.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.web.model.Project;

public interface ProjectInfo extends JpaRepository<Project, Integer> {
	
	
	
}
