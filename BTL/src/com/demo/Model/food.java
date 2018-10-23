package com.demo.Model;

public class food {
	
	private int id;
	private String namefood;
	private int priceFood;
	private String time;
	private int idFoodtype;
	private String anh;
	
	
	

	public food(int id, String namefood, int priceFood, String time, int idFoodtype, String anh) {
		super();
		this.id = id;
		this.namefood = namefood;
		this.priceFood = priceFood;
		this.time = time;
		this.idFoodtype = idFoodtype;
		this.anh = anh;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNamefood() {
		return namefood;
	}
	public void setNamefood(String namefood) {
		this.namefood = namefood;
	}
	public int getPriceFood() {
		return priceFood;
	}
	public void setPriceFood(int priceFood) {
		this.priceFood = priceFood;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getIdFoodtype() {
		return idFoodtype;
	}
	public void setIdFoodtype(int idFoodtype) {
		this.idFoodtype = idFoodtype;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	@Override
	public String toString() {
		return "food [id=" + id + ", namefood=" + namefood + ", priceFood=" + priceFood + ", time=" + time
				+ ", idFoodtype=" + idFoodtype + ", anh=" + anh + "]";
	}

	
	
}
