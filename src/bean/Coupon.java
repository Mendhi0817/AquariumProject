package bean;

import java.sql.Blob;

public class Coupon {

	private Blob MapImage;

	private int FloorInfo;

	private int MapId;

	public Blob getMapImage() {
		return MapImage;
	}

	public void setMapImage(Blob mapImage) {
		this.MapImage = mapImage;
	}

	public int getFloorInfo() {
		return FloorInfo;
	}

	public void setFloorInfo(int floorInfo) {
		this.FloorInfo = floorInfo;
	}

	public int getMapId() {
		return MapId;
	}

	public void setMapId(int mapId) {
		this.MapId = mapId;
	}




}

