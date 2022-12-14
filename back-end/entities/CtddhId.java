package com.websitethoitrang.entities;
// Generated Dec 14, 2022, 9:49:56 PM by Hibernate Tools 4.3.5.Final

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * CtddhId generated by hbm2java
 */
@Embeddable
public class CtddhId implements java.io.Serializable {

	private String maddh;
	private String mamh;

	public CtddhId() {
	}

	public CtddhId(String maddh, String mamh) {
		this.maddh = maddh;
		this.mamh = mamh;
	}

	@Column(name = "MADDH", nullable = false, length = 10)
	public String getMaddh() {
		return this.maddh;
	}

	public void setMaddh(String maddh) {
		this.maddh = maddh;
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
		if (!(other instanceof CtddhId))
			return false;
		CtddhId castOther = (CtddhId) other;

		return ((this.getMaddh() == castOther.getMaddh()) || (this.getMaddh() != null && castOther.getMaddh() != null
				&& this.getMaddh().equals(castOther.getMaddh())))
				&& ((this.getMamh() == castOther.getMamh()) || (this.getMamh() != null && castOther.getMamh() != null
						&& this.getMamh().equals(castOther.getMamh())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getMaddh() == null ? 0 : this.getMaddh().hashCode());
		result = 37 * result + (getMamh() == null ? 0 : this.getMamh().hashCode());
		return result;
	}

}
