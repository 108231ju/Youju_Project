package org.yuyu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.yuyu.domain.MemProductListVO;
import org.yuyu.domain.ProductVO;
import org.yuyu.mapper.MemProductListMapper;

import lombok.Setter;

@Service
public class MemProductListServiceImpl implements MemProductListService {
	@Setter(onMethod_= @Autowired)
	MemProductListMapper memProductListMapper;

	@Override
	public List<MemProductListVO> getList() {
		return memProductListMapper.getList();
	}

	@Override
	public MemProductListVO view(int pcode) {
		// TODO Auto-generated method stub
		return memProductListMapper.view(pcode);
	}
	
	@Override
	public List<MemProductListVO> color(int pcode) {
		return memProductListMapper.color(pcode);
	}
	@Override
	public List<MemProductListVO> getListForCatecode(String catecode) {
		// TODO Auto-generated method stub
		return memProductListMapper.getListForCatecode(catecode);
	}

	@Override
	public List<MemProductListVO> size(int pcode) {
		return memProductListMapper.size(pcode);
	}

	@Override
	public List<MemProductListVO> review(int pcode) {
		return memProductListMapper.review(pcode);
	}
	
	@Override
	public List<MemProductListVO> QandA(int pcode) {
		return memProductListMapper.QandA(pcode);
	}

	@Override
	public MemProductListVO List(String cateCode) {
		// TODO Auto-generated method stub
		return memProductListMapper.List(cateCode);
	}

	@Override
	public java.util.List<MemProductListVO>  getListForcategory(String cateCodeRef) {
		// TODO Auto-generated method stub
		return memProductListMapper.getListForcategory(cateCodeRef);
	}

	@Override
	public java.util.List<MemProductListVO> getListFortoday(int today) {
		// TODO Auto-generated method stub
		return memProductListMapper.getListFortoday(today);
	}

	@Override
	public java.util.List<MemProductListVO> getListForbest(int best) {
		// TODO Auto-generated method stub
		return memProductListMapper.getListForbest(best);
	}

	@Override
	public java.util.List<MemProductListVO> getListForcategory(int best, String cateCodeRef) {
		// TODO Auto-generated method stub
		return memProductListMapper.getListForcategory(best,cateCodeRef);

	}
	@Override
	public java.util.List<MemProductListVO> getListFortodaycategory(int best, String cateCode) {
		// TODO Auto-generated method stub
		return memProductListMapper.getListFortodaycategory(best,cateCode);
		
	}

	@Override
	public java.util.List<MemProductListVO> getListFortodaycategoryRef(int best, String cateCodeRef) {
		// TODO Auto-generated method stub
		return memProductListMapper.getListFortodaycategoryRef(best,cateCodeRef);
		
	}


};



