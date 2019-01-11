package swig.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import swig.paging.Paging;

@Controller
public class AdminController {
	//페이징
	private int searchNum;
	private String isSearch;
	private int totalCount;
	private int blockCount=7;
	private int blockPage=5;
	private String paginhHtml;
	private Paging page;
	
	ModelAndView mav = new ModelAndView();
}