package MVC;

import java.sql.Date;
import java.sql.Time;

public class BeansClass {
	//Flight.html
String to;


String from;
Date Deptdate;
String ID;
public String getTo() {
	return to;
}
public void setTo(String to) {
	this.to = to;
}
public String getFrom() {
	return from;
}
public void setFrom(String from) {
	this.from = from;
}
public Date getDeptdate() {
	return Deptdate;
}
public void setDeptdate(Date deptdate) {
	Deptdate = deptdate;
}
public String getID() {
	return ID;
}
public void setID(String iD) {
	ID = iD;
}
      //BookTickets.jsp

String FirstName,LastName,Gender;
int age;

public String getFirstName() {
	return FirstName;
}
public void setFirstName(String firstName) {
	FirstName = firstName;
}
public String getLastName() {
	return LastName;
}
public void setLastName(String lastName) {
	LastName = lastName;
}
public String getGender() {
	return Gender;
}
public void setGender(String gender) {
	Gender = gender;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
 //Admin.html

String time;
int price;

public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}

//Login

String Un;

public String getUn() {
	return Un;
}
public void setUn(String un) {
	Un = un;
}
}
