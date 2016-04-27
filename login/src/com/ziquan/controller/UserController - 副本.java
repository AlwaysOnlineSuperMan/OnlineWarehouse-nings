package com.ziquan.controller;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ziquan.entity.User;
import com.ziquan.service.imp.IUserService;
import com.ziquan.util.AppException;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private IUserService userService;
	protected Log log = LogFactory.getLog(this.getClass());
	
	
	/**
	 *        账号登陆
	 * @param user  登陆填充表单的对象
	 * @param session 登陆成功把查询到的对象保存在session中方便别的页面调用此对象
	 * @return 返回的页面 （登陆成功进入doLogin.jsp,登陆失败进入toLogin.jsp重新登陆）
	 * @throws Exception  统一异常出口，由框架统一处理
	 */
	//@ResponseBody
	@RequestMapping(method = RequestMethod.POST, value = "/login")
	public String tologin(User user, HttpSession session,HttpServletResponse response) throws Exception {
		log.info("User===>" + user);
		User userLogin = userService.tologin(user);
		if (userLogin == null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('登陆失败，请您先登录！');");
			out.println("window.location.href='/login';");
			out.println("</script>");
			out.flush();
			out.close();
			return "";//"user/toLogin";
		}
		session.setAttribute("userLogin", userLogin);
		log.info("userLogin===>" + userLogin);
		return "user/doLogin";
	
		
	}

	
	
	
	/**
	 *        重新登陆
	 * 
	 * @param session 清空session上次保存的数据
	 * @return 重新登陆进入toLogin.jsp
	 * @throws Exception  统一异常出口，由框架统一处理
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/reLogin")
	public String reLogin(HttpSession session) throws Exception {

		log.info("清空SESSION.....");
		session.removeAttribute("userLogin");

		return "user/toLogin";
	}

	/**
	 *       统一异常处理
	 * 
	 * @param exception 所有异常
	 * @param request  把异常保存在request中，使在不同的异常页面能够展示异常信息
	 * @return 根据不同的异常进入不同的异常页面，使异常明确
	 */
	@ExceptionHandler(value = { Exception.class })
	public String doException(Exception exception, HttpServletRequest request) {
		request.setAttribute("exception", exception);
		if (exception instanceof AppException) {
			log.info("exception.getMessage()====>" + exception.getMessage());
			return "exception/appException";
		}
		if (exception instanceof ArithmeticException) {
			return "exception/arithmeticException";
		}

		return "exception/defaultException";

	}
}
