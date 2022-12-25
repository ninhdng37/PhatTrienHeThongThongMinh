package com.example.demo4.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.authenticator.SpnegoAuthenticator.AuthenticateAction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AnonymousAuthenticationFilter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo4.dto.Item;
import com.example.demo4.dto.MathangDTO;
import com.example.demo4.dto.OrderDTO;
import com.example.demo4.dto.TaikhoanDTO;
import com.example.demo4.entity.Banggia;
import com.example.demo4.entity.Hoadon;
import com.example.demo4.entity.Khachhang;
import com.example.demo4.entity.Mathang;
import com.example.demo4.entity.Phieudat;
import com.example.demo4.entity.Quyen;
import com.example.demo4.entity.Size;
import com.example.demo4.entity.Taikhoan;
import com.example.demo4.service.BangGiaService;
import com.example.demo4.service.CTHDService;
import com.example.demo4.service.HoaDonService;
import com.example.demo4.service.KhachhangService;
import com.example.demo4.service.MathangService;
import com.example.demo4.service.PhieuDatService;
import com.example.demo4.service.SizeService;
import com.example.demo4.service.TaikhoanService;

import net.bytebuddy.implementation.bind.MethodDelegationBinder.ParameterBinding.Anonymous;

@Controller
public class HomeController {
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
	private Apriori apriori;
	
	private List<Mathang> listmhdanhgia = new ArrayList<Mathang>();

	

	@GetMapping("/")
	public String viewHomePage(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentPricipalName = authentication.getName();
		System.out.print(currentPricipalName);
		if (!currentPricipalName.equals("anonymousUser")) {
			Taikhoan tk = taikhoanService.findByTaikhoan(currentPricipalName);
			System.out.print(tk.getQuyen().getMaquyen());
			if (tk.getQuyen().getTenquyen().equals("ADMIN")) {
				currentPricipalName = "ADMIN";
			} else {
				currentPricipalName = "USER";
			}
		}
		model.addAttribute("user", currentPricipalName);
		System.out.println(3);
		for(Mathang mathang : listmhdanhgia) {
			System.out.println(mathang.getMamh());
		}
		if (listmhdanhgia.size() > 0) {
			model.addAttribute("listmathang", listmhdanhgia);
		}
//		System.out.print("hung3");
		
		return "views/index";
	}

	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		model.addAttribute("tk", new Taikhoan());

		return "views/signup_form";
	}

	@GetMapping("/login")
	public String showlogin(Model model) {
		return "views/login";
	}

	@PostMapping("/process_register")
	public String processRegister(Taikhoan tk) {
		String KH = "KH";
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(tk.getMatkhau());
		Quyen quyen = new Quyen();
		Khachhang khachhang = new Khachhang();
		Khachhang khachhang2 = khachhangService.getkhachhangLast();
		System.out.println(khachhang2.getMakh().substring(2, 3));
		String h1 = khachhang2.getMakh().replace("KH", "");
		Integer h2 = Integer.parseInt(h1) + 1;
		System.out.println(h2);
		khachhang.setMakh(KH.concat(h2.toString()));
		khachhang.setEmail(tk.getTentk());
		khachhangService.save(khachhang);
		quyen.setMaquyen(2);
		tk.setMatkhau(encodedPassword);
		tk.setQuyen(quyen);
		tk.setKhachhang(khachhang);
		taikhoanService.save(tk);

		return "views/register_success";
	}

//	@PostMapping("/users")
//	public String addUser(Khachhang kh,Model model) {
//		String KH="KH";
//		Khachhang khachhang2=khachhangService.getkhachhangLast();
//		System.out.println(khachhang2.getMakh().substring(2, 3));
//	   String h1=khachhang2.getMakh().replace("KH", "");
//	   Integer h2=Integer.parseInt(h1)+1;
//	   System.out.println(h2);
//		kh.setMakh(KH.concat(h2.toString()));
//		khachhangService.save(kh);
//		List<Khachhang> listkhachhang=khachhangService.getAllKhachhang();
//		model.addAttribute("listUsers", listkhachhang);
//		return "views/users";
//	}
//	@GetMapping("/user_new")
//	public String showAddUser(Model model) {
//		model.addAttribute("user", new Khachhang());
//		return "views/create_student";
//	}
	@GetMapping("/login_tk")
	public String listUsers(Model model, HttpSession session) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentPricipalName = authentication.getName();
		Taikhoan tk = taikhoanService.findByTaikhoan(currentPricipalName);
		List<Khachhang> listkhachhang = khachhangService.getAllKhachhang();
		model.addAttribute("listUsers", listkhachhang);
		model.addAttribute("user", tk);
		System.out.println(tk.getKhachhang().getMasothue());
//		session.setAttribute("mySessionAttribute", tk.getTentk());
		session.setAttribute("mySession", tk);
//		List<Hoadon> listhoadon=hoaDonService.getLayDSHD();
		if (tk.getQuyen().getTenquyen().equals("KHÁCH HÀNG")) {
			System.out.println(1);
			listmhdanhgia = apriori.Apriori(tk.getKhachhang().getMasothue());
			for(Mathang mathang : listmhdanhgia) {
				System.out.println(mathang.getMamh());
			}

			System.out.println(2);
			return "redirect:/";
		}

		return "redirect:/list_users";
	}

	@GetMapping("/list_items")
	public String listItems(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentPricipalName = authentication.getName();
		System.out.print(currentPricipalName);
		if (!currentPricipalName.equals("anonymousUser")) {
			Taikhoan tk = taikhoanService.findByTaikhoan(currentPricipalName);
			if (tk.getQuyen().getTenquyen().equals("ADMIN")) {
				currentPricipalName = "ADMIN";
			} else {
				currentPricipalName = "USER";
			}
		}
		List<MathangDTO> listmhDTO = new ArrayList<MathangDTO>();
		model.addAttribute("user", currentPricipalName);
		List<Mathang> listmathang = mathangService.getAllMathang();
		List<Mathang> listmathanglast = mathangService.getMathangLast();
		Integer index = listmathanglast.size();
//		System.out.println(listmathanglast.get(index-1).getMamh());
//		System.out.print(listmathanglast);
		List<Banggia> banggia2 = new ArrayList<Banggia>();
		List<Mathang> listmathang2 = new ArrayList<Mathang>();
		for (Mathang items : listmathang) {
			banggia2.add(bangGiaService.getBanggiaLast(items.getMamh()));
//			System.out.println(items.getMamh());
		}
		for (Banggia gia : banggia2) {
		}
		for (Mathang items : listmathang) {
			listmhDTO.add(mathangService.getmathanggia(items, bangGiaService.getBanggiaLast(items.getMamh())));
		}
		model.addAttribute("listmathang", listmhDTO);
		model.addAttribute("gia", banggia2);
		return "views/items";
	}

	@GetMapping("user_edit/{makh}")
	public String editUser(Model model, @PathVariable String makh) {
		model.addAttribute("user", khachhangService.getKhachhangById(makh));
		return "views/edit_user";
	}

	@PostMapping("user_edit/{makh}")
	public String updateUser(Model model, Khachhang kh, @PathVariable String makh) {
		Khachhang exitkh = khachhangService.getKhachhangById(makh);
		exitkh.setHotenkh(kh.getHotenkh());
		exitkh.setSocmnd(kh.getSocmnd());
		exitkh.setEmail(kh.getEmail());
		khachhangService.save(exitkh);
		List<Khachhang> lisUsers = khachhangService.getAllKhachhang();
		model.addAttribute("listUsers", lisUsers);
		return "views/users";
	}

	@GetMapping("items_info/{mamh}")
	public String showitems(Model model, @PathVariable String mamh) {
		Mathang mathang = mathangService.getMHById(mamh);
		MathangDTO mathangDTO = new MathangDTO();
		mathangDTO = mathangService.getmathanggia(mathang, bangGiaService.getBanggiaLast(mamh));
		List<Size> sizes = sizeService.getAllSize();
		model.addAttribute("sizes", sizes);
		model.addAttribute("mathang", mathangDTO);
		String listMHStr = getRecommendation(mamh);
		String tmp = listMHStr.replace("'", "");
		tmp = tmp.replace("[", "");
		tmp = tmp.replace("]", "");
		tmp = tmp.replace(" ", "");
		model.addAttribute("listMathang", mathangService.getInListID(tmp));
		return "views/item_detail_1";
	}

	public String getRecommendation(String maMH) {
		String s = null;
		String str = null;
		try {

			// run the Unix "ps -ef" command
			// using the Runtime exec method:
			String cmd = "python C:\\Users\\ADMIN\\Downloads\\hung\\test.py " + maMH;
			Process p = Runtime.getRuntime().exec(cmd);

			BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));

			BufferedReader stdError = new BufferedReader(new InputStreamReader(p.getErrorStream()));

			// read the output from the command
			System.out.println("Here is the standard output of the command:\n");
			while ((s = stdInput.readLine()) != null) {
				System.out.println(s);

				str = s;
			}

			// read any errors from the attempted command
			System.out.println("Here is the standard error of the command (if any):\n");
			while ((s = stdError.readLine()) != null) {
				System.out.println(s);
			}

			// System.exit(0);
		} catch (IOException e) {
			System.out.println("exception happened - here's what I know: ");
			e.printStackTrace();
			// System.exit(-1);
		}
		return str;

	}

	@GetMapping("shopping_cart")
	public String showcartshopping(HttpSession session) {
		OrderDTO orderDTO = (OrderDTO) session.getAttribute("order");
		session.setAttribute("order", orderDTO);
		return "views/shopping_cart";
	}

	@GetMapping("add_item_cart/{mamh}")
	public String showCart(Model model, HttpServletRequest request, @PathVariable String mamh, HttpSession session) {
		int quantity = 1;
		Integer id = 1;
		String mamh2;
		if (mamh != null) {
			mamh2 = mamh;
			Mathang mathang = mathangService.getMHById(mamh2);
			MathangDTO mathangDTO = mathangService.getmathanggia(mathang, bangGiaService.getBanggiaLast(mamh2));
			if (mathangDTO != null) {
				if (request.getParameter("quantity") != null) {
					quantity = Integer.parseInt(request.getParameter("quantity"));
					System.out.println(request.getParameter("quantity"));
				}
				if (session.getAttribute("order") == null) {
					Taikhoan taikhoan = (Taikhoan) session.getAttribute("mySession");
					TaikhoanDTO taikhoanDTO = new TaikhoanDTO();
					taikhoanDTO.setTentk(taikhoan.getTentk());
					taikhoanDTO.setRole(taikhoan.getQuyen().getMaquyen());
					OrderDTO orderDTO = new OrderDTO();
					List<Item> items = new ArrayList<Item>();
					Item item = new Item();
					item.setId(id);
					item.setQuantity(quantity);
					item.setMathangDTO(mathangDTO);
					item.setGia(mathangDTO.getGia());
					items.add(item);
					orderDTO.setItems(items);
					orderDTO.setCustomer(taikhoanDTO);
					session.setAttribute("order", orderDTO);
				} else {
					OrderDTO orderDTO = (OrderDTO) session.getAttribute("order");
					List<Item> listitems = orderDTO.getItems();
					boolean check = false;
					for (Item item : listitems) {
						if (item.getMathangDTO().getMamh().equals(mathangDTO.getMamh())) {
							item.setQuantity(item.getQuantity() + quantity);
							item.setId(id + item.getId());
							check = true;
						}
					}
					if (check == false) {
						Item item = new Item();
						item.setQuantity(quantity);
						item.setMathangDTO(mathangDTO);
						item.setGia(mathangDTO.getGia());
						listitems.add(item);
					}
					session.setAttribute("order", orderDTO);
				}
			}
			return "redirect:/shopping_cart";
		}
		return "redirect:/shopping_cart";
	}

	@PostMapping("shopping_cart/update")
	public String updateshoppingcart(Model model, HttpSession session, @RequestParam("productId") String productid,
			@RequestParam("quantity") Integer quantity) {
		Mathang mathang = mathangService.getMHById(productid);
		MathangDTO mathangDTO = mathangService.getmathanggia(mathang, bangGiaService.getBanggiaLast(productid));
		if (session.getAttribute("order") == null) {
			OrderDTO orderDTO = new OrderDTO();
			List<Item> items = new ArrayList<Item>();
			Item item = new Item();
			item.setQuantity(quantity);
			item.setMathangDTO(mathangDTO);
			item.setGia(mathangDTO.getGia());
			items.add(item);
			orderDTO.setItems(items);
			session.setAttribute("order", orderDTO);
		} else {
			OrderDTO orderDTO = (OrderDTO) session.getAttribute("order");
			List<Item> listitems = orderDTO.getItems();

			boolean check = false;
			Integer sum = 0;
			for (int i = 0; i < listitems.size(); i++) {
				if (listitems.get(i).getMathangDTO().getMamh().equals(mathangDTO.getMamh())) {
					System.out.println(listitems.get(i).getMathangDTO().getMamh());
					listitems.get(i).setQuantity(quantity);
					check = true;
				}
				sum += listitems.get(i).getQuantity() * listitems.get(i).getGia();
			}
			System.out.println(sum);
			if (check == false) {
				Item item = new Item();
				item.setQuantity(quantity);
				item.setMathangDTO(mathangDTO);
				item.setGia(mathangDTO.getGia());
				listitems.add(item);
			}
			session.setAttribute("order", orderDTO);
		}
		return "redirect:/shopping_cart";
	}

	@GetMapping("remove_item/{mamh}")
	public String removeItem(Model mode, @PathVariable String mamh, HttpSession session) {
		int quantity = 1;
//		Integer id=1;
		String mamh2;
		if (mamh != null) {
			mamh2 = mamh;
			Mathang mathang = mathangService.getMHById(mamh2);
			MathangDTO mathangDTO = mathangService.getmathanggia(mathang, bangGiaService.getBanggiaLast(mamh2));
			if (mathangDTO != null) {
				if (session.getAttribute("order") == null) {
					OrderDTO orderDTO = new OrderDTO();
					List<Item> items = new ArrayList<Item>();
					Item item = new Item();
//					item.setId(id);
					item.setQuantity(quantity);
					item.setMathangDTO(mathangDTO);
					item.setGia(mathangDTO.getGia());
					items.add(item);
					orderDTO.setItems(items);
					session.setAttribute("order", orderDTO);
				} else {
					OrderDTO orderDTO = (OrderDTO) session.getAttribute("order");
					List<Item> listitems = orderDTO.getItems();
					boolean check = false;
//					for(Item item:listitems) {
//						if (item.getMathangDTO().getMamh().equals(mathangDTO.getMamh())) {
//							System.out.print(item.getMathangDTO().getMamh());
//							listitems.remove(0);
//							check=true;
//						}
//					}
					for (int i = 0; i < listitems.size(); i++) {
						if (listitems.get(i).getMathangDTO().getMamh().equals(mathangDTO.getMamh())) {
							System.out.println(listitems.get(i).getMathangDTO().getMamh());
							listitems.remove(i);
							check = true;
						}

					}
					if (check == false) {
						Item item = new Item();
						item.setQuantity(quantity);
						item.setMathangDTO(mathangDTO);
						item.setGia(mathangDTO.getGia());
						listitems.add(item);
					}
					session.setAttribute("order", orderDTO);
				}
			}
			return "redirect:/shopping_cart";
		}
		return "redirect:/shopping_cart";
	}

	@PostMapping("/insert_items_cart")
	public String insertItemsCart(Model model, HttpSession session) {
		OrderDTO orderDTO = (OrderDTO) session.getAttribute("order");
		String tentk = orderDTO.getCustomer().getTentk();
		Taikhoan taikhoan = taikhoanService.findByTaikhoan(tentk);
		Phieudat phieudat = new Phieudat();
		phieudat.setMapd("PD11");
		phieudat.setKhachhang(taikhoan.getKhachhang());
		phieuDatService.save(phieudat);
		return "redirect:/";
	}

//	@GetMapping("/list_users/{makh}")
//	public String deleteUser(Model model,@PathVariable String makh) {
//		khachhangService.deleteKhachhangById(makh);
//		return "redirect:/list_users";
//	}
	@PostMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("mySession");
		return "views/index2";
	}
}
