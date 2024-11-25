package bean;

import java.io.Serializable;
import java.sql.Date;

public class NotificationData implements Serializable {

	/**
	 * 学校コード:String
	 */
	private String nt;

	/**
	 * 学校名:String
	 */
	private String nc;

	/**
	 * 学校名:String
	 */
	private Date nd;

	private String ni;


	/**
	 * ゲッター、セッター
	 */
	public String getNi() {
		return ni;
	}

	public void setNi(String ni) {
		this.ni = ni;
	}



	public String getNc() {
		return nc;
	}

	public void setNc(String nc) {
		this.nc = nc;
	}

	public Date getNd() {
		return nd;
	}

	public void setNd(Date nd) {
		this.nd = nd;
	}

	public String getNt() {
		return nt;
	}

	public void setNt(String nt) {
		this.nt = nt;
	}

}