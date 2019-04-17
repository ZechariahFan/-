package com.dj.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dj.demo.model.Pic;


@Repository
public interface PicDao {

	
	public List<Pic> getPics();
}
