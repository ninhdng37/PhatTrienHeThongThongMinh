package com.example.demo4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo4.entity.Taikhoan;
import com.example.demo4.repository.TaikhoanRepository;

@Service
public class TaikhoanServiceIpml implements TaikhoanService {
   
	@Autowired
	private TaikhoanRepository taikhoanRepository;
	@Override
	public Taikhoan findByTaikhoan(String tk) {
		// TODO Auto-generated method stub
		return taikhoanRepository.findByTaikhoan(tk);
	}
	@Override
	public void save(Taikhoan tk) {
		// TODO Auto-generated method stub
		taikhoanRepository.save(tk);
	}
	@Override
	public List<Taikhoan> getAllTaikhoan() {
		// TODO Auto-generated method stub
		return taikhoanRepository.findAll();
	}

}
