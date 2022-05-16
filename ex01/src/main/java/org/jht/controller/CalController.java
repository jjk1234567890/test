package org.jht.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CalController {
	@Autowired
	//CalService cservice;
	// consumes, produces 선택사항(명시하지 않아도 됨-명시를 하지 않으면 웹브라우저가 알아서 판단을 해서 타입을 결정.)
	// consumes는 화면(클라이언트)->서버에게 보내는 데이터 타입을 명시
	// produces는 서버->화면(클라이언트)에게 반환하는 데이터 타입을 명시
	@GetMapping("/index")
	public String CalList() {
		System.out.println("리스트....");
		return "calendar";
	}
}









