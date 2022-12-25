package com.example.demo4.service;

import java.util.List;

import com.example.demo4.entity.Hoadon;

public interface HoaDonService {
	List<Hoadon> getLayDSHD(String masothue);
	public Integer getLaySP_KIEMTRAHD(String masothue);
}
