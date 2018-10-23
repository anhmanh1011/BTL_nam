package com.demo.Model;

public class foodtype {
	
	private int idFoodtype;
	private String nameFoodType;
	private String foodtype;
	
	
	
	public foodtype(int idFoodtype, String nameFoodType, String foodtype) {
		super();
		this.idFoodtype = idFoodtype;
		this.nameFoodType = nameFoodType;
		this.foodtype = foodtype;
	}
	public int getIdFoodtype() {
		return idFoodtype;
	}
	public void setIdFoodtype(int idFoodtype) {
		this.idFoodtype = idFoodtype;
	}
	public String getNameFoodType() {
		return nameFoodType;
	}
	public void setNameFoodType(String nameFoodType) {
		this.nameFoodType = nameFoodType;
	}
	public String getFoodtype() {
		return foodtype;
	}
	public void setFoodtype(String foodtype) {
		this.foodtype = foodtype;
	}
	
	
	

}
