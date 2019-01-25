package swig.lecture;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface LectureService {
	/*
		List<Map<String, Object>> lectureList(Map<String, Object> map) throws Exception;
	*/
	
		List<Map<String, Object>> selectRegionSerchLecture(Map<String, Object> map) throws Exception;
	
		Map<String, Object> selectLectureDetail(Map<String, Object> map) throws Exception;
	/*
		public void insertLecture(Map<String, Object>map, HttpServletRequest request) throws Exception;
	*/	
		public void updateLecture(Map<String, Object> map, HttpServletRequest request) throws Exception;
		
		void deleteLecture(Map<String, Object> map) throws Exception;
		
}
