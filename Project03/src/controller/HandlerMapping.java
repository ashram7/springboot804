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

	public Controller getController(String path) {
		return mappings.get(path);
	}
}
