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
@Table(name = "kicboard")
public class KicBoard {
	@Id
	// @GeneratedValue(strategy = GenerationType.IDENTITY) mysql auto_incrememnt 시 사용
		@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SequenceGeneratorName") // oracle sequence 사용
		@SequenceGenerator(
				name = "SequenceGeneratorName", 
				sequenceName = "kicboardseq", allocationSize = 1
			)
	private int num;
	
	private String name;
	private String pass;
	private String subject;
	private String content;
	private String file1;
	private Date regdate;
	private int readcnt;
	private String boardid;
	

}
