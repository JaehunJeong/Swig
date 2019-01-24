package swig.lecture.category;

import java.util.List;
import java.util.Map;

public interface RegionCategoryService {
	List<Map<String, Object>> selectRegiongroup() throws Exception;

	List<List<Map<String, Object>>> listOfRegionCategory() throws Exception;
}
