package com.kh.wonderPick.board.artBoard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.kh.wonderPick.board.artBoard.model.dao.ArtBoardDao;
import com.kh.wonderPick.board.artBoard.model.vo.ArtBoard;
import com.kh.wonderPick.board.artBoard.model.vo.ArtBoardDTO;
import com.kh.wonderPick.board.artBoard.model.vo.Option;
import com.kh.wonderPick.board.boardCommon.model.vo.Board;
import com.kh.wonderPick.board.boardCommon.model.vo.BoardImage;
import com.kh.wonderPick.common.model.vo.PageInfo;

@Service
public class ArtBoardServiceImpl implements ArtBoardService {

	@Autowired
	private ArtBoardDao artDao;
	
	@Autowired 
	private SqlSessionTemplate sqlSession;
	
	
	
	
	@Override
	public int selectArtListCount(String category) {
		return artDao.selectArtListCount(sqlSession, category);
	}
	
	@Override
	public ArrayList<ArtBoardDTO> selectArtList(PageInfo pi, String category) {
		return artDao.selectArtList(sqlSession, pi, category);
	}


	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public int insertArtBoard(Board board, ArtBoard artBoard, ArrayList<Option> list, ArrayList<BoardImage> files) {
		int result = artDao.insertBoard(sqlSession, board);
		result *= artDao.insertArtBoard(sqlSession, artBoard);
		for(int i = 0; i < list.size(); i++) {
			result *= artDao.insertOptions(sqlSession, list.get(i));
			for(int j = 0; j < list.get(i).getDetailOption().size(); j++) {
				result *= artDao.insertDetailOption(sqlSession, list.get(i).getDetailOption().get(j));
			}
		}
		for(int k = 0; k < files.size(); k++) {
			result *= artDao.insertFiles(sqlSession, files.get(k));
		}
		return result;
	}


	@Override
	public ArtBoard selectArtBoard(int bno) {
		return artDao.selectArtBoard(sqlSession, bno);
	}

	@Override
	public ArrayList<Option> selectOptionList(int bno) {
		return artDao.selectOptionList(sqlSession, bno);
	}
	
	@Override
	public ArrayList<BoardImage> selectBoardImage(int bno) {
		return artDao.selectBoardImage(sqlSession, bno);
	}



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
