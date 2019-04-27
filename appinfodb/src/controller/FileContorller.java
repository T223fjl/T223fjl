package controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/file")
public class FileContorller {
	@RequestMapping("/view/{id}")
	public String view(@PathVariable String id,Model model){
		System.out.println(id);
		return "";
	}
	
	
	
	
	@RequestMapping(value="/upload")
	public String upload(@RequestParam MultipartFile[] myfiles, HttpServletRequest request) throws IOException{
		System.out.println("name="+request.getParameter("name"));
		
		System.out.println("myfiles.length="+myfiles.length);
		
			
		String realPath = request.getSession().getServletContext().getRealPath("/WEB-INF/upload");
		System.out.println("�ϴ���·��->"+realPath);
		
		for (MultipartFile multipartFile : myfiles) {
			System.out.println("�ļ�����: " + multipartFile.getSize() + "B");
			System.out.println("�ļ�����: " + multipartFile.getContentType());
			System.out.println("�ļ�ԭ��: " + multipartFile.getOriginalFilename());
			System.out.println("========================================");
			
			FileUtils.copyInputStreamToFile(multipartFile.getInputStream(),new File(realPath, multipartFile.getOriginalFilename()));
		}
		
		
		System.out.println("�ϴ��ɹ�~~~~~~~~");
		
		return "redirect:/user/main.html";
	}
	/**
     * �ļ�����
     * @throws IOException 
     */
    @RequestMapping(value="/download",method=RequestMethod.GET)
    public void download(@RequestParam(value="filename")String filename,
            HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        //ģ���ļ���myfile.txtΪ��Ҫ���ص��ļ�  
        String path = request.getSession().getServletContext().getRealPath("/WEB-INF/upload")+"\\"+filename;  
        //��ȡ������  
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(path)));
        //ת�룬����ļ�����������  
        filename = URLEncoder.encode(filename,"UTF-8");  
        //�����ļ�����ͷ  
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);    
        //1.�����ļ�ContentType���ͣ��������ã����Զ��ж������ļ�����    
        response.setContentType("multipart/form-data");   
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());  
        int len = 0;  
        while((len = bis.read()) != -1){  
            out.write(len);  
            out.flush();  
        }  
        out.close();  
    }
}
