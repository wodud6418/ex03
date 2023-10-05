package org.zerock.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.ReplyVO;
import org.zerock.service.ReplyServiceTests;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") //컨트롤러 테스트위해
@Log4j
public class ReplyServiceTests {
	@Autowired
	private ReplyService service;
	
	@Test
	public void testregister() {
		ReplyVO vo = new ReplyVO();
		vo.setBno(2424856L);
		vo.setReply("가즈아");
		vo.setReplyer("작성맨");
		service.register(vo);

	}
	
	@Test
	public void testremove() {
		service.remove(7L);
	
	}
	
	@Test
	public void testmodify() {
		ReplyVO vo = new ReplyVO();
		vo.setRno(8L);
		vo.setReply("수정가즈아");
		vo.setReplyer("수정맨");
		service.modify(vo);
	
	}
	
	@Test
	public void testgetlist() {
		service.getList(2424856L).forEach(x->log.info(x));
	
	}
	
	@Test
	public void testget() {
		service.get(11L);
	}
	
	@Test
	public void testcount() {
		service.count(2424856L);
	}
}
