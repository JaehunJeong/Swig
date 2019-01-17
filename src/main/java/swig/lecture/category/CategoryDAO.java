package swig.lecture.category;

import java.util.List;
import java.util.Map;

import swig.common.AbstractDAO;

public class CategoryDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectAllCategory() throws Exception{
		return (List<Map<String, Object>>)selectOne("category.selectAllCategory");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectProgramming() throws Exception{
		return (List<Map<String, Object>>)selectOne("category.selectAllCategory");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectDesignTool() throws Exception{
		return (List<Map<String, Object>>)selectOne("category.selectAllCategory");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectSilmu() throws Exception{
		return (List<Map<String, Object>>)selectOne("category.selectAllCategory");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBeauty() throws Exception{
		return (List<Map<String, Object>>)selectOne("category.selectAllCategory");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFLanguage() throws Exception{
		return (List<Map<String, Object>>)selectOne("category.selectAllCategory");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMusic() throws Exception{
		return (List<Map<String, Object>>)selectOne("category.selectAllCategory");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectLifestyle() throws Exception{
		return (List<Map<String, Object>>)selectOne("category.selectAllCategory");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectWorkout() throws Exception{
		return (List<Map<String, Object>>)selectOne("category.selectAllCategory");
	}
}
