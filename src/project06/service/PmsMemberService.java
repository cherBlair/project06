package project06.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

import project06.repository.PmsMemberDao;
import project06.vo.EmpLog;
import project06.vo.EmpLogSch;
import project06.vo.PmsMember;
import project06.vo.pmsemp;

@Service
public class PmsMemberService {
	@Autowired(required = false)
	private PmsMemberDao dao;
	
	public int memberInfor(PmsMember member) {
		System.out.println("PmsMemberDao memberInfor 실행");
		
		System.out.println("입력한 사원번호 : " + member.getMno());
		System.out.println("입력한 비밀번호 : " + member.getPass());
		
		int count = dao.pmsMemberCounter(member);
		System.out.println("로그인 count : " + count);
		
		PmsMember mem = null;
		int mno = 0;
		System.out.println("Service mno : " + mno);
		
		if(count != 0) {
			mem = dao.pmsMemberInfor(member);
			mno = mem.getMno();
			System.out.println("sql 결과 사원번호 : " + mem.getMno());
			System.out.println("sql 결과 비밀번호 : " + mem.getPass());
		}
		
		return mno;
	}
	
	public pmsemp empInfor(int mno) {
		System.out.println("PmsMemberDao empInfor 실행");
		return dao.pmsEmpInfor(mno);
	}
	public PmsMember memberInforAll(int mno) {
		System.out.println("PmsMemberDao memberInforAll 실행");
		return dao.pmsMemberInforAll(mno);
	}
	public String projectName(int mno) {
		System.out.println("PmsMemberDao projectName 실행");
		int count = dao.projectCount(mno);
		System.out.println("service count 실행완료");
		String proName = "";
		if(count != 0) {
			proName = dao.projectName(mno);
		}
		return proName;
	}
	
	public int changePass(PmsMember member) {
		System.out.println("PmsMemberDao changePass 실행");
		
		System.out.println("입력한 사원번호 : " + member.getMno());
		System.out.println("입력한 비밀번호 : " + member.getPass());
		
		dao.pmsMemberChangePass(member);
		System.out.println("비밀번호 update sql 실행");
		
		return 1;
	}

	public void updateInfor(PmsMember member) {
		System.out.println("PmsMemberDao updateInfor 실행");
		
		dao.pmsMemberUpdateInfor(member);
		System.out.println("updateInfor sql 실행");
		
	}
	
	public void log(int mno) {
		System.out.println("PmsMemberDao log 실행");
		
		int count = dao.logCount(mno);
		System.out.println("log count : " + count);
		if(count != 0) {
			System.out.println("logout up/in 실행");
			dao.logoutLog(mno);
			dao.loginLog(mno);
		}else {
			System.out.println("login in 실행");
			dao.loginLog(mno);
		}
	}
	
	public void logoutUpdate(int mno) {
		System.out.println("PmsMemberDao logoutUpdate 실행");

		dao.logoutLog(mno);

	}
	
	
	
	
	
}
