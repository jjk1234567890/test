package org.jht.controller;

import org.jht.model.RestDTO;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestSampleController {
	// 단순 문자열 변환
	@RequestMapping(value="getText",produces="text/plain; charset=UTF-8",method=RequestMethod.GET)
	public String getText() {
		return "안녕하세요.";
	}
	// 객체 변환(DTO)
	@RequestMapping(value="getDTO",produces= {MediaType.APPLICATION_JSON_UTF8_VALUE,
											  MediaType.APPLICATION_XML_VALUE
											 },method=RequestMethod.GET)
	public RestDTO getDTO() {
		RestDTO rdto=new RestDTO(1,"정","자바");
		return rdto;
		// return new RestDTO(1,"정","자바");
	}
	// ResponseEntity타입
	@RequestMapping(value="getResponseEntity",params="no",method=RequestMethod.GET)
	public ResponseEntity<RestDTO> check(int no){
		RestDTO rdto=new RestDTO(no,"정","자바");
		
		ResponseEntity<RestDTO> result=null;
		if(no>=20) {
			result=ResponseEntity.status(HttpStatus.OK).body(rdto);
		}else {
			result=ResponseEntity.status(HttpStatus.BAD_GATEWAY).body(rdto);
		}
		return result;
	}
	
	
	
}









