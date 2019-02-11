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
		
		public void deleteLecture(Map<String, Object> map) throws Exception;

		// 강의 장소 가져옴
		List<Map<String, Object>> lectureApply1(Map<String, Object> map1) throws Exception;

		// 강의 요일 가져옴
		List<Map<String, Object>> lectureApply2(Map<String, Object> map2) throws Exception;
		
		// 강의 시간 가져옴
		List<Map<String, Object>> lectureApply3(Map<String, Object> map3) throws Exception;
		
		// 수강 신청 첫페이지 장소, 요일, 시간 insert 
		public void LectureApplyInsert1(Map<String, Object> map) throws Exception;

		// 수강 신청 두번째 페이지 수준, 개월, 튜터에게 할말 
		public void LectureApplyInsert2(Map<String, Object> map) throws Exception;

}
