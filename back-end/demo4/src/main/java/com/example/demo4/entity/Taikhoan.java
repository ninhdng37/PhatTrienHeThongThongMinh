package com.example.demo4.entity;
// Generated Dec 14, 2022, 9:49:56 PM by Hibernate Tools 4.3.5.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Taikhoan generated by hbm2java
 */
@Entity
@Table(name = "taikhoan", catalog = "thoitrang")
public class Taikhoan implements java.io.Serializable {

	private String tentk;
	private Khachhang khachhang;
	private Quyen quyen;
	private String matkhau;
	private String manv;
	private Set<Danhgia> danhgias = new HashSet<Danhgia>(0);

	public Taikhoan() {
	}

	public Taikhoan(String tentk, String matkhau) {
		this.tentk = tentk;
		this.matkhau = matkhau;
	}

	public Taikhoan(String tentk, Khachhang khachhang, Quyen quyen, String matkhau, String manv,
			Set<Danhgia> danhgias) {
		this.tentk = tentk;
		this.khachhang = khachhang;
		this.quyen = quyen;
		this.matkhau = matkhau;
		this.manv = manv;
		this.danhgias = danhgias;
	}

	@Id

	@Column(name = "TENTK", unique = true, nullable = false, length = 50)
	public String getTentk() {
		return this.tentk;
	}

	public void setTentk(String tentk) {
		this.tentk = tentk;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MAKH")
	public Khachhang getKhachhang() {
		return this.khachhang;
	}

	public void setKhachhang(Khachhang khachhang) {
		this.khachhang = khachhang;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MAQUYEN")
	public Quyen getQuyen() {
		return this.quyen;
	}

	public void setQuyen(Quyen quyen) {
		this.quyen = quyen;
	}

	@Column(name = "MATKHAU")
	public String getMatkhau() {
		return this.matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	@Column(name = "MANV", length = 10)
	public String getManv() {
		return this.manv;
	}

	public void setManv(String manv) {
		this.manv = manv;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "taikhoan")
	public Set<Danhgia> getDanhgias() {
		return this.danhgias;
	}

	public void setDanhgias(Set<Danhgia> danhgias) {
		this.danhgias = danhgias;
	}

}
