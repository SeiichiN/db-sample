package servlet.regist;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Employee;
import servlet.util.Validator;


@WebServlet("/registConfirm")
public class RegistConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Employee employee = new Employee();
		Validator validator = new Validator();
		List<String> errorMsgList = validator.inputCheck(employee, request);
		String url = null;
		if (errorMsgList.size() > 0) {
			request.setAttribute("errorMsgList", errorMsgList);
			url = "/WEB-INF/jsp/regist/registInput.jsp";
		} else {
			url = "/WEB-INF/jsp/regist/registConfirm.jsp";
		}
		request.setAttribute("emp", employee);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
