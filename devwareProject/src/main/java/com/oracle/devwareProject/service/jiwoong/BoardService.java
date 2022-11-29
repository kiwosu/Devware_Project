package com.oracle.devwareProject.service.jiwoong;


import java.util.List;
import java.util.Map;

import com.oracle.devwareProject.model.jiwoong.Board;


public interface BoardService {

	int writeBoard(Board board);



	List<Board> listTypeBoard(Board board);



	int totalTypeBoard(int brd_type);



	Board detailBoard(Map<String, Object> map);



	

}
