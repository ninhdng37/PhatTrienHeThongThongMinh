package com.example.demo4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo4.entity.Cthd;
import com.example.demo4.repository.CTHDRepository;

@Service
public class CTHDServiceImpl implements CTHDService {
    @Autowired
    private CTHDRepository cthdRepository;
	@Override
	public List<Cthd> getLayDSCTHD(String masothue) {
		// TODO Auto-generated method stub
		return cthdRepository.getLayDSCTHD(masothue);
	}

}
