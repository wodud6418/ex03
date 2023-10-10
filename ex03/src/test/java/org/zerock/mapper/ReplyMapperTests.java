package org.zerock.mapper;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.ReplyVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") //컨트롤러 테스트위해
@Log4j
public class ReplyMapperTests {
				@Autowired
				private ReplyMapper mapper;
				
				@Test
				public void testInsert() {
					ReplyVO vo = new ReplyVO();
					vo.setBno(2424856L);
					vo.setReply("아 졸립다");
					vo.setReplyer("밤샌이");
					mapper.insert(vo);
					log.info("작성되나...");
				}
				
				@Test
				public void testUpdate() {
					ReplyVO vo = new ReplyVO();
					vo.setRno(4L);
					vo.setReply("아 졸립다....젠장으로 수정");
					mapper.update(vo);
				}
				
				@Test 
				public void testDelete() {
						mapper.delete(2L);
				}
				
				@Test
				 public void aaa() {
					log.info("aaa");
				}
				

}
