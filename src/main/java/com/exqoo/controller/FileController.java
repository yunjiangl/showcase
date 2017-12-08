package com.exqoo.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.exqoo.entity.FolderEntity;
import com.exqoo.entity.MenuEntity;
import com.exqoo.service.FileService;
import com.exqoo.service.FolderService;
import com.exqoo.service.MenuService;
import com.exqoo.utils.Folder;
import com.exqoo.utils.POIReadExcelToHtml;
import com.exqoo.utils.Word2Pdf;

@Controller
@RequestMapping("sys/file/")
public class FileController {

	@Autowired
	private MenuService menuService;

	@Autowired
	private FolderService folerService;

	@Autowired
	private FileService fileService;
	
	@Value("${disk}")
	private String disk;

	@RequestMapping(value = "upLoadPage", method = RequestMethod.GET)
	public String upLoadPage(Model model, long menuId) {

		MenuEntity menu = menuService.selectMenuByMenuId(menuId);

		List<FolderEntity> folders = folerService.selectFoldersByMenuId(menuId);

		model.addAttribute("menu", menu);

		model.addAttribute("folders", folders);

		return "sys/upLoad";
	}

	/**
	 * 上传文件
	 * 
	 * @param files
	 * @param request
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "uploadFile", method = RequestMethod.POST)
	public String handleFormUpload(@RequestParam("files") MultipartFile[] files, String menuName, String folder,
			long menuId) throws IOException {

		InputStream inputStream = null;
		FileOutputStream outputStream = null;
		
		if(!Folder.diskUsable(disk, files)) {
			return "diskError";
		}
		
		for (MultipartFile file : files) {
			try {
				if (!file.isEmpty()) {
					inputStream = file.getInputStream();
					
					String[] fileFolder = folder.split("\\.");

					File newFolder1 = new File(disk + menuName);

					Folder.folderExists(newFolder1);

					File newFolder = new File(disk + menuName + "/" + fileFolder[0]);

					Folder.folderExists(newFolder);

					File newFile = new File(newFolder, file.getOriginalFilename());
					newFile.createNewFile();

					outputStream = new FileOutputStream(newFile);

					byte[] b = new byte[1024];
					int length = 0;

					while ((length = inputStream.read(b)) != -1) {
						outputStream.write(b, 0, length);
					}

					String fileName = file.getOriginalFilename();

					if (fileFolder.length > 1) {
						fileService.addFile(fileName, disk + menuName + "/" + folder + "/" + fileName, menuId,
								Long.parseLong(fileFolder[1]));
					} else {
						fileService.addFile(fileName, disk + menuName + "/" + folder + "/" + fileName, menuId, 0);
					}

				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					outputStream.flush();
					outputStream.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		}

		return "redirect:/sys/main/page";
	}

	@RequestMapping(value = "showFile/excel", method = RequestMethod.GET)
	public void showFileExcel(HttpServletResponse response) throws Exception {

		File file = new File("d://12345/铜仁南方电网展示平台开发计划.xlsx");

		FileInputStream fis = new FileInputStream(file);
		OutputStream out = response.getOutputStream();

		POIReadExcelToHtml.excelToHtml(fis, out);

		fis.close();
		out.close();
	}

	@RequestMapping(value = "showFile/word", method = RequestMethod.GET)
	public void showFileWord(HttpServletResponse response) throws Exception {
		File file = new File("d://12345/刘芸江-Java 软件工程师简历.doc");

		FileInputStream fis = new FileInputStream(file);
		OutputStream out = response.getOutputStream();

		Word2Pdf.word2pdf(fis, out);

		fis.close();
		out.close();
	}

	@RequestMapping(value = "showFile/pdf", method = RequestMethod.GET)
	public void showFilePdf(HttpServletResponse response) throws IOException {

		File file = new File("d://12345/123.pdf");

		FileInputStream fis = new FileInputStream(file);
		OutputStream out = response.getOutputStream();

		byte[] bs = new byte[1024];
		int len = 0;

		while ((len = fis.read(bs)) != -1) {
			out.write(bs, 0, len);
		}

		fis.close();
		out.close();
	}
}
