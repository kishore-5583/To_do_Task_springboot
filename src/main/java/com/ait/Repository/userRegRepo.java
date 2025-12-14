package com.ait.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ait.Entity.userRegEntity;
@Repository
public interface userRegRepo extends JpaRepository<userRegEntity, Integer> {
	public Boolean findByEmailAndPassword(String a , String b);
}
