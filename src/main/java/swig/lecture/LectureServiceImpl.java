package swig.lecture;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import swig.common.util.FileUtils;
import swig.lecture.LectureDAO;
import swig.lecture.category.CategoryDAO;

@Service("lectureService")
public class LectureServiceImpl implements LectureService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="lectureDAO")
	private LectureDAO lectureDAO;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Resource(name="categoryDAO")
	private CategoryDAO categoryDAO; 
	
	@Override
	public List<Map<String, Object>> lectureList(Map<String, Object> map) throws Exception{
		return lectureDAO.lectureList(map);
	}

	@Override
	public void insertLecture1(Map<String, Object> map, MultipartFile[] coverfile, MultipartFile[] studyfile) throws Exception {
		
		String url1=(String)map.get("L_URL1");
		String url2=(String)map.get("L_URL2");
		String url = null;
		
		List<String> list = new ArrayList<String>();
		list.add(url1);
		list.add(url2);
		
		if(!list.isEmpty()) {
			for(int i=0; i<list.size(); i++) {
				if(i== list.size()) {
					url+=list.get(i);
				}else {
					url+=list.get(i)+",";
				}
			}
		}
		map.put("L_URL",url);
		Map<String, Object> getCaIDX = new HashMap<String, Object>();
		getCaIDX.put("CA_SSECTION", map.get("cas"));
		
		map.put("CA_IDX", categoryDAO.selectCA_IDX(getCaIDX));
		
		lectureDAO.insertLectureP1(map);
		
		List<Map<String, Object>> coverlist=fileUtils.parseInsertCoverPro(map, coverfile);
		
		for(int i=0, size=coverlist.size(); i<size; i++) {
			lectureDAO.insertLectureCoverFile(coverlist.get(i));
		}
		
		for(int i=0; i<coverfile.length; i++) {
			if(!coverfile[i].isEmpty()) {
				log.debug("--------------file start-----------");
				log.debug("filename : "+coverfile[i].getOriginalFilename());
				log.debug("name : "+coverfile[i].getName());
				log.debug("--------------file end-------------\n");
			}
		}
		
		List<Map<String, Object>> studylist=fileUtils.parseInsertStudyPro(map, studyfile);
		for(int i=0, size=studylist.size(); i<size; i++) {
			lectureDAO.insertLectureStudyFile(studylist.get(i));
		}
		
		for(int i=0; i<studyfile.length; i++) {
			if(!studyfile[i].isEmpty()) {
				log.debug("--------------file start-----------");
				log.debug("filename : "+studyfile[i].getOriginalFilename());
				log.debug("name : "+studyfile[i].getName());
				log.debug("--------------file end-------------\n");
			}
		}
	}
	
	@Override
	public void insertLecture2(Map<String, Object> map, MultipartFile[] currifile) throws Exception {
		lectureDAO.insertLectureP2(map);
		
		List<Map<String, Object>> currilist=fileUtils.parseInsertCoverPro(map, currifile);
		for(int i=0, size=currilist.size(); i<size; i++) {
			lectureDAO.insertLectureCurriFile(currilist.get(i));
		}
		
		for(int i=0; i<currifile.length; i++) {
			if(!currifile[i].isEmpty()) {
				log.debug("--------------file start-----------");
				log.debug("filename : "+currifile[i].getOriginalFilename());
				log.debug("name : "+currifile[i].getName());
				log.debug("--------------file end-------------\n");
			}
		}
		
	}

	@Override
	public Map<String, Object> selectLectureDetail(Map<String, Object> map) throws Exception {
		return lectureDAO.selectLectureDetail(map);
	}

	@Override
	public void updateLecture(Map<String, Object> map, HttpServletRequest request) throws Exception {
		lectureDAO.updatelectureHitCnt(map);
		
		lectureDAO.deleteLectureFile(map);
		/*List<Map<String,Object>> list = coverFileUtils.parseUpdateFileInfo(map, request);
	    Map<String,Object> tempMap = null;
	    for(int i=0, size=list.size(); i<size; i++){
	        tempMap = list.get(i);
	        if(tempMap.get("IS_NEW").equals("Y")){
	            lectureDAO.insertLectureCoverFile(tempMap);;
	        }
	        else{
	        	lectureDAO.updateLectureCoverFile(tempMap);
	        }
	    }*/
		
	}

	

	@Override
	public void deleteLecture(Map<String, Object> map) throws Exception {
		lectureDAO.deleteLecture(map);
		
	}


	@Override
	public void insertLecture3(Map<String, Object> map) throws Exception {
		lectureDAO.insertLectureP3(map);
		
	}

	@Override
	public void insertLecture4(Map<String, Object> map) throws Exception {
		lectureDAO.insertLectureLocation(map);
		lectureDAO.insertLectureDate(map);
		lectureDAO.insertLectureTime(map);
	}

	
}
