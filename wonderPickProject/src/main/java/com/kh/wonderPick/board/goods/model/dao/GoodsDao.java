package com.kh.wonderPick.board.goods.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.wonderPick.board.boardCommon.model.vo.Board;
import com.kh.wonderPick.board.boardCommon.model.vo.BoardImage;
import com.kh.wonderPick.board.boardCommon.model.vo.Heart;
import com.kh.wonderPick.board.boardCommon.model.vo.Re_Reply;
import com.kh.wonderPick.board.boardCommon.model.vo.Reply;
import com.kh.wonderPick.board.goods.model.vo.Goods;
import com.kh.wonderPick.board.review.model.vo.Review;
import com.kh.wonderPick.common.model.vo.PageInfo;

@Repository
public class GoodsDao {
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("goodsMapper.selectListCount");
	}
	
	// 굿즈리스트 전체 페이지
	public ArrayList<Goods> selectGoodsList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("goodsMapper.selectGoodsList", null , rowBounds);
	}
	
	public int selectCategoryListCount(SqlSessionTemplate sqlSession, String goodsCategory) {
		return sqlSession.selectOne("goodsMapper.selectCategoryListCount", goodsCategory);
	}
	
	// 카테고리별 굿즈리스트 페이지
	public ArrayList<Goods> selectCategoryList(SqlSessionTemplate sqlSession, PageInfo pi, String goodsCategory){
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
	     
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("goodsMapper.selectCategoryList", goodsCategory , rowBounds);
	}
	
	// 검색결과 개수 조회
	public int searchGoodsCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("goodsMapper.searchGoodsCount");
	}

	// 검색결과 리스트 조회
	public ArrayList<Goods> searchGoods(SqlSessionTemplate sqlSession, PageInfo pi, String condition, String keyword){
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("goodsMapper.searchGoods",condition, keyword, rowBounds );
	}
	
	
	
	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("goodsMapper.insertBoard", b);
	}
	
	public int insertGoods(SqlSessionTemplate sqlSession, Goods g) {
		return sqlSession.insert("goodsMapper.insertGoods",g);
	}
	public int insertBoardImage(SqlSessionTemplate sqlSession, BoardImage bi) {
		return sqlSession.insert("goodsMapper.insertBoardImage", bi);
	}
	public int increaseCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("goodsMapper.increaseCount", boardNo);
	}
	public Goods selectGoods(SqlSessionTemplate sqlSession , int boardNo) {
		return sqlSession.selectOne("goodsMapper.selectGoods", boardNo);
	}
	
	/*
	public int selectReviewCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("goodsMapper.selectReviewCount", boardNo);
	}
	*/
	
	public ArrayList<Review> selectReviewList(SqlSessionTemplate sqlSession,  int boardNo){
		
		return (ArrayList)sqlSession.selectList("goodsMapper.selectReviewList", boardNo);
	}
	
	//댓글
	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, int boardNo){
		return (ArrayList)sqlSession.selectList("goodsMapper.selectReplyList", boardNo);
	}
	public int insertReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("goodsMapper.insertReply", r);
	}
	
	public int selectReplyListCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("goodsMapper.selectReplyListCount", boardNo);
		
	}
	
	//대댓글
	public ArrayList<Re_Reply> selectReReplyList(SqlSessionTemplate sqlSession, int replyNo){
		return (ArrayList)sqlSession.selectList("goodsMapper.selectReReplyLiST", replyNo);
	}
	public int insertReReply(SqlSessionTemplate sqlSession, Re_Reply re) {
		return sqlSession.insert("goodsMapper.insertReReply", re);
	}
	
	// 회원별 좋아요 조회
	public ArrayList<Heart> selectHeartList(SqlSessionTemplate sqlSession, int memberNo ){
		return (ArrayList)sqlSession.selectList("goodsMapper.selectHeartList", memberNo );
		
	}
}
