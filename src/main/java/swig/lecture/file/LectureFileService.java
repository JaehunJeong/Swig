package swig.lecture.file;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface LectureFileService {
	
	Map<String, Object> lectureFile(Map<String, Object> map) throws Exception;
	
	public void insertCurriFile(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	public void insertCoverFile(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	public void insertStudyFile(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	public void updateCurriFile(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	public void updateCoverFile(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	public void updateStudyFile(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	void deleteLecureFile(Map<String, Object> map) throws Exception;
	
}
