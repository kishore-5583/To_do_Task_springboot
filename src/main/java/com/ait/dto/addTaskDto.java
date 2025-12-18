package com.ait.dto;

public class addTaskDto {
	private String taskTitle;
	private String taskDescription;
	private Integer user_id;

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
		return "addTaskDto [taskTitle=" + taskTitle + ", taskDescription=" + taskDescription + ", user_id=" + user_id
				+ "]";
	}

}
