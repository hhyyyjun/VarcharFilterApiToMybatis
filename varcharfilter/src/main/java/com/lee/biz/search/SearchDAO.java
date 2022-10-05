package com.lee.biz.search;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lee.biz.car.CarVO;

@Repository("searchDAO")
public class SearchDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<CarVO> selectAll(SearchVO svo){
		return mybatis.selectList("SearchDAO.searchCar", svo);
	}
	public List<CarVO> selectMore(SearchVO svo){
		return mybatis.selectList("SearchDAO.searchCar", svo);
	}
		
}
