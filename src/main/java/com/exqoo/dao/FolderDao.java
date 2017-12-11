package com.exqoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.exqoo.entity.FolderEntity;
import com.exqoo.entity.MenuEntity;

/**
 * 文件夹名管理（二级标题）
 * @author Admin
 *
 */
@Mapper
@Repository
public interface FolderDao {
	/**
	 * 查询全部二级菜单
	 * @return 二级菜单集合
	 */
	@Select("select * from nfdw_folder")
	List<FolderEntity> queryAll();
	
	/**
	 * 删除二级菜单
	 */
	@Delete("delete from nfdw_folder where folder_name=#{name}")
	int deleteFolder(@Param("name") String name);
	
	/**
	 * 新增二级菜单
	 */
	@Insert("insert into nfdw_folder(folder_name,folder_menu) values(#{name},#{menu})")
	int insertFolder(@Param("name") String name,@Param("menu") long menu);
	/**
	 * 查询一级标题ID
	 */
	@Select("select * from nfdw_menu where menu_name=#{menu_name}")
	MenuEntity selectMenuByName(@Param("menu_name") String menu_name);
	/**
	 * 单行查询二级标题
	 */
	@Select("select * from nfdw_folder where folder_name=#{folder_name}")
	FolderEntity selectFolderByName(@Param("folder_name") String folder_name);
	/**
	 * 查询全部一级标题
	 */
	@Select("select * from nfdw_menu")
	List<MenuEntity> queryMenu();
	/**
	 * 修改二级标题
	 */
	@Update("update nfdw_folder set folder_name=#{folder_name},folder_menu=#{folder_menu}")
	int updateFolder(String folder_name,long folder_menu);
	
	/**
	 * 通过一级标题查询该一级标题下的所有文件夹
	 * 
	 * @param menuId
	 *            一级标题id
	 * @return 文件夹集合
	 */
	@Select("select * from nfdw_folder where folder_menu=#{menuId}")
	List<FolderEntity> selectFoldersByMenuId(long menuId);
	/**
	 * 通过一级标题查询所有的文件
	 */
	@Select("select * from nfdw_file where file_menu=#{menuId}")
	List<FileEntity> selectFileAll(@Param("menuId") long menuId);
}
