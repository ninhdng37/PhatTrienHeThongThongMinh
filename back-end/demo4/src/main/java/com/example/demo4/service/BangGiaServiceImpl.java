package com.example.demo4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo4.entity.Banggia;
import com.example.demo4.repository.BangGiaRepository;

@Service
public class BangGiaServiceImpl implements BangGiaService{
   @Autowired
   private BangGiaRepository bangGiaRepository;
	@Override
	public Banggia getBanggiaLast(String mamh) {
		// TODO Auto-generated method stub
		return bangGiaRepository.getBanggiaLast(mamh);
	}
	@Override
	public List<Banggia> getAllBanggia() {
		// TODO Auto-generated method stub
		return bangGiaRepository.findAll();
	}

}
