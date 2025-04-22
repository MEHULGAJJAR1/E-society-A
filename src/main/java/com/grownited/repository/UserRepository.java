package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Integer> {
	Optional<UserEntity> findByEmail(String email);    //create findBy method for email.
	Optional<UserEntity> findByEmailAndPassword(String email, String password); //create findBy method for both.
    
	List<UserEntity> findByRole(String role);
	
}
