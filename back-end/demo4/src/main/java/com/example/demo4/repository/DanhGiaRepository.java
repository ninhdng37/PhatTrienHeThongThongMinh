package com.example.demo4.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo4.entity.Cthd;
import com.example.demo4.entity.Danhgia;
import com.example.demo4.entity.DanhgiaId;

public interface DanhGiaRepository extends JpaRepository<Danhgia, DanhgiaId>{
	@Query(value = "CALL SP_LAYDANHGIA(:mamh);",nativeQuery = true)
	public Double getLAYDANHGIA(@Param("mamh") String mamh);
}
