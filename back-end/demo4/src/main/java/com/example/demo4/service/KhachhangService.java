package com.example.demo4.service;

import java.util.List;

import com.example.demo4.entity.Khachhang;

public interface KhachhangService {
   void save(Khachhang kh);
   Khachhang getkhachhangLast();
   List<Khachhang> getAllKhachhang();
   Khachhang getKhachhangById(String id);
   void deleteKhachhangById(String id);
}
