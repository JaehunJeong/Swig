package swig.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import swig.paging.Paging;

@Controller
public class AdminController {
	//페이징
	private int searchNum;
	private String isSearch;
	
	private int currentPage =1;
	private int totalCount;
	private int blockCount=7;
	private int blockPage=5;
	private String pagingHtml;
	private Paging page;
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value="/admin")
	public String mainForm() {
		return "adminForm";
	}
	
	//회원 목록
	@RequestMapping("memberadminList")
	public ModelAndView memberList(HttpServletRequest request) throws Exception{
		
		if(request.getParameter("currentPage") ==null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		List<MemberModel> memberlist = adminService.memberList();
		
		String search = request.getParameter("isSearch");
		
		if(search != null) {
			int searchNum = Integer.parseInt(request.getParameter("searchNum"));
			if(searchNum ==0) {
				memberlist = memberService.adminmemberSearch0(search);
				
			}else {
				memberlist = memberService.adminmemberSearch1(search);
			}
		}
		
		totalCount = memberlist.size();
		
		page = new paging(currentPage, totalCount, blockCount, blockPage, "memberadminList");
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount()< totalCount) {
			lastCount = page.getEndCount() +1;
		}
		
		noticeList = noticeList.subList(page.getSatartCount(), lastCount);
		
		mav.addObject("noticeModel", noticeModel);
		mav.setViewName("QnAView");
		
		mav.addObject("isSearch",isSearch);
		mav.addObject("searchNum",searchNum);
		mav.addObject("totalCount", totalCount);
		mav.addObject("pagingHtml",pagingHtml);
		mav.addObject("currentPage",currentPage);
		mav.addObject("noticeList",noticeList);
		mav.setViewName("adminnoticeList");
		
		return mav;
	}
}