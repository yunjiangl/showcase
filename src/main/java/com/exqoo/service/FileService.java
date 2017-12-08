package com.exqoo.service;

import java.util.List;


import com.exqoo.entity.FileEntity;

public interface FileService {

	/**
	 * 添加文件信息
	 * 
	 * 
	 * @return
	 */
	void addFile(String fileName, String fileUrl, long fileMenu, long fileFolder);


	/**
	 * 通过一级菜单id查询所关联的文件信息
	 * 
	 * @param menuId
	 * @return
	 */
	FileEntity selectFileById(long fileId);

	/**
	 * 通过文件夹id查询文件信息
	 * 
	 * @param folerId
	 *            文件夹id
	 * @return
	 */
	List<FileEntity> selectByMenuId(long menuId);

	/**
	 * 通过文件夹id查询文件信息
	 * 
	 * @param folerId
	 *            文件夹id
	 * @return
	 */
	List<FileEntity> selectByFolderId(long folerId);
	/**
	 * 查询所有文件
	 * 通过后缀名的不同放入相应的目录下
	 */
	List<FileEntity> selectQueryAll();
	/**
	 * 查询二级菜单下的所有文件
	 */
	List<FileEntity> selectFileFolder(long fileFolder);

}
