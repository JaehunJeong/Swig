package swig.lecture;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface LectureService {
	/*
		List<Map<String, Object>> lectureList(Map<String, Object> map) throws Exception;
	*/
		List<Map<String, Object>> selectLectureList(Map<String, Object> map) throws Exception;
		
		List<Map<String, Object>> selectCA_IDXLectureList(Map<String, Object> map) throws Exception;
	
		Map<String, Object> selectLectureDetail(Map<String, Object> map) throws Exception;
	/*
		public void insertLecture(Map<String, Object>map, HttpServletRequest request) throws Exception;
	*/	
		public void updateLecture(Map<String, Object> map, HttpServletRequest request) throws Exception;
		
		void deleteLecture(Map<String, Object> map) throws Exception;

		// 처음 신청서 작성 시
		public void lectureRequestInsert1(Map<String, Object>map) throws Exception;

		Map<String, Object> lectureApply1(Map<String, Object> map1) throws Exception;

		Map<String, Object> lectureApply2(Map<String, Object> map2) throws Exception;
		
		Map<String, Object> lectureApply3(Map<String, Object> map3) throws Exception;

}
