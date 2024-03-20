package mybatis.vo;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class MoviePaging {
	
	private int currentPage;       // 현재 페이지
	private int totalCount;        // 영화의 전체 갯수
	private int pageSize;          // 페이지마다 보여 줄 글의 갯수
	private int totalPage;         // 전체 페이지의 갯수
	private int startPage;         // 시작 페이지
	private int endPage;           // 마지막 페이지
	private int startNo;           // 화면에 보이는 글 목록의 시작 
	private int endNo;             // 화면에 보이는 글 목록의 마지막
	
	public MoviePaging(int currentPage, int totalCount, int pageSize) {
		this.totalCount = totalCount;
		this.pageSize = pageSize;

		totalPage = (int) Math.ceil((double) totalCount / pageSize);
		this.currentPage = Math.max(1, Math.min(currentPage, totalPage)); // 현재 페이지를 1 이상 totalPage 이하로 제한

		startNo = (this.currentPage - 1) * pageSize + 1;
		endNo = Math.min(startNo + (pageSize - 1), totalCount); // endNo가 totalCount를 초과하지 않도록 보정

		startPage = ((this.currentPage - 1) / 10) * 10 + 1;
		endPage = Math.min(startPage + 9, totalPage); // endPage가 totalPage를 초과하지 않도록 보정
	}
}
