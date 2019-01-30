package swig.lecture.category;

import java.util.List;

import java.util.Map;

import org.springframework.stereotype.Repository;

import swig.common.AbstractDAO;
@Repository("categoryDAO")
public class CategoryDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCAgroup() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectCagroup");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectProgramming() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectProgramming");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectDesignTool() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectDesignTool");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectSilmu() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectSilmu");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBeauty() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectBeauty");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFLanguage() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectFLanguage");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMusic() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectMusic");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectLifestyle() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectLifestyle");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectWorkout() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectWorkout");
	}
	
	
	public String selectCA_IDX(Map<String, Object> map) throws Exception{
		System.out.println();
		return (String)selectOne("category.selectCA_IDX", map);
	}
}
