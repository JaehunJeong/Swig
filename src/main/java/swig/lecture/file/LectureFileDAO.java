package swig.lecture.file;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import swig.common.AbstractDAO;

public class LectureFileDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked") //컴파일 경고 사용 x
	public Map<String, Object> lectureFile(Map<String, Object> map) throws Exception{
		return (Map<String, Object>)
				selectOne("lectureFile.lectureFile", map);
	}
	
	public void insertLectureCoverFile(Map<String, Object> map) throws Exception{
		insert("lectureFile.insertCoverFile", map);
	}
	
	public void insertLectureStudyFile(Map<String, Object> map) throws Exception{
		insert("lectureFile.insertStudyFile", map);
	}
	
	public void insertLectureCurriFile(Map<String, Object> map) throws Exception{
		insert("lectureFile.insertCurriFile", map);
	}
	
	public void updateLectureCoverFile(Map<String, Object> map) throws Exception{
		update("lectureFile.updateCoverFile", map);
	}
	
	public void updateLectureCurriFile(Map<String, Object> map) throws Exception{
		update("lectureFile.updateCurriFile", map);
	}
	
	public void updateLectureStudyFile(Map<String, Object> map) throws Exception{
		update("lectureFile.updateStudyFile", map);
	}
	
	public void deleteLectureFile(Map<String, Object> map) throws Exception{
		delete("lectureFile.deleteLectureFile", map);
	}
}
