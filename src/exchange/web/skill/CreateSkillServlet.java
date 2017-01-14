package exchange.web.skill;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exchange.model.account.AccountManager;
import exchange.model.account.Profile;
import exchange.model.exchange.ExchangeManager;
import exchange.model.skill.KindTypeManager;
import exchange.model.skill.SkillManager;
import exchange.model.skill.Type;

/**
 * Servlet implementation class CreateSkillServlet
 */
@WebServlet("/CreateSkill.do")
public class CreateSkillServlet extends HttpServlet {
	
	private static final int CREATE_SKILL = 0;
	private static final int MODIFY_SKILL = 1;
	
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		request.setCharacterEncoding("UTF-8");
		if (session != null) {
			RequestDispatcher view = null;
			String uid = (String) session.getAttribute("uid");
			
			int mark = Integer.parseInt((String) request.getParameter("mark"));
			
			if( mark == CREATE_SKILL)
			{
				request.setAttribute("kinds", KindTypeManager.getKindList());
				request.setAttribute("types", KindTypeManager.getTypeList());
			}
			view = request.getRequestDispatcher("Create.jsp");
			view.forward(request, response);
		} else
			response.sendRedirect("Index.jsp");
	}

}
