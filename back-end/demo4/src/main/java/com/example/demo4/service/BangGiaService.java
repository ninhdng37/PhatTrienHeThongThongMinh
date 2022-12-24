package com.example.demo4.service;

import java.util.List;

import org.springframework.data.repository.query.Param;

import com.example.demo4.entity.Banggia;

public interface BangGiaService {
	Banggia getBanggiaLast( String mamh);
	List<Banggia> getAllBanggia();
}
