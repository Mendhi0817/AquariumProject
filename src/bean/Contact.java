package bean;

import java.io.Serializable;

public class Contact implements Serializable {

	/**
	 * 学校コード:String
	 */
	private String ct;

	/**
	 * 学校名:String
	 */
	private String cc;

	/**
	 * 学校名:String
	 */
	private String cd;


	/**
	 * ゲッター、セッター
	 */
	public String getContactTitle() {
		return ct;
	}

	public void setCt(String ct) {
		this.ct = ct;
	}

	public String getContactContent() {
		return cc;
	}

	public void setCc(String cc) {
		this.cc = cc;
	}

	public String getContactDate() {
		return cd;
	}

	public void setCd(String cd) {
		this.cd = cd;
	}

}