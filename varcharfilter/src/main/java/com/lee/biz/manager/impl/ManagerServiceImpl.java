package com.lee.biz.manager.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lee.biz.car.CarVO;
import com.lee.biz.manager.ManagerService;
import com.lee.biz.member.MemberVO;

@Service("ManagerService")
public class ManagerServiceImpl implements ManagerService{
	
	@Autowired
	private ManagerDAO2 managerDAO;
	@Override
	public void insertCar(CarVO vo) {
		managerDAO.insert(vo);
	}
	@Override
	public void updateCar(CarVO vo) {
		managerDAO.update(vo);
	}
	@Override
	public void deleteCar(CarVO vo) {
		managerDAO.delete(vo);
	}
	@Override
	public CarVO selectOne(CarVO vo) {
		return managerDAO.selectOne(vo);
	}
	@Override
	public List<MemberVO> selectAllM(MemberVO vo) {
		return managerDAO.selectAllMember(vo);
	}
	@Override
	public List<CarVO> selectAllC(CarVO vo) {
		return managerDAO.selectAllCar(vo);
	}
}
