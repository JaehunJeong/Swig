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
	public List<Map<String, Object>> selectComputer() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectProgramming");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFlanguage() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectDesignTool");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectLifeStyle() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectSilmu");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectEtc() throws Exception{
		return (List<Map<String, Object>>)selectList("category.selectBeauty");
	}
	
	public String selectCA_IDX(Map<String, Object> map) throws Exception{
		System.out.println();
		return (String)selectOne("category.selectCA_IDX", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectcate1(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectPagingList("category.selectcate1", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectcate2() throws Exception {
		return (List<Map<String, Object>>)selectList("category.selectcate2");
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectcate3() throws Exception {
		return (List<Map<String, Object>>)selectList("category.selectcate3");
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectcate4() throws Exception {
		return (List<Map<String, Object>>)selectList("category.selectcate4");
	}
}
