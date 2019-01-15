package swig.lecture;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import swig.common.AbstractDAO;
import swig.lecture.model.LectureModel;

@Repository("lectureDAO")
public class LectureDAO extends AbstractDAO{
	
	// 
	@SuppressWarnings("unchecked") //컴파일 경고 사용 x
	public List<Map<String, Object>> lectureLocation(List<Map<String, Object>> map) throws Exception{
		return (List<Map<String, Object>>)
				selectOne("LectureDetailSQL.LectureLocation", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> lectureBoardList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)
				selectList("lecture.lectureBoardList", map);
	}
	

}
