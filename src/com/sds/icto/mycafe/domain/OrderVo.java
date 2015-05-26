package com.sds.icto.mycafe.domain;

public class OrderVo {

	private int no;
	private String name;
	private int price;
	private String content;
	private int orderno;
	private int quantity;
	
	@Override
	public String toString() {
		return "OrderVo [no=" + no + ", name=" + name + ", price=" + price
				+ ", content=" + content + ", orderno=" + orderno
				+ ", quantity=" + quantity + ", toString()=" + super.toString()
				+ "]";
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getOrderno() {
		return orderno;
	}
	public void setOrderno(int orderno) {
		this.orderno = orderno;
	}
	
	
}
