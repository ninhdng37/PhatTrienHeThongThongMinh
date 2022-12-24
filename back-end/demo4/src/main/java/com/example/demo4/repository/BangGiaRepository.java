package com.example.demo4.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo4.entity.Banggia;
import com.example.demo4.entity.Khachhang;

public interface BangGiaRepository extends JpaRepository<Banggia, String> {
	@Query(value = "CALL getLastGia(:MAMH);", nativeQuery = true)
    public Banggia getBanggiaLast(@Param("MAMH") String mamh);
}
