package com.example.demo4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo4.entity.Size;
import com.example.demo4.repository.SizeRespository;

@Service
public class SizeServiceImpl implements SizeService {
   @Autowired 
   private SizeRespository sizeRespository;

@Override
public List<Size> getAllSize() {
	// TODO Auto-generated method stub
	return sizeRespository.findAll();
}
   
}
