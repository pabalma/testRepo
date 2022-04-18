package MEMBER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EncryptController
 */
@WebServlet("/encrypt_servlet/*")
public class EncryptController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EncryptController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURI();
		String context = request.getContextPath();
		MemberEncryptDAO dao = new MemberEncryptDAO();
		if(url.indexOf("join.do") != -1) {
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			MemberEncryptDTO dto = new MemberEncryptDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setName(name);
			dao.join(dto);
			response.sendRedirect(context+"/MEMBER/login.jsp");
		} else if (url.indexOf("login.do") != -1) {
			String userid = request.getParameter("userid");
			String passwd = request.getParameter("passwd");
			MemberEncryptDTO dto = new MemberEncryptDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			String result = dao.login(dto);
			request.setAttribute("result",result);
			String page = "/MEMBER/login_result.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request,response);
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
