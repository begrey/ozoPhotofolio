package org.springframework.ozo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ozo.domain.Credit;
import org.springframework.ozo.service.OzoFacade;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.*;
@Controller
public class EventCheckController {

	@Value("/event/check")
	private String eventViewName;
	
	@Autowired
	private OzoFacade ozoFacade;
	
	@RequestMapping(value="/event/check", method = RequestMethod.GET)
	public String showForm(HttpSession session) {
		
		return eventViewName;
	}
	
	
	@RequestMapping(value="/event/credit", method = RequestMethod.GET)
	public String onSubmit(HttpSession session, HttpServletRequest request)  throws Exception {
		int eventCredit = Integer.parseInt(request.getParameter("credit"));
		MemberSession membersession = (MemberSession) session.getAttribute("memberSession");
		Credit credit = new Credit(membersession.getMember(), "가입이벤트 적립", eventCredit);
	      ozoFacade.insertCreditHistory(credit);      
	      membersession.getMember().getCredit_history().add(credit);
	      membersession.setEvent(1);
		return "redirect:/index";
	}
}
