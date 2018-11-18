package com.lkj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lkj.entity.Company;

public interface CompanyDao {
	public List<Company> queryAll(@Param("offset") int offset, @Param("limit") int limit);
	
	public Company queryById(int companyId);
//	  List<Book> queryAll(@Param("offset") int offset, @Param("limit") int limit);
//	  int addBook(Book book);
//	  int updateBook(Book book);
//	  int deleteBookById(long id);
}
