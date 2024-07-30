package com.example.demo.model;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "boardcomment")
public class Comment {
	@Id

	// @GeneratedValue(strategy = GenerationType.IDENTITY) mysql auto_incrememnt 시 사용
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SequenceGeneratorName") // oracle sequence 사용
	@SequenceGenerator(
			name = "SequenceGeneratorName", 
			sequenceName = "boardcomseq", allocationSize = 1
		)
	int ser;

	//@Builder
	
	int num;
	String content;
	String id;
	Date regdate;

}
