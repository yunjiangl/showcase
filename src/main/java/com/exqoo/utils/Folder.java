package com.exqoo.utils;

import java.io.File;

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
		if(!file.exists()) {
			file.mkdir();
		}
	}
}
