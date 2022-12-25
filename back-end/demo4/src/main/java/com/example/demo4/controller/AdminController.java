package com.example.demo4.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo4.entity.Khachhang;
import com.example.demo4.service.BangGiaService;
import com.example.demo4.service.CTHDService;
import com.example.demo4.service.HoaDonService;
import com.example.demo4.service.KhachhangService;
import com.example.demo4.service.MathangService;
import com.example.demo4.service.PhieuDatService;
import com.example.demo4.service.SizeService;
import com.example.demo4.service.TaikhoanService;

@Controller
public class AdminController {
	@Autowired
	private TaikhoanService taikhoanService;
	@Autowired
   private KhachhangService khachhangService;
   @Autowired
   private MathangService mathangService;
   @Autowired
   private BangGiaService bangGiaService;
   @Autowired
   private SizeService sizeService;
   @Autowired
   private PhieuDatService phieuDatService;
   @Autowired 
   private CTHDService cthdService;
   @Autowired
   private HoaDonService hoaDonService;
   @GetMapping("/list_users")
   public String showListUser(Model model) {
	   List<Khachhang> listkhachhang=khachhangService.getAllKhachhang();
	   model.addAttribute("listUsers", listkhachhang);
	   return "views/home";
   }
}
