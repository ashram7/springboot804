package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HandlerMapping mapping;
       
    public DispatcherServlet() {
        super();
        System.out.println("==>DispatcherServlet 생성");
    }
    
    @Override
    public void init() throws ServletException {
        //위에 선언한 mapping 객체를 초기화
        mapping = new HandlerMapping();
    }    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		process(request, response);
	}

	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		
		//HandlerMapping에 요청하여 path에 맞는 Controller를 얻음
		//즉, Mapping에 path 정보로 등록되어 있는 Controller가 리턴 됨 
		Controller ctrl = mapping.getController(path);
		//Controller에 함수 호출해서 구체적인 행위가 이루어 질 수 있도록 처리
		String viewPage = ctrl.handlerRequest(request, response);
		
		//최종 유저에게 보여줘야 되는 view 화면으로 리다이렉트(Redirect)
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	}
	
	
}





