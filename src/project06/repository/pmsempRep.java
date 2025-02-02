package project06.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import project06.vo.EmpLogSch;
import project06.vo.pmsemp;
import project06.vo.pmsempSch;

@Repository
public interface pmsempRep {
	public int totCnt(pmsempSch sch);
	public int totCnt2(pmsempSch sch);
	public int totCnt3(pmsempSch sch);
	// CEO, CTO, PM 리스트
	public ArrayList<pmsemp> pmsempList(pmsempSch sch);
	// CEO, CTO, PM 상세
	public pmsemp getemp(int eno);
	// 프로젝트 리스트
	public ArrayList<Integer> getPlist();
	// 직급 리스트
	public ArrayList<String> getGlist();
	// 부서 리스트
	public ArrayList<String> getDlist();
	// PMSmember에 등록됐는지 확인
	public int memCheck(pmsemp ckmem);
	// CEO PMS등록
	public void insertCeo1(pmsemp insCeo1);
	// CEO설정
	public void updatepmsCeo1(pmsemp uptCeo);
	public void updatepmsCeo2();
	public void updatepmsCeo3();
	public void updatepmsCeo4(pmsemp uptCeo);
	// CTO PMS등록
	public void insertMem1(pmsemp insMem1);
	// CTO설정
	public void updatepmsemp1(pmsemp upt);
	public void updatepmsemp2();
	// PM PMS등록
	public void insertMem2(pmsemp insMem2);
	// Project정보 없이 PMS에 계정 추가
	public void insertMem3(pmsemp insMem2);
	// PM설정
	public void updatePm1(pmsemp uptPm);
	public void updatePm1_1(pmsemp uptPm);
	public void updatePm2(pmsemp uptPm);
	public void updatePm3(pmsemp uptPm);
	public void updatePm4(pmsemp uptPm);
	// PM 추가 리스트
	public ArrayList<pmsemp> insList(pmsempSch sch);
	public int selectpmCount(pmsempSch Sch); //프로젝트 참여하지 않은 대리급 이상 사원 수
	public ArrayList<pmsemp> selectpm(pmsempSch sch); //프로젝트 참여하지 않은 대리급 이상 사원리스트
	// PM 팀원 추가
	public void updPNum(pmsemp upn);
	public void insPNum(pmsemp ipn);
	// PM 삭제 리스트
	public ArrayList<pmsemp> pmempList(pmsempSch sch);
	// PM 팀원 삭제
	public void delemp(pmsemp del);
	// 인사 사원등록
	public void insert(pmsemp ins);
	// 인사 사원정보 수정 페이지
	public pmsemp getPmsemp(int eno);
	// 인사 사원정보 수정
	public void updateEmp(pmsemp uptemp);
	// 퇴사 처리
	public void delGrade1(pmsemp delG);
	public void delGrade2(pmsemp delG);
	public void delGrade3(pmsemp delG);
	
	
	// 메일
	public String getMail(int eno);
	
	
	
	
	
	
	// Jin
	public int pmsEmpCounter(pmsemp emp);
	public int pmsEmpEno(pmsemp emp);
	
	// Jin
	public int pmsEmpPassCounter(pmsemp emp);
	public int pmsEmpPass(pmsemp emp);
	
	// 사원만보기
	public ArrayList<pmsemp> pmsElist(pmsemp emp);
}
