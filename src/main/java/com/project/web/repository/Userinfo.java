package com.project.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.web.model.User;
import java.util.List;


public interface Userinfo extends JpaRepository<User, String>{
  public User  findByEmail(String email);
}
