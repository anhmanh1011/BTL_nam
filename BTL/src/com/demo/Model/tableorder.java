package com.demo.Model;

public class tableorder {
	private int id_tableorder;
	private String name_customer;
	private String phone_number;
	private int number_of_people;
	private String time;
	private String note;
	private int idTable;
	
	public tableorder(int idTableOrder, String name_customer, String phone_number, int number_of_people, String time, String note,  int idTable) {
		super();
		this.id_tableorder = idTableOrder;
		this.name_customer = name_customer;
		this.phone_number = phone_number;
		this.number_of_people = number_of_people;
		this.time = time;
		this.note = note;
		this.idTable = idTable;
	}

	public int getId_tableorder() {
		return id_tableorder;
	}

	public void setId_tableorder(int id_tableorder) {
		this.id_tableorder = id_tableorder;
	}

	public String getName_customer() {
		return name_customer;
	}

	public void setName_customer(String name_customer) {
		this.name_customer = name_customer;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public int getNumber_of_people() {
		return number_of_people;
	}

	public void setNumber_of_people(int number_of_people) {
		this.number_of_people = number_of_people;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public int getIdTable() {
		return idTable;
	}

	public void setIdTable(int idTable) {
		this.idTable = idTable;
	}

	
	
	
}
