package company.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

import dao.db.Cont;
import obj.cont.impl.TypeCont;
import obj.domain.category;


public class JobType extends ActionSupport{
	
//	定义下拉框的集合，并给出get set方法
	private List<category> firstlist;
	private List<category> secondlist;
	private Map<String, List<category>> maplist;
	
	
	public Map<String, List<category>> getMaplist() {
		return maplist;
	}


	public void setMaplist(Map<String, List<category>> maplist) {
		this.maplist = maplist;
	}


	public List<category> getFirstlist() {
		return firstlist;
	}


	public void setFirstlist(List<category> firstlist) {
		this.firstlist = firstlist;
	}


	public List<category> getSecondlist() {
		return secondlist;
	}


	public void setSecondlist(List<category> secondlist) {
		this.secondlist = secondlist;
	}

	
	public String searchCategory() {
		Cont search = new TypeCont();
		this.secondlist = search.getAllDB();
		TypeCont type = new TypeCont();
		this.firstlist = type.getFirstType();
//		System.out.println(this.typelist.get(0).getSecond());
		this.maplist = new HashMap<String, List<category>>();
		for(int i=0; i<this.firstlist.size(); i++) {
			List<category> doublelist = new ArrayList<category>();
			for(int j=0; j<this.secondlist.size(); j++) {
				
				if(this.firstlist.get(i).getFirst() == this.secondlist.get(j).getFirst()){
					doublelist.add(this.secondlist.get(j));
				}
			}
			maplist.put(this.firstlist.get(i).getFirst(), doublelist);
		}
		System.out.println(maplist.get("技术").get(0).getSecond());
		return "success";
	}

}
