package org.yuyu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.yuyu.domain.MemVO;

public class MemLoginInterceptor extends HandlerInterceptorAdapter {

	@Override //controller실행전
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();
		MemVO memVO = null;
		memVO = (MemVO) session.getAttribute("loginMem");

		if (memVO == null) { //로그인 안됬을 떼 islogin에 디폴트값으로 '0'할당
			session.setAttribute("islogin", "0");  
			return true;
		}
		else {
			System.out.println("[postHandle]" + memVO.getMid());
			return true;

		}

	}

	@Override //controller 실행후 //view 실행전
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("islogin").equals("1")) { //islogin이 '1'인 경우 ==> 로그인 안했을때 '로그인을 먼저 해주세요' 알림창을 띄워야하는 페이지
			 response.sendRedirect(request.getContextPath() + "/user/nologin");
		}

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("[afterCompletion]");
		super.afterCompletion(request, response, handler, ex);
	}

}

