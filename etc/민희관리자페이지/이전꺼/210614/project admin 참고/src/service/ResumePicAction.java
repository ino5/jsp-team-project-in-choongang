package service;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ResumePicAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ServletContext sc;
		System.out.println("UploadBoard3 doPost Start...");
		String filename ="";
		String upLoadFilename = "";
		request.setCharacterEncoding("utf-8");
		String fileSave = "/fileSave";
		String realPath = request.getSession().getServletContext().getRealPath("fileSave");
		int maxSize = 5 * 1024 * 1024; //5MB
//		String realPath = "C:/jsp/jspSrc/project/WebContent/resume_pic";
		System.out.println("realPath -->" + realPath);
		MultipartRequest multi = new MultipartRequest(request, realPath, maxSize, "utf-8",
									new DefaultFileRenamePolicy());
		Enumeration en = multi.getFileNames();
		int i = 0;
		while(en.hasMoreElements()){
			++i;
			//input 태그의 속성이 file인 태그의 name 속성값 : 파라미터 이름 m
			String filename1 = (String)en.nextElement();
			//서버에 저장된 파일 이름
			filename = multi.getFilesystemName(filename1);
			//전송 전 원래의 파일 이름
			String original = multi.getOriginalFileName(filename1);
			//전송된 파일의 내용 타입
			String type = multi.getContentType(filename1);
			//전송된 파일 속성이 file인 태그의 name 속성값을 이용해 파일객체 생성
			File file = multi.getFile(filename);
			System.out.println("real Path -->" + realPath + "<br>");
			System.out.println("파라메타 이름 -->" + filename1 + "<br>");
			System.out.println("실제 파일 이름 -->" + original + "<br>");
			System.out.println("저장된 파일 이름 -->" + filename + "<br>");
			System.out.println("파일 타입 -->" + type + "<br>");
			if(file!=null){
				System.out.println("크기 : " + file.length() + "<br>");
			}
			upLoadFilename =  "fileSave\\" + filename;
			System.out.println("전달 upLoadFilename ->" + upLoadFilename);
			request.setAttribute("filename", "fileSave\\" + filename);
			
			if(i==1) {
				request.setAttribute("upLoadFilename", upLoadFilename);
			}
			if(i==2) {
				request.setAttribute("upLoadFilename2", upLoadFilename);
			}
			
		}
		
		
		
//		request.setAttribute("upLoadFilename", multi.getParameter("upLoadFilename"));
		
		request.setAttribute("upLoad_pic", multi.getParameter("upLoadFilename"));
		request.setAttribute("m_id", multi.getParameter("m_id"));
		request.setAttribute("r_num", multi.getParameter("r_num"));
		request.setAttribute("r_title", multi.getParameter("r_title"));
		request.setAttribute("r_pic", multi.getParameter("r_pic"));
		request.setAttribute("r_file", multi.getParameter("r_file"));
		System.out.println("in picAction: "+(String)request.getAttribute("upLoadFilename"));
		
		return "resumeUpdate.do";
	}
}
