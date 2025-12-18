package com.ait.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ait.Entity.tasksEntity;

public interface addTaskRepo extends JpaRepository<tasksEntity, Integer> {

}
