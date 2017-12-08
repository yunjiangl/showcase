package com.exqoo.entity;

public class FileEntity {
	
	private long fileId; // 文件id
	
	private String fileName; // 文件的名字，带后缀
	
	private String fileUrl; // 文件的路径
	
	private long fileMenu; // 文件所属的一级标题id
	
	private long fileFolder; // 文件所属的二级标题id

	private String fileSuffix;
	
	
	public String getFileSuffix() {
		return fileSuffix;
	}

	public void setFileSuffix(String fileSuffix) {
		this.fileSuffix = fileSuffix;
	}

	public long getFileId() {
		return fileId;
	}

	public void setFileId(long fileId) {
		this.fileId = fileId;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileUrl() {
		return fileUrl;
	}

	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}

	public long getFileMenu() {
		return fileMenu;
	}

	public void setFileMenu(long fileMenu) {
		this.fileMenu = fileMenu;
	}

	public long getFileFolder() {
		return fileFolder;
	}

	public void setFileFolder(long fileFolder) {
		this.fileFolder = fileFolder;
	}
	
	
	
}
