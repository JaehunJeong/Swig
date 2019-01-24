package swig.lecture;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface LectureService {
	
		List<Map<String, Object>> lectureList(Map<String, Object> map) throws Exception;
		
		Map<String,Object> selectLectureDetail(Map<String, Object> map) throws Exception;
		
		public void insertLecture1(Map<String, Object>map, MultipartFile[] coverfile, MultipartFile[] studyfile) throws Exception;
		
		public void insertLecture2(Map<String, Object>map, MultipartFile[] currifile) throws Exception;
		
		public void insertLecture3(Map<String, Object>map) throws Exception;
		
		public void insertLecture4(Map<String, Object>map) throws Exception;
		
		public void updateLecture(Map<String, Object> map, HttpServletRequest request) throws Exception;
		
		void deleteLecture(Map<String, Object> map) throws Exception;
		
}
