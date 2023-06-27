package com.example.demo4.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo4.entity.Cthd;
import com.example.demo4.entity.Hoadon;
import com.example.demo4.entity.Khachhang;
import com.example.demo4.entity.Mathang;
import com.example.demo4.entity.Taikhoan;
import com.example.demo4.service.BangGiaService;
import com.example.demo4.service.CTHDService;
import com.example.demo4.service.HoaDonService;
import com.example.demo4.service.KhachhangService;
import com.example.demo4.service.MathangService;
import com.example.demo4.service.PhieuDatService;
import com.example.demo4.service.SizeService;
import com.example.demo4.service.TaikhoanService;

@Controller
public class BillController {
	@Autowired
	TaikhoanService taikhoanService;
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
	
	public void convertDataCTHD(Set<Cthd> listCTHD, List<Mathang> listMaHang, Hoadon hd, List<Integer> listSL) {
		int i = 0;
		for (Mathang mathang : listMaHang) {
			Cthd ct = new Cthd();
			ct.setHoadon(hd);
			ct.setMathang(mathang);
			ct.setSoluong(listSL.get(i));
			listCTHD.add(ct);
			i++;
		}
	}
	
	@GetMapping("/bill/createbill")
	public String addHoaDon(ModelMap model, @ModelAttribute("listMatHang") List<Mathang> listMatHang, @ModelAttribute("listSoLuong") List<Integer> listSL, HttpSession session) 
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentPricipalName = authentication.getName();
		Taikhoan tk = taikhoanService.findByTaikhoan(currentPricipalName);
		Hoadon hd = new Hoadon();
		hd.setKhachhang(tk.getKhachhang());
		Set<Cthd> listCT = new HashSet<Cthd>();
		convertDataCTHD(listCT, listMatHang, hd, listSL);
		hd.setCthds(listCT);
		model.addAttribute("hoaDon", hd);
		return "view/taoHoaDon";
	}
	
	@PostMapping("/bill/createbill")
	public String saveHoaDon(@ModelAttribute("hoaDon") Hoadon hd, HttpSession session)
	{
		hoaDonService.addHoaDoen(hd);
		for (Cthd iterable_element : hd.getCthds()) {
			cthdService.addCTHD(iterable_element);
		}
		return "redirect:/";
	}
}
