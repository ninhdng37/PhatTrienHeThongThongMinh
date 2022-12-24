package com.example.demo4.service;

import java.util.List;

import com.example.demo4.entity.Taikhoan;

public interface TaikhoanService {
     Taikhoan findByTaikhoan(String tk);
     void save(Taikhoan tk);
     List<Taikhoan> getAllTaikhoan();
}
