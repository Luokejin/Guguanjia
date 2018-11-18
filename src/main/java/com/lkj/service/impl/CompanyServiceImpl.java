package com.lkj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lkj.dao.CompanyDao;
import com.lkj.entity.Company;
import com.lkj.service.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService {
	  @Autowired
	  private CompanyDao companyDao;

	@Override
	public List<Company> getList(int start, int pageNum) {
		  System.out.println(companyDao.queryAll(start, pageNum));
		  return companyDao.queryAll(start, pageNum);
	}

	@Override
	public Company getCompanyById(int companyId) {
		return companyDao.queryById(companyId);
	}

	
	
	
	
	  
	//  @Override
	//  public Book getById(long bookId) {
//	    return bookDao.queryById(bookId);
	//  }
	//
	//  @Override
	//  public List<Book> getList(int start, int pageNum) {
//	    return bookDao.queryAll(start, pageNum);
	//  }
	//
	//  @Override
	//  public int addBook(Book book) {
//	    return bookDao.addBook(book);
	//  }
	//
	//  @Override
	//  public int updateBook(Book book) {
//	    return bookDao.updateBook(book);
	//  }
	//
	//  @Override
	//  public int deleteBookById(long id) {
//	    return bookDao.deleteBookById(id);
	//  }
//	}

}
