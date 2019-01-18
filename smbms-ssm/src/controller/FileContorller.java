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
		System.out.println("上传的路径->"+realPath);
		
		for (MultipartFile multipartFile : myfiles) {
			System.out.println("文件长度: " + multipartFile.getSize() + "B");
			System.out.println("文件类型: " + multipartFile.getContentType());
			System.out.println("文件原名: " + multipartFile.getOriginalFilename());
			System.out.println("========================================");
			
			FileUtils.copyInputStreamToFile(multipartFile.getInputStream(),new File(realPath, multipartFile.getOriginalFilename()));
		}
		
		
		System.out.println("上传成功~~~~~~~~");
		
		return "redirect:/user/main.html";
	}
	/**
     * 文件下载
     * @throws IOException 
     */
    @RequestMapping(value="/download",method=RequestMethod.GET)
    public void download(@RequestParam(value="filename")String filename,
            HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        //模拟文件，myfile.txt为需要下载的文件  
        String path = request.getSession().getServletContext().getRealPath("/WEB-INF/upload")+"\\"+filename;  
        //获取输入流  
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(path)));
        //转码，免得文件名中文乱码  
        filename = URLEncoder.encode(filename,"UTF-8");  
        //设置文件下载头  
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);    
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型    
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
