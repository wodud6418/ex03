package study;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JavaTests {
		int a=3;
		
		public void a1() {
			int a=5;
		}
		
		
		@Test
		public void aaa() {
			log.info(a);
		}

}
