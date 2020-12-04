package com.zt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zt.dao.FoodImgMapper;
import com.zt.domain.FoodImg;

@Service
public class FoodImgService {
	
	@Autowired
	private FoodImgMapper foodImgMapper;
	
	public int saveFoodImg(FoodImg foodImg) {
		return foodImgMapper.insert(foodImg);
	}
	
	public int updateFoodImgById(FoodImg foodImg) {
		return foodImgMapper.update(foodImg);
	}
	
	public int deleteFoodImgByIds(List<Integer> ids) {
		return foodImgMapper.delete(ids);
	}
	
	public int queryFoodImgTotal(FoodImg foodImg) {
		return foodImgMapper.queryTotal(foodImg);
	}
	
	public List<FoodImg> queryFoodImg(FoodImg foodImg) {
		return foodImgMapper.query(foodImg);
	}
	
	public FoodImg getFoodImg(Integer id) {
		return foodImgMapper.get(id);
	}
	
	public List<FoodImg> queryFoodImgByFoodId(Integer foodId) {
		FoodImg foodImg = new FoodImg();
		foodImg.setFoodId(foodId);
		return foodImgMapper.query(foodImg);
	}
	
}
