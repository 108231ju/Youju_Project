package org.yuyu.controller;

import lombok.extern.log4j.Log4j;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.yuyu.domain.StoreMemVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Log4j
public class StoreMemLoginInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        HttpSession session = request.getSession();
        StoreMemVO storeMemVO = (StoreMemVO)session.getAttribute("loginStoreMem");


        if(storeMemVO == null){
            response.sendRedirect(request.getContextPath()+"/storeMem/no-login-proc");
            return false;
        }
        else{
            log.info("preHandle >>"+storeMemVO.getSid());
            return true;
        }
    }


    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        log.info("postHandle.......");
        super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        log.info("afterHandle.......");
        super.afterCompletion(request, response, handler, ex);
    }
}
