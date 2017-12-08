package com.exqoo.utils;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

/**
 * 
 * @author 芸江
 *
 */
public class Folder {

	/**
	 * 判断文件夹是否存在，不存在就创建一个文件夹
	 */
	public static void folderExists(File file) {
		if (!file.exists()) {
			file.mkdir();
		}
	}

	/**
	 * 判断磁盘空间是否足够
	 */
	public static boolean diskUsable(String disk, MultipartFile[] files) {
		File diskPartition = new File(disk);

		long usablePatitionSpace = diskPartition.getUsableSpace();

		long size = 0;

		for (MultipartFile file : files) {
			if (!file.isEmpty()) {
				size += file.getSize();
			}
		}

		return usablePatitionSpace > size ? true : false;
	}
}
