package com.example.demo4.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo4.entity.Phieudat;
import com.example.demo4.repository.PhieuDatRepository;

@Service
public class PhieuDarServiceImpl implements PhieuDatService{
     @Autowired
     private PhieuDatRepository phieuDatRepository;
	@Override
	public void save(Phieudat pd) {
		// TODO Auto-generated method stub
		phieuDatRepository.save(pd);
	}

}
