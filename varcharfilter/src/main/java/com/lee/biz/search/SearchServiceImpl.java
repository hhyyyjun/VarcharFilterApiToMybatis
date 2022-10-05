package com.lee.biz.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lee.biz.car.CarVO;


@Service("searchService")
public class SearchServiceImpl implements SearchService{

   @Autowired
   private SearchDAO searchDAO;
   
   @Override
   public List<CarVO> selectAll(SearchVO svo) {
      return searchDAO.selectAll(svo);
   }

   @Override
   public List<CarVO> selectMore(SearchVO svo) {
      return searchDAO.selectMore(svo);
   }
   
}