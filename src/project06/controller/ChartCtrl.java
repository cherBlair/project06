package project06.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import project06.service.ChartService;
import project06.service.ProjectService;

@Controller
@RequestMapping("/chart.do")
public class ChartCtrl {
	@Autowired(required=false)
	private ChartService cservice;
	@Autowired(required=false)
	private ProjectService pservice;
	
	// http://localhost:6080/project06_git/chart.do?method=pm
	@RequestMapping(params="method=pm")
	public String chartpm(Model d) {
		//d.addAttribute("projectlist", pservice.projectList());
		return "WEB-INF\\views\\main\\chartpm.jsp";
	}
	
	@RequestMapping(params="method=pm2")
	public String chartpm2(Model d) {
		System.out.println("컨트롤러단");
		System.out.println("대충 내용 : "+pservice.projectList());
		
		//d.addAttribute("projectlist", pservice.projectList());
		
		return "WEB-INF\\views\\main\\chartpm2.jsp";
	}
	
	// http://localhost:6080/project06_git/chart.do?method=tm
	@RequestMapping(params="method=tm")
	public String charttm(Model d) {
		d.addAttribute("chartlist", cservice.chartList());
		return "WEB-INF\\views\\main\\charttm.jsp";
	}
	
	// http://localhost:6080/project06_git/chart.do?method=ajaxdata
	@RequestMapping(params="method=ajaxdata")
	public String chtData(Model d) {
		d.addAttribute("chartlist", cservice.chartList());
		return "pageJsonReport";
	}
}
