package com.dj.demo.model;

public class Pic {

	private String pid;
	private String paddress;
	public Pic() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPaddress() {
		return paddress;
	}
	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}
	@Override
	public String toString() {
		return "Pic [pid=" + pid + ", paddress=" + paddress + "]";
	}
	
	
}
