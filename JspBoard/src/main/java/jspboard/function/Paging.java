package jspboard.function;

import java.util.ArrayList;
import java.util.List;

import jspboard.dao.PostDAO;

public class Paging {

	public static final int PAGENUM = 10;
	private final int POSINUM = 5;
	private int firstPage;
	private int lastPage;
	private int currPage;
	
	public Paging() {
		firstPage = 1;
		lastPage = calLastPage();
	}
	
	private int calLastPage() {
		PostDAO dao = new PostDAO();
		
		int totalPost = dao.getTotalPostCount();
		
		return totalPost % PAGENUM == 0 ? totalPost / PAGENUM : totalPost / PAGENUM + 1;
	}
	
	public int getFirstPage() {
		return firstPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public List<Integer> getPageList() {
		if(currPage > lastPage || currPage < 0) return null;
		
		List<Integer> list = new ArrayList<>();
		
		int currPosition = currPage % POSINUM == 0 ? currPage / POSINUM : currPage / POSINUM + 1; 
		int firstBtn = (currPosition - 1) * POSINUM + 1;
		int lastBtn = firstBtn + POSINUM - 1;
		
		for(int i = firstBtn; i <= lastBtn && i <= lastPage; ++i) {
			list.add(i);
		}
		
		return list;
	}
	
	
	
}


