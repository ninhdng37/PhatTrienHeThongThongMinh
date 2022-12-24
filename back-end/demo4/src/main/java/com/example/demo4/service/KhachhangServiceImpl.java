package com.example.demo4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo4.entity.Khachhang;
import com.example.demo4.repository.KhachhangRepository;

@Service
public class KhachhangServiceImpl implements KhachhangService{
   @Autowired
   private KhachhangRepository khachhangRepository;
	@Override
	public void save(Khachhang kh) {
		// TODO Auto-generated method stub
		khachhangRepository.save(kh);
	}
	@Override
	public Khachhang getkhachhangLast() {
		// TODO Auto-generated method stub
		return khachhangRepository.getKhachhangLast();
	}
	@Override
	public List<Khachhang> getAllKhachhang() {
		// TODO Auto-generated method stub
		return khachhangRepository.findAll();
	}
	@Override
	public Khachhang getKhachhangById(String id) {
		// TODO Auto-generated method stub
		return khachhangRepository.getKhachhangById(id);
	}
	@Override
	public void deleteKhachhangById(String id) {
		// TODO Auto-generated method stub
		khachhangRepository.deleteById(id);
	}
	
	
}
