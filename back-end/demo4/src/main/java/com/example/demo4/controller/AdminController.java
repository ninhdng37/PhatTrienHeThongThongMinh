package com.example.demo4.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo4.entity.Chatlieu;
import com.example.demo4.entity.Khachhang;
import com.example.demo4.entity.Mathang;
import com.example.demo4.entity.Nhanhieu;
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
   @Autowired
   private ReadPython readPython;
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
		
	   String h1=khachhang2.getMakh().replace("KH", "");
	   Integer h2=Integer.parseInt(h1)+1;
	  
	   kh.setMakh(KH.concat(h2.toString()));
	   kh.setHotenkh(hoten.trim());
	   kh.setEmail(email.trim());
	   kh.setDiachi(diachi.trim());
	   kh.setSdt(sdt.trim());
	   khachhangService.save(kh);
	   return "redirect:/list_users";
   }
   @PostMapping("/list_items/add")
   public String AddItem(Model model,Mathang mh,@RequestParam("tenmh") String tenmh,@RequestParam("cachlam") String cachlam,
		   @RequestParam("chatlieu3") String chatlieu3,@RequestParam("nhanhieu3") String nhanhieu3
		   ) throws IOException, InterruptedException {
	   List<Mathang> listmathanglast = mathangService.getMathangLast();
	   String MH="MH";
//		Khachhang khachhang2=khachhangService.getkhachhangLast();
//		System.out.println(khachhang2.getMakh().substring(2, 3));
//	   String h1=khachhang2.getMakh().replace("MH", "");
	   Integer index = listmathanglast.size();
	   String h1=listmathanglast.get(index-1).getMamh().replace("MH", "");
	   Integer h2=Integer.parseInt(h1)+1;
	   mh.setMamh(MH.concat(h2.toString()));
	   mh.setTenmh(tenmh.trim());
	   mh.setCachlam(Integer.parseInt(cachlam.trim()));
	   Nhanhieu nhanhieu2=new Nhanhieu();
	   nhanhieu2.setManh(nhanhieu3.trim());
	   mh.setNhanhieu(nhanhieu2);
//	   System.out.println(chatlieu3.toString());
	   Chatlieu chatlieu2=new Chatlieu();
	   chatlieu2.setMacl(chatlieu3.trim());
	   mh.setChatlieu(chatlieu2);
	   Double ProductBrand=0D;
	   Double Material=0D;
	   Double ProductionWay=0D;
	   if (cachlam.equals("1")) {
		ProductionWay=1D;
	}else {
		ProductionWay=0D;
	}
	   if (chatlieu3.equals("CL1")) {
		Material=1D;
	}else if (chatlieu3.equals("CL2")) {
		Material=(2/3D);
	}else {
		Material=(1/3D);
	}
	   if (nhanhieu3.equals("NH1")) {
		ProductBrand=1D;
	}else if (nhanhieu3.equals("NH2")) {
		ProductBrand=0.8D;
	}else if (nhanhieu3.equals("NH3")) {
		ProductBrand=0.6D;
	}else if (nhanhieu3.equals("NH4")) {
		ProductBrand=0.4D;
	}else {
		ProductBrand=0.2D;
	}
	 String label=  readPython.ReadPython(ProductBrand, Material, ProductionWay);
//	   mh.setNhan("0");
//	 System.out.println("error");
	 System.out.println(label);
//	 System.out.println("error2");
	   mathangService.save(mh);
	   return "redirect:/product";
   }
//   @GetMapping("/list_users/{makh}")
//	public String deleteUser(Model model,@PathVariable String makh) {
//		khachhangService.deleteKhachhangById(makh);
//		return "redirect:/list_users";
//	}
   @PostMapping("/delete_users")
   public String deleteUser(Model model,@RequestParam("idNhanVien") String makh) {
	
	   khachhangService.deleteKhachhangById(makh);
	   return "redirect:/list_users";
   }
   @GetMapping("/product")
   public String showProduct(Model model) {
	   List<Mathang> list=mathangService.getAllMathang();
	   model.addAttribute("listitem", list);
	   return "views/home2";
   }
   @GetMapping("/dashboard")
   public String showDashBoard(Model model) {
	   return "redirect:/list_users";
   }
}
