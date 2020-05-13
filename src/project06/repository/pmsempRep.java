package project06.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import project06.vo.pmsemp;
import project06.vo.pmsempSch;

@Repository
public interface pmsempRep {
	public ArrayList<pmsemp> pmsempList(pmsemp sch);
	
	public void insert(pmsemp ins);
}
