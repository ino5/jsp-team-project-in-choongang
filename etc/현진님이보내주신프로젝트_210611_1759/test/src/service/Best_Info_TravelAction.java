package service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PostMember;
import dao.PostMember_dao;

public class Best_Info_TravelAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PostMember_dao pmd = PostMember_dao.getInstance();
		PostMember postmember = new PostMember();
		
		try {

			int totCnt = pmd.getTotalCnt_best();	//
			request.setAttribute("totCnt", totCnt);
			String pageNum = request.getParameter("pageNum");
			if(pageNum == null || pageNum.equals("")) {
				pageNum = "1";
			}
			
			int currentPage = Integer.parseInt(pageNum);
			int pageSize = 10;
			int blockSize = 10;
			int startRow = (currentPage - 1)*pageSize+1;
			int endRow = startRow + pageSize -1;
			int startNum = totCnt - startRow +1;
			
			List<PostMember> list = pmd.best(startRow, endRow);
			System.out.println("MatchingAction list.size()->"+list.size());
			
			int pageCnt = (int)Math.ceil((double)totCnt/pageSize);
			int startPage = (int)(currentPage -1 )/blockSize*blockSize +1; 
			int endPage = startPage + blockSize -1;
			
			if (endPage > pageCnt) {
				endPage = pageCnt; 
			}
			
			
			request.setAttribute("totCnt", totCnt);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("startNum", startNum);
			request.setAttribute("list", list);
			request.setAttribute("blockSize", blockSize);
			request.setAttribute("pageCnt", pageCnt);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
				
		} catch (Exception e) {
			System.out.println("MatchingAction Exception->"+e.getMessage());
		}
		
	System.out.println("MatchingAction matching.jsp Return Before.. ");
	return "best_info_travel.jsp";
	}

}
