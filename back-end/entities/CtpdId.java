package com.websitethoitrang.entities;
// Generated Dec 14, 2022, 9:49:56 PM by Hibernate Tools 4.3.5.Final

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * CtpdId generated by hbm2java
 */
@Embeddable
public class CtpdId implements java.io.Serializable {

	private String mapd;
	private String mamh;

	public CtpdId() {
	}

	public CtpdId(String mapd, String mamh) {
		this.mapd = mapd;
		this.mamh = mamh;
	}

	@Column(name = "MAPD", nullable = false, length = 10)
	public String getMapd() {
		return this.mapd;
	}

	public void setMapd(String mapd) {
		this.mapd = mapd;
	}

	@Column(name = "MAMH", nullable = false, length = 10)
	public String getMamh() {
		return this.mamh;
	}

	public void setMamh(String mamh) {
		this.mamh = mamh;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CtpdId))
			return false;
		CtpdId castOther = (CtpdId) other;

		return ((this.getMapd() == castOther.getMapd()) || (this.getMapd() != null && castOther.getMapd() != null
				&& this.getMapd().equals(castOther.getMapd())))
				&& ((this.getMamh() == castOther.getMamh()) || (this.getMamh() != null && castOther.getMamh() != null
						&& this.getMamh().equals(castOther.getMamh())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getMapd() == null ? 0 : this.getMapd().hashCode());
		result = 37 * result + (getMamh() == null ? 0 : this.getMamh().hashCode());
		return result;
	}

}