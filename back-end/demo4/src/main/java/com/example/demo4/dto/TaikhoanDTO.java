package com.example.demo4.dto;

public class TaikhoanDTO {
   private String tentk;
   private String matkhau;
   private Integer role;
public TaikhoanDTO() {
	super();
}
public TaikhoanDTO(String tentk, String matkhau, Integer role) {
	super();
	this.tentk = tentk;
	this.matkhau = matkhau;
	this.role = role;
}
public String getTentk() {
	return tentk;
}
public void setTentk(String tentk) {
	this.tentk = tentk;
}
public String getMatkhau() {
	return matkhau;
}
public void setMatkhau(String matkhau) {
	this.matkhau = matkhau;
}
public Integer getRole() {
	return role;
}
public void setRole(Integer role) {
	this.role = role;
}
   
}
