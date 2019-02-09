package swig.lecture.category;

import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.Collection;

public interface CategoryService {
	
	List<Map<String, Object>> selectCAgroup() throws Exception;

	List<List<Map<String, Object>>> listOfCategory() throws Exception;
	
	List<Map<String, Object>> selectcate1() throws Exception;

	List<Map<String, Object>> selectcate2() throws Exception;

	List<Map<String, Object>> selectcate3() throws Exception;

	List<Map<String, Object>> selectcate4() throws Exception;
}
