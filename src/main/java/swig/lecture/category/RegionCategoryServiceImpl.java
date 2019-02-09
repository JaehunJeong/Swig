package swig.lecture.category;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

@Service("regionCategoryService")
public class RegionCategoryServiceImpl implements RegionCategoryService{
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="regionCategoryDAO")
	private RegionCategoryDAO regionCategoryDAO;

	@Override
	public List<Map<String, Object>> selectRegiongroup() throws Exception {
		List<Map<String, Object>> relist =new ArrayList<Map<String, Object>>(regionCategoryDAO.selectRegiongroup());
		
		return relist;
	}

	@Override
	public List<List<Map<String, Object>>> listOfRegionCategory() throws Exception {
		List<List<Map<String, Object>>> mOfRecategory = new ArrayList<List<Map<String, Object>>>();
		
		mOfRecategory.add(regionCategoryDAO.selectSeoul());
		mOfRecategory.add(regionCategoryDAO.selectGyeong());
		mOfRecategory.add(regionCategoryDAO.selectIncheon());
		mOfRecategory.add(regionCategoryDAO.selectBusan());
		mOfRecategory.add(regionCategoryDAO.selectJeju());
		mOfRecategory.add(regionCategoryDAO.selectDaejeon());
		mOfRecategory.add(regionCategoryDAO.selectGangwon());
		mOfRecategory.add(regionCategoryDAO.selectGwangju());
		/*mOfRecategory.add(regionCategoryDAO.selectOnline());*/
		
		return mOfRecategory;
	}
	
}
