package servletdemo.part03;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginPro") //form.jsp의 action의 값이 오면됨
public class LoginProController extends HttpServlet{
@Override
      //form 메소드가 post이기 때문에 doPost로 호출
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	
	// doget방식이용시 한글 안깨지고 
	req.setCharacterEncoding("UTF-8"); //dopost에서 한글깨질경우 이렇게 실행하기
	String fid=req.getParameter("fid");
	String fpass=req.getParameter("fpass");
	
	MemberDTO dto=new MemberDTO();
	dto.setFid(fid);
	dto.setFpass(fpass);

	req.setAttribute("dto", dto);
	
	String path="/servletview/part03/result.jsp";
	RequestDispatcher dis=req.getRequestDispatcher(path);
	dis.forward(req, resp);
}
}
