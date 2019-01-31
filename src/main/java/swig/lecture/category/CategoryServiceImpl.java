package swig.lecture.category;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import swig.lecture.category.CategoryDAO;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="categoryDAO")
	private CategoryDAO categoryDAO;
	
	@Override
	public List<Map<String, Object>> selectCAgroup() throws Exception {
				
		List<Map<String, Object>> list =new ArrayList<Map<String, Object>>(categoryDAO.selectCAgroup());
		
		return list;
	}
	
	public List<List<Map<String, Object>>> listOfCategory() throws Exception{
		List<List<Map<String, Object>>> mOfcategory = new ArrayList<List<Map<String, Object>>>();
		
		mOfcategory.add(categoryDAO.selectComputer());
		mOfcategory.add(categoryDAO.selectFlanguage());
		mOfcategory.add(categoryDAO.selectLifeStyle());
		mOfcategory.add(categoryDAO.selectEtc());
		
		return mOfcategory;
	}
	
	
	@Override
	public List<Map<String, Object>> selectcate1() throws Exception {
		return categoryDAO.selectcate1();
	}
	
	@Override
	public List<Map<String, Object>> selectcate2() throws Exception {
		return categoryDAO.selectcate2();
	}
	
	@Override
	public List<Map<String, Object>> selectcate3() throws Exception {
		return categoryDAO.selectcate3();
	}
	
	@Override
	public List<Map<String, Object>> selectcate4() throws Exception {
		return categoryDAO.selectcate4();
	}
}
