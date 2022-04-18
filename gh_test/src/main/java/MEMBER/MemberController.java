package MEMBER;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/member_servlet/*")   //매핑 다:다
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURI();
		String context = request.getContextPath();   //프로젝트 이름
		MemberDAO dao = new MemberDAO();
		
		if(url.indexOf("list.do") != -1) {
			Map<String,Object> map = new HashMap<String,Object>();
			List<MemberDTO> list = dao.list();
			map.put("list", list);
			map.put("count", list.size());
			request.setAttribute("map",map);
			String page = "/MEMBER/list.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		} else if(url.indexOf("join.do") != -1) {
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			String address = request.getParameter("address");
			String tel = request.getParameter("tel");
			MemberDTO dto = new MemberDTO(userid,passwd,name,address,tel);
			dao.insert(dto);
			response.sendRedirect(context+"/member_servlet/list.do");
		} else if (url.indexOf("view.do") != -1) {
			String userid = request.getParameter("userid");
			MemberDTO dto = dao.detail(userid);
			request.setAttribute("dto", dto);
			String page = "/MEMBER/view.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request,response);
		} else if (url.indexOf("update.do") != -1) {
			String userid = request.getParameter("userid");
			String name = request.getParameter("name");
			String passwd = request.getParameter("passwd");
			String address = request.getParameter("address");
			String tel = request.getParameter("tel");
			MemberDTO dto = new MemberDTO(userid,passwd,name,address,tel);
			dao.update(dto);
			response.sendRedirect(context+"/member_servlet/list.do");
		} else if (url.indexOf("delete.do") != -1) {
			String userid = request.getParameter("userid");
			dao.delete(userid);
			response.sendRedirect(context+"/member_servlet/list.do");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
