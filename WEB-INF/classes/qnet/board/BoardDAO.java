package qnet.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	private Connection getCon() throws Exception{
		
		Context init = new InitialContext();
		// 2단계 디비 연동 정보를 불러오기
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysqlDB");
		// 디비 연결
		con = ds.getConnection();
		
		System.out.println("디비 연결 성공!!");
		return con;
	}
	
	public void closeDB(){
		try{
			if(rs != null){
				rs.close();
			}
			if(pstmt != null){
				pstmt.close();
			}
			if(con != null){
				con.close();
			}
			
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	
	//insertBoard(bb);
	public void insertBoard(BoardBean bb){
		int num = 0;
		
		try {
			con = getCon();
			// 1. 글 번호 계산
			sql = "select max(num) from qboard";
			
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				num = rs.getInt(1) + 1;
			}
			
			sql = "insert into "
					+ "qboard(num,name,subject,content,"
					+ "readcount, re_ref,re_lev,re_seq,"
					+ "date,ip)"
					+ "values(?,?,?,?,?,?,?,?,now(),?)";
			
			pstmt.executeUpdate();
			
			System.out.println("글쓰기 완료!");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeDB();
		}
	}
	//insertBoard(bb);
	
	//getBoardCount();
	public int getBoardCount(){
		int count = 0;
		
		try {
			getCon();
			
			sql = "select count(*) from board";
			
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				count = rs.getInt(1);
			}
					
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeDB();
		}
		return 0;
	}
	//getBoardCount();
	
	//getBoardList(startRow,pageSize);
	public List getBoardList(int startRow, int pageSize){
		List boardList = new ArrayList();
		
		try {
			con = getCon();
			
			sql = "select * from qboard "
					+ "order by re_ref desc,re_seq asc "
					+ "limit ?,?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, startRow-1);
			pstmt.setInt(2, pageSize);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				BoardBean bb = new BoardBean();
				
				bb.setNum(rs.getInt("num"));
				bb.setName(rs.getString("name"));
				bb.setSubject(rs.getString("subject"));
				bb.setContent(rs.getString("content"));
				bb.setReadcount(rs.getInt("readcount"));
				bb.setRe_ref(rs.getInt("re_ref"));
				bb.setRe_lev(rs.getInt("re_lev"));
				bb.setRe_seq(rs.getInt("re_seq"));
				bb.setDate(rs.getDate("date"));
				bb.setIp(rs.getString("ip"));
				
				boardList.add(bb);
			}
			System.out.println("게시판 글 목록 전달 완료");
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeDB();
		}
		
		return boardList;
	}
	//getBoardList(startRow,pageSize);
	
	//
	
	
	
	
	
	
	
	
	
	
	
}
