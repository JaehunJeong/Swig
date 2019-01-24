package swig.lecture;

import java.util.List;

import java.util.Map;

import org.springframework.stereotype.Repository;

import swig.common.AbstractDAO;

@Repository("lectureDAO")
public class LectureDAO extends AbstractDAO{
	
	// 
	@SuppressWarnings("unchecked") //컴파일 경고 사용 x
	public List<Map<String, Object>> lectureList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)
				selectOne("lecture.lectureList", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectLectureDetail(Map<String,Object> map) throws Exception{
		return (Map<String, Object>)selectOne("lecture.selectLectureDetail", map);
	}

	public void insertLectureP1(Map<String, Object> map) throws Exception{
		insert("lecture.insertLecture", map);
	}
	
	public void insertLectureP2(Map<String, Object> map) throws Exception{
		update("lecture.insertLectureP2", map);
	}
	
	public void insertLectureP3(Map<String, Object> map) throws Exception{
		update("lecture.insertLectureP3", map);
	}
	
	public void updateLecture(Map<String, Object> map) throws Exception{
		update("lecture.updateLecture", map);
	}
	
	public void updatelectureHitCnt(Map<String, Object> map) throws Exception{
		update("lecture.updatelectureHitCnt", map);
	}
	
	public void deleteLecture(Map<String, Object> map) throws Exception{
		delete("lecture.deleteLecture", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> lectureLocation(Map<String, Object> map) throws Exception{
		return (Map<String, Object>)selectOne("lectureDetail.lectureLocation",map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> lectureDate(Map<String, Object> map) throws Exception{
		return (Map<String, Object>)selectOne("lectureDetail.lectureDate",map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> lectureTime(Map<String, Object> map) throws Exception{
		return (Map<String, Object>)selectOne("lectureDetail.lectureTime",map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> lectureLocationFind(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectOne("lectureDetail.lectureLocationFind", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> lectureDateFind(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectOne("lectureDetail.lectureDateFind", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> lectureTimeFind(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectOne("lectureDetail.lectureTimeFind", map);
	}
	
	public void insertLectureLocation(Map<String, Object> map) throws Exception{
		insert("lectureDetail.insertLectureLocation", map);
	}
	
	public void insertLectureDate(Map<String, Object> map) throws Exception{
		insert("lectureDetail.insertLectureDate", map);
	}
	
	public void insertLectureTime(Map<String, Object> map) throws Exception{
		insert("lectureDetail.insertLectureTime", map);
	}
	
	public void updateLectureLocation(Map<String, Object> map) throws Exception{
		update("lectureDetail.updateLectureLocation", map);
	}
	
	public void updateLectureDate(Map<String, Object> map) throws Exception{
		update("lectureDetail.updateLectureDate", map);
	}
	
	public void updateLectureTime(Map<String, Object> map) throws Exception{
		update("lectureDetail.updateLectureTime", map);
	}
	
	public void deleteLectureLocation(Map<String, Object> map) throws Exception{
		delete("lectureDetail.deleteLectureTime", map);
	}
	
	public void deleteLectureDate(Map<String, Object> map) throws Exception{
		delete("lectureDetail.deleteLectureTime", map);
	}
	
	public void deleteLectureTime(Map<String, Object> map) throws Exception{
		delete("lectureDetail.deleteLectureTime", map);
	}
	
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
