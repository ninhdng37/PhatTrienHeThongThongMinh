package com.example.demo4.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo4.entity.Taikhoan;

public interface TaikhoanRepository extends JpaRepository<Taikhoan, String>{
	@Query("SELECT tk FROM Taikhoan tk WHERE tk.tentk = ?1")
	public Taikhoan findByTaikhoan(String tentk);
}
