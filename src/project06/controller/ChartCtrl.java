package project06.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import project06.service.ChartService;
import project06.service.ProjectService;
import project06.vo.PmsMember;

@Controller
@RequestMapping("/chart.do")
public class ChartCtrl {
	@Autowired(required=false)
	private ChartService cservice;
	@Autowired(required=false)
	private ProjectService pservice;
	
	// http://localhost:6080/project06_git/chart.do?method=chart
	@RequestMapping(params="method=chart")
	public String chartpm(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		if(session.getAttribute("mno")==null) {
			return "WEB-INF\\views\\main\\login.jsp";
		}
		PmsMember emp =(PmsMember)session.getAttribute("infor_M");
		d.addAttribute("project", pservice.getProject(emp.getPno()));		
		
		return "WEB-INF\\views\\main\\chart.jsp";
	}
	
	// http://localhost:6080/project06_git/chart.do?method=ajaxdata
	@RequestMapping(params="method=ajaxdata")
	public String chtData(HttpServletRequest request,
			Model d) {
		HttpSession session = request.getSession();
		PmsMember emp = 
		(PmsMember)session.getAttribute("infor_M");
		
		if(emp.getMdiv()==5) //팀원일때만
		d.addAttribute("chartlist", 
				cservice.chartListTm(emp.getPno(), emp.getMno()));
		else //팀원이 아닌 모든경우
		d.addAttribute("chartlist", 
				cservice.chartList(emp.getPno()));	
		return "pageJsonReport";
	}
}
