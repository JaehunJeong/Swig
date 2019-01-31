package swig.lecture.category;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;
import swig.common.AbstractDAO;

@Repository("regionCategoryDAO")
public class RegionCategoryDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectRegiongroup() throws Exception{
		return (List<Map<String, Object>>)selectList("regioncategory.selectRegiongroup");
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectSeoul() throws Exception{
		return (List<Map<String, Object>>)selectList("regioncategory.selectSeoul");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectGyeong() throws Exception{
		return (List<Map<String, Object>>)selectList("regioncategory.selectGyeong");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectIncheon() throws Exception{
		return (List<Map<String, Object>>)selectList("regioncategory.selectIncheon");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBusan() throws Exception{
		return (List<Map<String, Object>>)selectList("regioncategory.selectBusan");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectJeju() throws Exception{
		return (List<Map<String, Object>>)selectList("regioncategory.selectJeju");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectDaejeon() throws Exception{
		return (List<Map<String, Object>>)selectList("regioncategory.selectDaejeon");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectGangwon() throws Exception{
		return (List<Map<String, Object>>)selectList("regioncategory.selectGangwon");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectGwangju() throws Exception{
		return (List<Map<String, Object>>)selectList("regioncategory.selectGwangju");
	}
	
	/*@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectOnline() throws Exception{
		return (List<Map<String, Object>>)selectList("regioncategory.selectOnline");
	}*/
}
