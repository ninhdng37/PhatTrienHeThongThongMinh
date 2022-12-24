package com.example.demo4.dto;

import java.util.List;

public class OrderDTO {
   private Integer id;
   private TaikhoanDTO customer;
   private Integer status;
   private List<Item> items;
   public OrderDTO() {
	this.status=0;
   }
public OrderDTO(Integer id, TaikhoanDTO customer, Integer status, List<Item> items) {
	super();
	this.id = id;
	this.customer = customer;
	this.status = status;
	this.items = items;
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public TaikhoanDTO getCustomer() {
	return customer;
}
public void setCustomer(TaikhoanDTO customer) {
	this.customer = customer;
}
public Integer getStatus() {
	return status;
}
public void setStatus(Integer status) {
	this.status = status;
}
public List<Item> getItems() {
	return items;
}
public void setItems(List<Item> items) {
	this.items = items;
}
   public Integer getTotal() {
	   Integer sum=0;
		for(int i=0;i<items.size();i++) {
			/*
			 * if (items.get(i).getMathangDTO().getMamh().equals(mathangDTO.getMamh())) {
			 * System.out.println(listitems.get(i).getMathangDTO().getMamh());
			 * listitems.get(i).setQuantity(quantity); check=true; }
			 */
			sum+=items.get(i).getQuantity()*items.get(i).getGia();
		}
		return sum;
   }
   
}
