package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;

public class TfUpdateAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			MemberDao md = MemberDao.getInstance();
			
			try {
				String m_id = request.getParameter("m_id");
				int result = md.tf_update(m_id);
				
				request.setAttribute("result", result);
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			
		return "manager.do";
	}

}
