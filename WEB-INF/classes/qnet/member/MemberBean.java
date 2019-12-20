package qnet.member;

import java.sql.Timestamp;

public class MemberBean {
	
	private String id;
	private String pass;
	private String passck;
	private String name;
	private int ju1;
	private int ju2;
	private String gender;
	private String nation;
	private String phone;
	private Timestamp reg_date;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getPassck() {
		return passck;
	}
	public void setPassck(String passck) {
		this.passck = passck;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getJu1() {
		return ju1;
	}
	public void setJu1(int ju1) {
		this.ju1 = ju1;
	}
	public int getJu2() {
		return ju2;
	}
	public void setJu2(int ju2) {
		this.ju2 = ju2;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
	
}
