package com.lkj.service;

import java.util.List;

import com.lkj.entity.Company;



public interface CompanyService {
	  Company getCompanyById(int companyId);
	  List<Company> getList(int start, int pageNum);
//	  int addBook(Book book);
//	  int updateBook(Book book);
//	  int deleteBookById(long id);
}
