package com.example.demo4.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.example.demo4.converter.Mathangconvert;
import com.example.demo4.dto.MathangDTO;
import com.example.demo4.entity.Banggia;
import com.example.demo4.entity.Mathang;
import com.example.demo4.repository.BangGiaRepository;
import com.example.demo4.repository.MathangRepository;

@Service
public class MathangServiceIImpl implements MathangService {
   @Autowired
   private MathangRepository mathangRepository;
   @Autowired 
   private BangGiaRepository bangGiaRepository;
   @Autowired 
   private Mathangconvert mathangconvert;
//   @Autowired
//   private Factory
   
	@Override
	public List<Mathang> getAllMathang() {
		// TODO Auto-generated method stub
		return mathangRepository.findAll();
	}
	@Override
	public List<MathangDTO> getmathang(Mathang mh, Banggia gia) {
		// TODO Auto-generated method stub
		List<Mathang> mathang=mathangRepository.findAll();
		List<Banggia> banggia2=new ArrayList<Banggia>();
		for (Mathang items: mathang) {
			banggia2.add(bangGiaRepository.getBanggiaLast(items.getMamh()));
		}
		List<MathangDTO> results=new ArrayList<MathangDTO>();
		for(Banggia gia2:banggia2) {
			MathangDTO mathangDTO=mathangconvert.toDTO(mh, gia2);
			results.add(mathangDTO);
		}
//		MathangDTO mh3=mathangconvert.toDTO(mathang, gia);
		return results;
	}
	@Override
	public MathangDTO getmathanggia(Mathang mh, Banggia gia) {
		// TODO Auto-generated method stub
		return mathangconvert.toDTO(mh, gia);
	}
	@Override
	public MathangDTO getmathangById(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Mathang getMHById(String id) {
		// TODO Auto-generated method stub
		return mathangRepository.getMHById(id);
	}
	@Override
	public List<Mathang> getMathangLast() {
		// TODO Auto-generated method stub
		return mathangRepository.getMathangLast();
	}
	@Override
	public List<Mathang> getInListID(String ten) {
		// TODO Auto-generated method stub
		return mathangRepository.getInListID(ten);
	}
	@Override
	public List<Mathang> getLayDSSP(String masothue) {
		// TODO Auto-generated method stub
		return mathangRepository.getLayDSSP(masothue);
	}
	@Override
	public List<Mathang> getLayDSSPDAMUA(String masothue) {
		// TODO Auto-generated method stub
		return mathangRepository.getLayDSSPDAMUA(masothue);
	}
	
	
}
