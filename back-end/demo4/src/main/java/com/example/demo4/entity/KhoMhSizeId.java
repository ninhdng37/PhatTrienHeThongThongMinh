package com.example.demo4.entity;
// Generated Dec 14, 2022, 9:49:56 PM by Hibernate Tools 4.3.5.Final

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * KhoMhSizeId generated by hbm2java
 */
@Embeddable
public class KhoMhSizeId implements java.io.Serializable {

	private String makho;
	private String mamh;
	private int masize;

	public KhoMhSizeId() {
	}

	public KhoMhSizeId(String makho, String mamh, int masize) {
		this.makho = makho;
		this.mamh = mamh;
		this.masize = masize;
	}

	@Column(name = "MAKHO", nullable = false, length = 10)
	public String getMakho() {
		return this.makho;
	}

	public void setMakho(String makho) {
		this.makho = makho;
	}

	@Column(name = "MAMH", nullable = false, length = 10)
	public String getMamh() {
		return this.mamh;
	}

	public void setMamh(String mamh) {
		this.mamh = mamh;
	}

	@Column(name = "MASIZE", nullable = false)
	public int getMasize() {
		return this.masize;
	}

	public void setMasize(int masize) {
		this.masize = masize;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof KhoMhSizeId))
			return false;
		KhoMhSizeId castOther = (KhoMhSizeId) other;

		return ((this.getMakho() == castOther.getMakho()) || (this.getMakho() != null && castOther.getMakho() != null
				&& this.getMakho().equals(castOther.getMakho())))
				&& ((this.getMamh() == castOther.getMamh()) || (this.getMamh() != null && castOther.getMamh() != null
						&& this.getMamh().equals(castOther.getMamh())))
				&& (this.getMasize() == castOther.getMasize());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getMakho() == null ? 0 : this.getMakho().hashCode());
		result = 37 * result + (getMamh() == null ? 0 : this.getMamh().hashCode());
		result = 37 * result + this.getMasize();
		return result;
	}

}
