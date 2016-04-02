package md.utm.entity.model.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Profile {

	public int idProfile;
	public String firstName;
	public String lastName;
	public Date dBirthday;
	public String location;
	public String status;
	public long picture;
	private List<Comment> comment;
	
	
	


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getIdProfile() {
		return idProfile;
	}

	public void setIdProfile(int idProfile) {
		this.idProfile = idProfile;
	}
	

	@OneToMany(cascade = CascadeType.ALL)
	public List<Comment> getComment() {
		return comment;
	}

	public void setComment(List<Comment> comment) {
		this.comment = comment;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getdBirthday() {
		return dBirthday;
	}

	public void setdBirthday(Date dBirthday) {
		this.dBirthday = dBirthday;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public long getPicture() {
		return picture;
	}

	public void setPicture(long picture) {
		this.picture = picture;
	}

}
