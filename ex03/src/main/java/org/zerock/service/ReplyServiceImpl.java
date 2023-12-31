package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.ReplyVO;
import org.zerock.mapper.ReplyMapper;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class ReplyServiceImpl implements ReplyService {
	
	private ReplyMapper mapper;

	@Override
	public int register(ReplyVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public List<ReplyVO> getList(Long bno) {
		return mapper.getList(bno);
	}
	
	@Override
	public List<ReplyVO> newreplylist() {
		return mapper.newreplylist();
	}

	@Override
	public int remove(Long rno) {
		return mapper.delete(rno);
	}

	@Override
	public int modify(ReplyVO vo) {
		return mapper.update(vo);
	}
	
	@Override
	public ReplyVO get(Long rno) {
		return mapper.get(rno);
	}
	
	@Override
	public ReplyVO count(Long bno) {
		return mapper.count(bno);
	}
	
	@Override
	public Long bnoCount() {
		return mapper.bnoCount();
	}

}

	




