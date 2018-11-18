package com.lkj.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lkj.entity.Company;
import com.lkj.entity.Order;
import com.lkj.service.CompanyService;
import com.lkj.service.OrderService;

//@Controller注解用于标示本类为web层控制组件
@Controller
//@RequestMapping("/user")用于标定访问时对url位置
@RequestMapping("/order")
public class OrderController {
	//自动注入业务层的userService类
    @Autowired
    OrderService orderService;
    @Autowired
	private CompanyService companyService;
	
    @RequestMapping(value = "/create/{companyId}", method = RequestMethod.GET,produces = "text/plain;charset=UTF-8")
    private String addOrder(@PathVariable("companyId") int companyId, Model model) {
    	Company company = companyService.getCompanyById(companyId);
    	model.addAttribute("company", company);
    	return "create";
    }
    
    @RequestMapping(value = "/create", method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    private String addOrder(HttpServletRequest req, HttpServletResponse resp, Model model) {
    	Map<String, String[]> parameterMap = req.getParameterMap();
    	Order order = new Order();
    	String id = "";
    	for(int i = 0; i < 10; i++) {
    		id = id + (int)(Math.random()*10);
    	}
    	System.out.println(id);
    	//如果存在相同单号
    	String orderId = orderService.returnOrderId(id);
     	System.out.println(orderId);
    	order.setOrderId(orderId);
    	//设置创建订单时间
    	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
    	Date date = new Date();
    	order.setOrderCreateTime(format.format(date));
    	//设置订单状态
    	order.setOrderStatus(parameterMap.get("orderStatus")[0]);
    	//设置处置方公司编号
    	order.setDisposalId(Integer.parseInt(parameterMap.get("disposalId")[0]));
    	//设置用户ID
    	order.setUserId((String) req.getSession().getAttribute("userid"));
    	System.out.println(orderService.addOrder(order));
    	model.addAttribute("order", order);
    	return "confirm";
    }
    
    @RequestMapping(value = "/list", method = RequestMethod.GET,produces = "text/plain;charset=UTF-8")
    private String selectOrder(HttpServletRequest req, HttpServletResponse resp,Model model) {
    	String userid = (String) req.getSession().getAttribute("userid");
    	List<Order> order = orderService.selectByUserId(userid);
    	model.addAttribute("list", order);
    	return "orderlist";
    }
}
