package com.example.demo4.dto;

public class Item {
   private int id;
   private MathangDTO mathangDTO;
   private int quantity;
   private int gia;
   
public Item() {
	super();
}
public Item(int id, MathangDTO mathangDTO, int quantity, int gia) {
	super();
	this.id = id;
	this.mathangDTO = mathangDTO;
	this.quantity = quantity;
	this.gia = gia;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public MathangDTO getMathangDTO() {
	return mathangDTO;
}
public void setMathangDTO(MathangDTO mathangDTO) {
	this.mathangDTO = mathangDTO;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public int getGia() {
	return gia;
}
public void setGia(int gia) {
	this.gia = gia;
}
   
}
