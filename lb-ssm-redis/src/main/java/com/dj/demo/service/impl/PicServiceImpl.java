package com.dj.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.dj.demo.dao.PicDao;
import com.dj.demo.model.Pic;
import com.dj.demo.service.PicService;
import com.dj.demo.utils.StrKit;

import redis.clients.jedis.JedisCluster;

@Service
public class PicServiceImpl implements PicService{

	@Autowired
	private JedisCluster jedisCluster;
	
	@Autowired
	private PicDao picDao;
	public List<Pic> getPics() {
		// TODO Auto-generated method stub
		String pics = jedisCluster.hget("pic", "pid");
		List<Pic> pics2=null;
		if(StrKit.isBlank(pics))
		{
			pics2= picDao.getPics();
			jedisCluster.hset("pic", "pid", JSON.toJSONString(pics2));
		}
		else {
			String hget = jedisCluster.hget("pic", "pid");
			pics2 = JSON.parseArray(hget, Pic.class);
		}
		return pics2;
	}

}
