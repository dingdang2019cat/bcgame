package com.hehaoyisheng.bcgame.controller;

import com.hehaoyisheng.bcgame.common.OnlineUser;
import com.hehaoyisheng.bcgame.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginHandlerInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession httpSession = httpServletRequest.getSession();
        String url = httpServletRequest.getServletPath();
        if(url.contains("registByCode")){
            return true;
        }
        if(url.contains("admin")){
            if(httpSession.getAttribute("user") == null || !((User)httpSession.getAttribute("user")).getUsername().equals("admin")){
                httpServletResponse.sendRedirect("/login");
                return false;
            }
            return true;
        }
        if(httpSession.getAttribute("user") == null){
            httpServletResponse.sendRedirect("/login");
            return false;
        }else{
            User user = (User) httpSession.getAttribute("user");
            if(user == null || user.getUsername() == null){
                return false;
            }
            OnlineUser.online.put(user.getUsername(), System.currentTimeMillis());
        }
        return true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
