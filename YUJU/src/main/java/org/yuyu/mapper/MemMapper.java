package org.yuyu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.yuyu.domain.MemVO;
import org.yuyu.domain.StoreMemVO;

public interface MemMapper {
   
   // 회원 전체 데이터 조회
   public List<MemVO> getList();
   
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
   
   //회원 로그인
   public MemVO loginOk(@Param("mid") String mid,@Param("mpw") String mpw);
 
   
}