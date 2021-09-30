package com.human.app;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	
	  @RequestMapping(value = "/", method = RequestMethod.GET) public String
	  home(Locale locale, Model model) {
	  logger.info("Welcome home! The client locale is {}.", locale);
	  
	  Date date = new Date(); DateFormat dateFormat =
	  DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
	  
	  String formattedDate = dateFormat.format(date);
	  
	  model.addAttribute("serverTime", formattedDate );
	  
	  return "home"; }
	 
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String selectBBS(Model model) {
		
		iBBS bbs = sqlSession.getMapper(iBBS.class);
		ArrayList<BBSrec> alBBS = bbs.getList();
		
		System.out.print(alBBS.size());
		
		model.addAttribute("list_BBS", alBBS);
	
		return "list";
	}
	
	@RequestMapping(value = "/view/{bbs_id}", method = RequestMethod.GET)
	public String selectOneBBS(@PathVariable("bbs_id") int bbs_id, Model model) {
		iBBS bbs = sqlSession.getMapper(iBBS.class);
		BBSrec post = bbs.getPost(bbs_id);
		model.addAttribute("post", post);
		
		return "view";
	}
		
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String brandNew() {
		
		return "new";
	}
	
	@RequestMapping(value = "/update_view", method = RequestMethod.GET)
	public String updateView() {
		
		return "update";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String insertBBS(HttpServletRequest hsr) {
		String pTitle = hsr.getParameter("title");
		String pContent = hsr.getParameter("content");
		String pWriter = hsr.getParameter("writer");
		String pPasscode = hsr.getParameter("passcode");
		
		// System.out.println("title [" + pTitle + "] content [" + pContent + "] writer [" + pWriter + "] passcode [" + pPasscode + "]");
		
		iBBS bbs = sqlSession.getMapper(iBBS.class);
		bbs.writebbs(pTitle, pContent, pWriter, pPasscode);
		
		return "redirect:/list"; // 해당하는 ResponseMapping으로 이동 cf.) data, 문자열 (@ResponseBody) - javascript
	}
	
/*	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateBBS(HttpServletRequest hsr) {
		int bbs_id = hsr.getParameter("bbsid");
		String title = hsr.getParameter("title");
		String content = hsr.getParameter("content");
		
		iBBS bbs = sqlSession.getMapper(iBBS.class);
		bbs.updatebbs(bbs_id, title, content);
		
		return "redirect:/list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteBBS(HttpServletRequest hsr) {
		int bbs_id = hsr.getParameter("bbsid");
		
		iBBS bbs = sqlSession.getMapper(iBBS.class);
		bbs.deletebbs(bbs_id);
		
		return "redirect:/list";
	}
	*/
}
