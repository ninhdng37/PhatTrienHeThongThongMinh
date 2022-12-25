package com.example.demo4.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo4.repository.DanhGiaRepository;

@Service
public class DanhGiaServiceImpl implements DanhGiaService{
@Autowired
private DanhGiaRepository danhGiaRepository;
	@Override
	public Double getLAYDANHGIA(String mamh) {
		// TODO Auto-generated method stub
		return danhGiaRepository.getLAYDANHGIA(mamh);
	}
   
}
