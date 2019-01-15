package swig.lecture;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


public interface LectureService {

		List<Map<String, Object>> lectureBoardList(Map<String, Object> map) throws Exception;
		
		Map<String,Object> selectLectureDetail(Map<String, Object> map) throws Exception;
		
		public void insertLectureOne(Map<String, Object>map, HttpServletRequest request) throws Exception;
		
		public Map<String, Object> updateLecture(Map<String, Object> map, HttpServletRequest request) throws Exception;
		
		void deleteLecture(Map<String, Object> map) throws Exception;
		
		Map<String, Object> LectureLocation(Map<String, Object> map) throws Exception;
		
		Map<String, Object> LectureDate(Map<String, Object> map) throws Exception;
		
		Map<String, Object> LectureTime(Map<String, Object> map) throws Exception;
		
		Map<String, Object> LectureLocationFind(Map<String, Object> map) throws Exception;
		
		Map<String, Object> LectureDateFind(Map<String, Object> map) throws Exception;
		
		Map<String, Object> LectureTimeFind(Map<String, Object> map) throws Exception;
		
		public void insertLectureLocation(Map<String, Object> map, HttpServletRequest request) throws Exception;
		
		public void insertLectureDate(Map<String, Object> map, HttpServletRequest request) throws Exception;
		
		public void insertTimeLocation(Map<String, Object> map, HttpServletRequest request) throws Exception;
		
		public Map<String, Object> upateLectureLocation(Map<String, Object> map, HttpServletRequest request) throws Exception;
		
		public Map<String, Object> upateLectureDate(Map<String, Object> map, HttpServletRequest request) throws Exception;
		
		public Map<String, Object> upateLectureTime(Map<String, Object> map, HttpServletRequest request) throws Exception;
		
		void deleteLectureLocation(Map<String, Object> map) throws Exception;
		
		void deleteLectureDate(Map<String, Object> map) throws Exception;
		
		void deleteLectureTime(Map<String, Object> map) throws Exception;
}
