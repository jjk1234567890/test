package org.jht.dao;

import java.util.ArrayList;

import org.jht.model.AttachFileDTO;
import org.jht.model.BoardDTO;
import org.jht.model.Criteria;

public interface BoardDao {
	// 게시판 글쓰기
	public void BoardWrite(BoardDTO bdto);
	// 게시판 목록리스트
	public ArrayList<BoardDTO> BoardList(Criteria cri);
	// 게시판 상세 내용+조회수 update
	public BoardDTO BoardDetail(int bno);
	public void BoardCntup(int bno);
	// 게시판 글수정
	public void BoardModify(BoardDTO bdto);
	// 게시판 글삭제
	public void BoardRemove(int bno);
	// 게시판 목록 리스트에서 페이징 처리를 하기 위해서 필요한 전체건수.
	public int getTotalCount(Criteria cri);
	// 상세 내용 화면에 첨부파일 목록 리스트 조회
	public ArrayList<AttachFileDTO> attachList(int bno);
}
