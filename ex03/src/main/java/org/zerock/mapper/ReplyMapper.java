package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.ReplyVO;

public interface ReplyMapper {
	
	//1.쓰고
	int insert(ReplyVO vo);
	
	//2. 목록 읽고
	List<ReplyVO> getList(Long bno);
	
	//3.수정
	int update(ReplyVO vo);
	
	//4. 삭제
	int delete(Long rno);
	
	//5. 한개보기
	ReplyVO get(Long rno);  
	
	//6.총리프개수보기
	ReplyVO count(Long bno);

}
