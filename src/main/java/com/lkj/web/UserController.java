package com.lkj.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lkj.entity.User;
import com.lkj.service.UserService;


//@Controller注解用于标示本类为web层控制组件
@Controller
//@RequestMapping("/user")用于标定访问时对url位置
@RequestMapping("/user")
public class UserController {
		//自动注入业务层的userService类
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
	    //@ResponseBody注解直接返回值输出页面
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
	    		request.setAttribute("message","账号相同啦！有点创意行吗？");
	            return "error";
	    	}
	    	
	    }
	    
		@RequestMapping("/hello")
		public String hello(HttpServletRequest req ,Model model) {
			String userName = req.getParameter("userName");
			model.addAttribute("userName","hello:"+ userName);
			return "hello";//通过视图解析器返回给hello.jsp
		}
		
		
		 //login业务的访问位置为/user/login
		 @RequestMapping(value = "/login", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	       public String login(User user,HttpServletRequest request){
	        //调用login方法来验证是否是注册用户
	        boolean loginType = userService.login(user.getUserid(),user.getPassword());
	        if(loginType){
	            //如果验证通过,则将用户信息传到前台
	        	User user1 = userService.findUser(user.getUserid());
	        	String username = user1.getUsername();
	        	request.getSession().setAttribute("userid", user1.getUserid());
	            request.setAttribute("username",username);
	            //并跳转到success.jsp页面
	            return "redirect:service";
	        }else{
	            //若不对,则将错误信息显示到错误页面
	            request.setAttribute("message","账号密码错误啦！你是手残吗？");
	            return "error";
	        }
	    }
		 
		//company业务的访问位置为/user/company
		 
}
