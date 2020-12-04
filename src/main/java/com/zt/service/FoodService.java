package com.zt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zt.dao.FoodMapper;
import com.zt.domain.Food;

@Service
public class FoodService {
	
	@Autowired
	private FoodMapper foodMapper;
	
	public int saveFood(Food food) {
		return foodMapper.insert(food);
	}
	
	public int updateFoodById(Food food) {
		return foodMapper.update(food);
	}
	
	public int deleteFoodByIds(List<Integer> ids) {
		return foodMapper.delete(ids);
	}
	
	public int queryFoodTotal(Food food) {
		return foodMapper.queryTotal(food);
	}
	
	public List<Food> queryFood(Food food) {
		return foodMapper.query(food);
	}
	
	public Food getFood(Integer id) {
		return foodMapper.get(id);
	}
	
}
