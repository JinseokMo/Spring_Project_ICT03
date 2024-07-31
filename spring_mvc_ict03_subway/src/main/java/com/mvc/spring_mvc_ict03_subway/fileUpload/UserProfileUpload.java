package com.mvc.spring_mvc_ict03_subway.fileUpload;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UserProfileUpload {
	public String userProfileUproad(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		final String UPLOAD_DIRECTORY = "D:\\dev\\workspace\\jsp_pj_ict03_subway\\src\\main\\webapp\\resources\\image\\user\\profile\\";
		final List<String> ALLOWED_EXTENSIONS = Arrays.asList("jpg", "jpeg", "png");
		String name = null;
		if (ServletFileUpload.isMultipartContent(request)) {
			
			
            try {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List<FileItem> items = upload.parseRequest(request);

                String userNo = request.getParameter("userNo");
                if (userNo == null) {
                    response.getWriter().println("User not logged in or userNo not found.");
                    String error0 = "User not logged in or userNo not found.";
                    return error0;
                }

                boolean fileUploaded = false;

                for (FileItem item : items) {
                    if (!item.isFormField()) {
                        String fileName = item.getName();
                        if (fileName == null || fileName.isEmpty()) {
                            response.getWriter().println("No file uploaded.");
                            String error1 = "No file uploaded.";
                            return error1;
                        }

                        String fileExtension = getFileExtension(fileName);
                        if (!ALLOWED_EXTENSIONS.contains(fileExtension)) {
                            response.getWriter().println("Only JPG, JPEG, and PNG files are allowed.");
                            String error2 ="No file uploaded.";
                            return error2;
                        }

                        String newFileName = userNo + "." + fileExtension; // userNo를 파일 이름으로 설정
                        name =newFileName;
                        // 실제 경로 설정
                        String uploadPath =UPLOAD_DIRECTORY;
                        File uploadDir = new File(uploadPath);
                        if (!uploadDir.exists()) {
                            uploadDir.mkdirs(); // 디렉토리가 존재하지 않으면 생성
                        }

                        String filePath = uploadPath + "/" + newFileName;
                        File uploadedFile = new File(filePath);
                        
                        System.out.println(filePath);
                        // 기존 파일 삭제
                        if (uploadedFile.exists()) {
                            uploadedFile.delete();
                        }

                        // 새 파일 저장
                        item.write(uploadedFile);
                        fileUploaded = true;
                    }
                }

                if (fileUploaded) {
                	return name;
                } else {
                    response.getWriter().println("No file uploaded.");
                    String error3 = "No file uploaded.";
                    return error3;
                }

            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().println("File upload failed: " + e.getMessage());
            }
		}
		return "";
	}
	
    private String getFileExtension(String fileName) {
        int dotIndex = fileName.lastIndexOf(".");
        if (dotIndex > 0 && dotIndex < fileName.length() - 1) {
            return fileName.substring(dotIndex + 1).toLowerCase();
        } else {
            return "";
        }
    }
}
