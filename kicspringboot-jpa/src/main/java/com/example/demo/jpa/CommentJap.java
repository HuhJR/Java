package com.example.demo.jpa;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Comment;



public interface CommentJap extends JpaRepository<Comment, Integer>{
	
	List<Comment> findByNum(int num);
}
