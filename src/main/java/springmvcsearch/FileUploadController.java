package springmvcsearch;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {

	@RequestMapping("/FileUpload")
	private String showUploadForm() {
		return "fileUploadingForm";
	}

	@RequestMapping(value = "/fileUploadHandler", method = RequestMethod.POST)
	private String fileUpload(@RequestParam("fileUpload") CommonsMultipartFile file, HttpSession fileSession , Model model) {
		System.out.println("File Upload image");
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getStorageDescription());

		byte[] data = file.getBytes();
		String filePath = fileSession.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
				+ File.separator + "images" + File.separator + file.getOriginalFilename();
		System.out.println(filePath);
		try {
			FileOutputStream fileoutputStream = new FileOutputStream(filePath);
			fileoutputStream.write(data);
			fileoutputStream.close();
			System.out.println("File Uploaded");
			model.addAttribute("message","Uploaded Successfully");
			model.addAttribute("fileName",file.getOriginalFilename());
		} catch (IOException exception) {
			exception.printStackTrace();
			System.out.println("Uploading Error");
			model.addAttribute("message","Uploaded Error !!");
		}
		return "fileUploadSuccess";
	}
}
