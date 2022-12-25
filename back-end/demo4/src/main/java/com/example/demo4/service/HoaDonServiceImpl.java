package com.example.demo4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo4.entity.Hoadon;
import com.example.demo4.repository.HoaDonRepository;
@Service
public class HoaDonServiceImpl implements HoaDonService{
     @Autowired
     private HoaDonRepository hoaDonRepository;
	@Override
	public List<Hoadon> getLayDSHD(String masothue) {
		// TODO Auto-generated method stub
		return hoaDonRepository.getLayDSHD(masothue);
	}
	@Override
	public Integer getLaySP_KIEMTRAHD(String masothue) {
		// TODO Auto-generated method stub
		return hoaDonRepository.getLaySP_KIEMTRAHD(masothue);
	}

}
