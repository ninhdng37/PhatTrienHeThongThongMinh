package com.example.demo4.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo4.entity.Cthd;
import com.example.demo4.entity.CthdId;
import com.example.demo4.entity.Mathang;

public interface CTHDRepository extends JpaRepository<Cthd,CthdId>{
	@Query(value = "CALL SP_LAYDSCTHD(:masothue);",nativeQuery = true)
	public List<Cthd> getLayDSCTHD(@Param("masothue") String masothue);
}
