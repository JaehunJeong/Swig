package swig.paging;

public class Paging {

	private int currentPage;//현재페이지
	private int totalCount; //전체 게시물 수
	private int totalPage;//전체 페이지수
	private int blockCount; //한페이지의 게시물 수
	private int blockPage; //한 화면에 보여줄 페이지수 
	private int startCount; //한 페이지에서 보여줄 게시글의 시작번호
	private int endCount; //한페이지에서 보여줄 게시글의 끝 번호
	private int startPage;//시작 페이지
	private int endPage;//마지막 페이지
	private String categoryName;
	
	private StringBuffer pagingHtml;
	
	//페이징 생성자
	public Paging(int currentPage, int totalCount, int blockCount, int blockPage, String categoryName) {
		
		this.blockCount=blockCount;
		this.blockPage = blockPage;
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.categoryName = categoryName;
		//전체 페이지 수
		totalPage = (int) Math.ceil((double) totalCount / blockCount);
		if(totalPage ==0) {
			totalPage = 1;
		}
		//현재 페이지가 전체 페이지 수보다 크면 전체 페이지 수로 설정
		
		if(currentPage > totalPage) {
			currentPage = totalPage;
		}
		//현재 페이지의 처음과 마지막 글의 번호 가져오기
		startCount = (currentPage -1) * blockCount;
		endCount =startCount +blockCount -1;
		
		//시작 페이지와 마지막 페이지 값 구하기.
		startPage = (int)((currentPage -1)/blockPage) * blockPage +1;
		endPage = startPage +blockPage -1;
		
	}
}
