package com.exqoo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exqoo.dao.FileDao;
import com.exqoo.entity.FileEntity;
import com.exqoo.service.FileService;

@Service
public class FileServiceImpl implements FileService {

	@Autowired
	private FileDao fileDao;

	@Override
	public void addFile(String fileName, String fileUrl, long fileMenu, long fileFolder) {

		FileEntity file = new FileEntity();

		String[] fileNames = fileName.split("\\.");

		file.setFileName(fileNames[0]);
		file.setFileSuffix(fileNames[1]);
		file.setFileUrl(fileUrl);
		file.setFileFolder(fileFolder);
		file.setFileMenu(fileMenu);
		fileDao.addFile(file);

	}

	@Override
	public FileEntity selectFileById(long fileId) {
		return fileDao.selectFileById(fileId);
	}

	@Override
	public List<FileEntity> selectByMenuId(long menuId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FileEntity> selectByFolderId(long folerId) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 查询所有文件 通过后缀名的不同放入相应的目录下
	 */
	public List<FileEntity> selectQueryAll() {
		// TODO Auto-generated method stub
		return fileDao.selectQueryAll();
	}

}
