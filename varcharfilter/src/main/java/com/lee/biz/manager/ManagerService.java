package com.lee.biz.manager;

import java.util.List;

import com.lee.biz.car.CarVO;
import com.lee.biz.member.MemberVO;

public interface ManagerService {
	public void insertCar(CarVO vo);
	public void updateCar(CarVO vo);
	public void deleteCar(CarVO vo);
	public CarVO selectOne(CarVO vo);
	public List<MemberVO> selectAllM(MemberVO vo);
	public List<CarVO> selectAllC(CarVO vo);
}
