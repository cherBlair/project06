package project06.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project06.repository.ProjectDao;
import project06.vo.Project;

@Service
public class ProjectService {
	@Autowired(required=false)
	private ProjectDao dao;
	
	public ArrayList<Project> projectList(){
		return dao.projectList();
	}
	
	public Project getProject(int pno){
		return dao.getProject(pno);
	}
	
	public Project getProjectformno(int mno){
		return dao.getProjectformno(mno);
	}
	
	public void proIns(Project ins) {
		dao.proIns(ins);
	}
}
