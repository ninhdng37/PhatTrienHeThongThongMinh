package com.example.demo4.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo4.entity.Hoadon;
import com.example.demo4.entity.Mathang;

public interface HoaDonRepository extends JpaRepository<Hoadon, String> {
//	@Query(value = "CALL getListMHIn(:ten);", nativeQuery = true)
//	public List<Mathang> getInListID(@Param("ten") String ten);
	@Query(value = "CALL SP_LAYDSHD(:masothue)",nativeQuery = true)
	public List<Hoadon> getLayDSHD(@Param("masothue") String masothue);
	
	@Query(value = "CALL SP_KIEMTRAHD(:masothue)",nativeQuery = true)
	public Integer getLaySP_KIEMTRAHD(@Param("masothue") String masothue);
}
