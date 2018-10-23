package com.demo.Model;

public class table {
	
	private int idTable;
	private String type_table;
	private String number_of_people;
	private String status_table;
	
	
	
	
	public table(int idTable, String type_table, String number_of_people, String status_table) {
		super();
		this.idTable = idTable;
		this.type_table = type_table;
		this.number_of_people = number_of_people;
		this.status_table = status_table;
	}
	public int getIdTable() {
		return idTable;
	}
	public void setIdTable(int idTable) {
		this.idTable = idTable;
	}
	public String getType_table() {
		return type_table;
	}
	public void setType_table(String type_table) {
		this.type_table = type_table;
	}
	public String getNumber_of_people() {
		return number_of_people;
	}
	public void setNumber_of_people(String number_of_people) {
		this.number_of_people = number_of_people;
	}
	public String getStatus_table() {
		return status_table;
	}
	public void setStatus_table(String status_table) {
		this.status_table = status_table;
	}
	@Override
	public String toString() {
		return "table [idTable=" + idTable + ", type_table=" + type_table + ", number_of_people=" + number_of_people
				+ ", status_table=" + status_table + ", getIdTable()=" + getIdTable() + ", getType_table()="
				+ getType_table() + ", getNumber_of_people()=" + getNumber_of_people() + ", getStatus_table()="
				+ getStatus_table() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}

	
	
}
