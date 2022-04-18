package SESSION;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionController
 */
@WebServlet("/session_servlet/*")
public class SessionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURI();
		MemberDAO dao = new MemberDAO();
		String page = "";
		if(url.indexOf("login.do") != -1) {
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			MemberDTO dto = new MemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			String result = dao.login(dto);
			page = "/SESSION/login.jsp?message=xx";
			if(result != null) {
				HttpSession session = request.getSession();
				session.setAttribute("userid",userid);
				session.setAttribute("message",result+"님 환영합니다.");
				page = "/SESSION/main.jsp";
			}
		} else if(url.indexOf("logout.do") != -1) {
			HttpSession session = request.getSession();
			session.invalidate();
			page = "/SESSION/login.jsp?message=logout";
		}
		response.sendRedirect(request.getContextPath()+page);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
