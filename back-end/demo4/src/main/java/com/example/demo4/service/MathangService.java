package com.example.demo4.service;

import java.util.List;

import org.hibernate.Session;

import com.example.demo4.dto.MathangDTO;
import com.example.demo4.entity.Banggia;
import com.example.demo4.entity.Mathang;

public interface MathangService {
  List<Mathang> getAllMathang();
  List<MathangDTO> getmathang(Mathang mh,Banggia gia);
  MathangDTO getmathanggia(Mathang mh,Banggia gia);
  MathangDTO getmathangById(String id);
  Mathang getMHById(String id);
  List<Mathang> getMathangLast();
  List<Mathang> getInListID(String ten);
  List<Mathang> getLayDSSP(String masothue);
  List<Mathang> getLayDSSPDAMUA(String masothue);
}

