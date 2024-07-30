package com.example.demo.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.KicMember;

public interface MemberJpa extends JpaRepository<KicMember, String>{
	
}
