package com.ait.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tasks")
public class tasksEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer taskId;
	private String taskTitle;
	@Column(name = "description")
	private String taskDescription;
	private Integer user_id;

//	@ManyToOne
//	@JoinColumn(name = "user_id", nullable = false)
//	private userRegEntity user;
	public Integer getTaskId() {
		return taskId;
	}

	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}

	public String getTaskTitle() {
		return taskTitle;
	}

	public void setTaskTitle(String taskTitle) {
		this.taskTitle = taskTitle;
	}

	public String getTaskDescription() {
		return taskDescription;
	}

	public void setTaskDescription(String taskDescription) {
		this.taskDescription = taskDescription;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "tasksEntity [taskId=" + taskId + ", taskTitle=" + taskTitle + ", taskDescription=" + taskDescription
				+ ", user_id=" + user_id + "]";
	}

}
