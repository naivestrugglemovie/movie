package com.yc.movie;

import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class filter
 */
@WebFilter(urlPatterns={"*.jsp"})
public class filter implements Filter {
	public void destroy() {
		// TODO Auto-generated method stub
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpServletRequest httpRequest = (HttpServletRequest) request;	//��ȡ��HttpServletRequest����
		HttpSession session = httpRequest.getSession();		//�õ�session����
		Object obj = session.getAttribute("lg");	//�õ�language����
		if(obj == null){	//���session��û��lg
			Locale locale = Locale.CHINA;	//�õ���������
			ResourceBundle rb = ResourceBundle.getBundle("res",locale);	//���������ļ�
			session.setAttribute("lg", rb);	//�������ļ��������session����
		}
		
		// pass the request along the filter chain
		chain.doFilter(request, response);	//����
	}
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}