package com.exqoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.exqoo.entity.FileEntity;

@Mapper
@Repository
public interface FileDao {

	/**
	 * 添加一个文件
	 */
/*	@Insert("insert into nfdw_file(file_name,file_url,file_menu,file_folder) values(#{fileName},#{fileUrl},#{fileMenu},#{fileFolder})")
	int addFile(@Param("fileName") String fileName, @Param("fileUrl") String fileUrl, @Param("fileMenu") long fileMenu,
			@Param("fileFolder") long fileFolder);*/
	int addFile(FileEntity fileEntity);

	/**
	 * 通过文件id查询文件信息
	 * 
	 * @param fileId
	 *            文件id
	 * @return
	 */
	@Select("select * from nfdw_file where file_id = #{fileId}")
	FileEntity selectFileById(long fileId);

	/**
	 * 通过一级菜单id查询所关联的文件信息
	 * 
	 * @param menuId
	 * @return
	 */
	@Select("select * from nfdw_file where file_menu = #{menuId}")
	List<FileEntity> selectByMenuId(long menuId);

	/**
	 * 通过文件夹id查询文件信息
	 * 
	 * @param folerId
	 *            文件夹id
	 * @return
	 */
	@Select("select * from nfdw_file where file_folder = #{folerId}")
	List<FileEntity> selectByFolderId(long folerId);
	/**
	 * 查询所有文件
	 * 通过后缀名的不同放入相应的目录下
	 */
	@Select("select * from nfdw_file")
	List<FileEntity> selectQueryAll();

}
