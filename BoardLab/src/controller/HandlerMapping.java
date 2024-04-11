package controller;

import java.util.HashMap;
import java.util.Map;

import controller.board.GetBoardListController;
import controller.board.InsertBoardController;
import controller.user.InsertUserController;
import controller.user.LoginController;
import controller.user.LogoutController;

public class HandlerMapping {
	private Map<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/insertUser.do", new InsertUserController());
		
        mappings.put("/login.do", new LoginController());
        mappings.put("/logout.do", new LogoutController());	
        
        mappings.put("/insertBoard.do", new InsertBoardController());
        mappings.put("/getBoardList.do", new GetBoardListController());        
		
	}
	
	//함수를 호출하면 등록되어 있는 Controller를 리턴 시켜 주는 역할의 함수 작성
	public Controller getController(String path) {
		return mappings.get(path);
	}
}
