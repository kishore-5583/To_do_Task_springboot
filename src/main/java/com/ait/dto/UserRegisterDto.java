package com.ait.dto;

public class UserRegisterDto {

	private String fullName;
	private String email;
	private String password;
	private String confirmPassword;
	private Integer age;
	private String gender;
	private String occupation;
	private String mobile;
	private String address;

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "UserRegisterDto [fullName=" + fullName + ", email=" + email + ", password=" + password
				+ ", confirmPassword=" + confirmPassword + ", age=" + age + ", gender=" + gender + ", occupation="
				+ occupation + ", mobile=" + mobile + ", address=" + address + "]";
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

}
