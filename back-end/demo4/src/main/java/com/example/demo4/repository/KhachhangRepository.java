package com.example.demo4.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo4.entity.Khachhang;
import com.example.demo4.entity.Taikhoan;

public interface KhachhangRepository extends JpaRepository<Khachhang, String> {
	@Query(value = "CALL getLatKH();", nativeQuery = true)
    public Khachhang getKhachhangLast();
	@Query("SELECT kh FROM Khachhang kh WHERE kh.makh = ?1")
	public Khachhang getKhachhangById(String id);
}
