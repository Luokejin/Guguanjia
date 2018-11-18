package com.lkj.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lkj.entity.Company;
import com.lkj.service.CompanyService;



@Controller
@RequestMapping("/company")
public class CompanyController {
	  private Logger logger = LoggerFactory.getLogger(this.getClass());

	  @Autowired
	  private CompanyService companyService;

	  @RequestMapping(value = "/list", method = RequestMethod.GET)
	  private String list(Model model) {
	    List<Company> list = companyService.getList(0, 1000);
	    System.out.println(list);
	    model.addAttribute("list", list);
	    return "company";// WEB-INF/jsp/"list".jsp
	  }
//
//	  @RequestMapping(value = "/detail/{bookId}", method = RequestMethod.GET)
//	  private String detail(@PathVariable("bookId") Long bookId, Model model) {
//	    Book book = companyService.getById(bookId);
//	    //通过形参中的model将model数据传到页面
//	    model.addAttribute("book", book);
//	    return "detail";
//	  }
//
//	  @RequestMapping(value = "/add", method = RequestMethod.GET )
//	  private String add() {
//		    return "add";
//	  }
//	  
//	  @RequestMapping(value = "/addBook", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
//	  //@ResponseBody注解直接返回值输出页面
//	  private String add(Book book) {
//		  companyService.addBook(book);
//	    return "redirect:list";
//	  }
//
//	  @RequestMapping(value = "/del/{bookId}", method = RequestMethod.GET)
//	 // @ResponseBody
//	  private String deleteBookById(@PathVariable("bookId") Long id) {
//	    int i = companyService.deleteBookById(id);
//	     return "redirect:list";
//	  }
}

