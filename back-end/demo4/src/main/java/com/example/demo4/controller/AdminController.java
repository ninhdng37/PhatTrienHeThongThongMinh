package com.example.demo4.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
   @PostMapping("/list_users/add")
   public String AddUser(Model model,Khachhang kh,@RequestParam("hoten") String hoten,@RequestParam("email") String email,
		   @RequestParam("diachi") String diachi,@RequestParam("sdt") String sdt) {
	   String KH="KH";
		Khachhang khachhang2=khachhangService.getkhachhangLast();
		System.out.println(khachhang2.getMakh().substring(2, 3));
	   String h1=khachhang2.getMakh().replace("KH", "");
	   Integer h2=Integer.parseInt(h1)+1;
	   System.out.println(h2);
	   kh.setMakh(KH.concat(h2.toString()));
	   kh.setHotenkh(hoten.trim());
	   kh.setEmail(email.trim());
	   kh.setDiachi(diachi.trim());
	   kh.setSdt(sdt.trim());
	   khachhangService.save(kh);
	   return "redirect:/list_users";
   }
//   @GetMapping("/list_users/{makh}")
//	public String deleteUser(Model model,@PathVariable String makh) {
//		khachhangService.deleteKhachhangById(makh);
//		return "redirect:/list_users";
//	}
   @PostMapping("/delete_users")
   public String deleteUser(Model model,@RequestParam("idNhanVien") String makh) {
	   System.out.println(makh);
	   khachhangService.deleteKhachhangById(makh);
	   return "redirect:/list_users";
   }
}
