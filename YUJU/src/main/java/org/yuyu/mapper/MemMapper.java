package org.yuyu.mapper;

import java.util.List;

import org.yuyu.domain.MemVO;

public interface MemMapper {
	
	public List<MemVO> getList();
	
<<<<<<< HEAD

=======
	// 회원 데이터 삽입
	public void insert(MemVO memVO);
	
	// 회원 데이터 삽입(회원번호 자동 업데이트)
	public void insertSelectKey(MemVO memVO);
	
	//회원 데이터 조회
	public MemVO read(int mcode);
	
	//회원 데이터 삭제
	public int delete(int mcode);
	
	//회원 데이터 수정
	public int update(MemVO memVO);
	
>>>>>>> branch 'master' of https://github.com/108231ju/Youju_Project.git
}

