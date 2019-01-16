package swig.mypage;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import swig.mypage.MyPageDAO;
import swig.utils.FileUpload;
import yogi.common.util.FileUtils;

@Service("MyPageService")
public class MyPageServiceImpl implements MyPageService {

	Logger log = Logger.getLogger(this.getClass());
	
	//new를 사용하여 객체생성하는 것이 아닌 어노테이션을 이용하면 객체선언만 해주면 됨
	@Resource(name="fileUpload")
	private FileUpload fileUpload;
	
	private static final String filePath = "C:\\java\\github\\upload\\";
	
	@Resource(name="mypageDAO")
	private MyPageDAO myPageDAO;
	
	@Override
	public Map<String, Object> memberView(Object object) throws Exception {
		return MyPageDAO.memberView(object);
	}
	
	@Override
	public void memberUpdate(Member member) throws Exception{
		MyPageDAO.memberUpdate(member);
	}
	
	@Override
	public void tutorUpdate(Tutor tutor, HttpServletRequest request) throws Exception{
		
		Map<String, Object> fileMap = fileUpload.parseInsertFileInfo(request);
		
		if(fileMap!=null) {
			//기존 파일 가져오기
			String deleteFile = MyPageDAO.deleteFile(tutor.getM_no());
			//기존 파일이 존재하면 삭제
			if(deleteFile!=null) {
				File delete = new File(filePath+deleteFile);
				delete.delete();
			}
			tutor.setT_scert(fileMap.get("STORED_FILE_NAME").toString());
			System.out.println("파일 변경:"+tutor.getT_scert());
			MyPageDAO.updateMember(tutor);
		}
		else {
			MyPageDAO.updateMemberExceptFile(tutor);
		}
	}

	
	@Override
	public void memberDelete(int m_tutor) throws Exception{
		MyPageDAO.memberDelete(m_tutor);
	}
	
	@Override
	public List<Map<String, Object>> lectureApplyList(Map<String, Object> map) throws Exception {
		return MyPageDAO.lectureApplyList(map);
	}
	
	@Override
	public List<Map<String, Object>> lectureListForm(Map<String, Object> map) throws Exception {
		return MyPageDAO.lectureListForm(map);
	}
	
	@Override
	public List<Map<String, Object>> wishListForm(Map<String, Object> map) throws Exception {
		return MyPageDAO.wishListForm(map);
	}
}
