package swig.lecture.category;

import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.Collection;

public interface CategoryService {
	
	List<Map<String, Object>> selectCAgroup() throws Exception;

	List<List<Map<String, Object>>> listOfCategory() throws Exception;
	
	
}
