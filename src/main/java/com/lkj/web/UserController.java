package com.lkj.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lkj.entity.User;
import com.lkj.service.UserService;


//@Controllerע�����ڱ�ʾ����Ϊweb��������
@Controller
//@RequestMapping("/user")���ڱ궨����ʱ��urlλ��
@RequestMapping("/user")
public class UserController {
		//�Զ�ע��ҵ����userService��
	    @Autowired
	    UserService userService;
		
	    @RequestMapping(value = "/addUser", method = RequestMethod.GET,produces = "text/plain;charset=UTF-8")
	    private String addUser() {
	    	return "reg";
	    }
	    
	    @RequestMapping(value = "/service", method = RequestMethod.GET,produces = "text/plain;charset=UTF-8")
	    private String service() {
	    	return "service";
	    }
	    
	    @RequestMapping(value = "/addUser", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	    //@ResponseBodyע��ֱ�ӷ���ֵ���ҳ��
	    private String addUser(User user,HttpServletRequest request) {
	    	int addType = userService.addUser(user);
	    	System.out.println(addType);
	    	System.out.println(user);
	    	System.out.println("--------");
	    	if(addType == 1) {
	    		request.setAttribute("user",user);
	    		return "hello";
	    	}
	    	else {
	    		request.setAttribute("message","�˺���ͬ�����е㴴������");
	            return "error";
	    	}
	    	
	    }
	    
		@RequestMapping("/hello")
		public String hello(HttpServletRequest req ,Model model) {
			String userName = req.getParameter("userName");
			model.addAttribute("userName","hello:"+ userName);
			return "hello";//ͨ����ͼ���������ظ�hello.jsp
		}
		
		
		 //loginҵ��ķ���λ��Ϊ/user/login
		 @RequestMapping(value = "/login", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	       public String login(User user,HttpServletRequest request){
	        //����login��������֤�Ƿ���ע���û�
	        boolean loginType = userService.login(user.getUserid(),user.getPassword());
	        if(loginType){
	            //�����֤ͨ��,���û���Ϣ����ǰ̨
	        	User user1 = userService.findUser(user.getUserid());
	        	String username = user1.getUsername();
	        	request.getSession().setAttribute("userid", user1.getUserid());
	            request.setAttribute("username",username);
	            //����ת��success.jspҳ��
	            return "redirect:service";
	        }else{
	            //������,�򽫴�����Ϣ��ʾ������ҳ��
	            request.setAttribute("message","�˺�����������������ֲ���");
	            return "error";
	        }
	    }
		 
		//companyҵ��ķ���λ��Ϊ/user/company
		 
}
