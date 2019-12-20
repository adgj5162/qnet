package qnet.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import qnet.member.MemberBean;

public class MemberDAO {
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	private Connection getCon() throws Exception{
		
		// Context 객체
		Context init = new InitialContext();
		// 디비 연동 정보를 불러오기
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysqlDB");
		// 디비 연결
		con = ds.getConnection();
		
		System.out.println("디비 연결 성공!");
		return con;
		
	}

public void closeDB(){
	try{
		if(rs != null){
			rs.close();
		}
		if(pstmt != null){
			rs.close();
		}
		if(con != null){
			rs.close();
		}
		
	}catch (Exception e){
		e.printStackTrace();
	}
}

///////////////////////////////////
//insertMember(mb);
public void insertMember(MemberBean mb){
	
	try {
		// 디비 연결
		con = getCon();
		
		// 3단계 sql, 정보 입력
		sql = "insert into qmember(id,pass,passck,name,ju1,ju2,gender,nation,phone,reg_date)"
				+ "values(?,?,?,?,?,?,?,?,?,?)";
		
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, mb.getId());
		pstmt.setString(2, mb.getPass());
		pstmt.setString(3, mb.getPassck());
		pstmt.setString(4, mb.getName());
		pstmt.setInt(5, mb.getJu1());
		pstmt.setInt(6, mb.getJu2());
		pstmt.setString(7, mb.getGender());
		pstmt.setString(8, mb.getNation());
		pstmt.setString(9, mb.getPhone());
		pstmt.setTimestamp(10, mb.getReg_date());
		
		pstmt.executeUpdate();
		System.out.println("회원가입완료!!");
		
	} catch (Exception e) {
		e.printStackTrace();
	}finally{
		closeDB();
	}

}

//JoinIdCheck(id);
public int JoinIdCheck(String id){
	int check = 0;
	
	try {
		con = getCon();
		
		sql = "select * from qmember where id=?";
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			// rs값이 존재하므로 아이디가 존재함
			check = 1;
		}else{
			// 아이디 사용가능
			check = 0;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}finally{
		closeDB();
	}
	
	return check;
}
//JoinIdCheck(id);

//idCheck(id,pass);
public int idCheck(String id,String pass){
	int check = -1;
	
	try {
		con = getCon();
		
		sql = "select * from qmember where id=?";
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			if(pass.equals(rs.getString("pass"))){
				// 아이디와 일치
				check = 1;
			}else{
				// 비밀번호 불일치
				check = 0;
			}
			
		}else{	//회원이 아니다.
			check = -1;
		}
		
	
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		closeDB();
	}
	
	return check;
}

//idCheck(id,pass);



































































}
