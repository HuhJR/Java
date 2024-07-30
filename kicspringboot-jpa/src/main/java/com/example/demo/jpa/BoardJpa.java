package com.example.demo.jpa;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.KicBoard;

public interface BoardJpa extends JpaRepository<KicBoard, Integer> {
	
	
	List<KicBoard> findByBoardid(String boardid);
	
	@Query(value = "select * from (   " + "             select rownum rnum, a.* from (   "
			+ "             select  * from kicboard where boardid = :boardid " + "             order by num desc) a) "
			+ "             where rnum between :start and :end ", nativeQuery = true)
	List<KicBoard> boardList(@Param("boardid") String boardid, @Param("start") int start, @Param("end") int end);
}
