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
	public String getNotificationDataId() {
		return ni;
	}

	public void setNi(String ni) {
		this.ni = ni;
	}



	public String getNotificationDataTitle() {
		return nt;
	}

	public void setNt(String nt) {
		this.nt = nt;
	}

	public String getNotificationDataContent() {
		return nc;
	}

	public void setNc(String nc) {
		this.nc = nc;
	}

	public Date getNotificationDataDay() {
		return nd;
	}

	public void setNd(Date nd) {
		this.nd = nd;
	}

}