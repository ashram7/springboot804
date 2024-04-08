package controller;

import java.util.HashMap;
import java.util.Map;

import controller.user.InsertUserController;

public class HandlerMapping {
	private Map<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/insertUser.do", new InsertUserController());
		
	}
	
	//함수를 호출하면 등록되어 있는 Controller를 리턴 시켜 주는 역할의 함수 작성
	public Controller getController(String path) {
		return mappings.get(path);
	}
}
