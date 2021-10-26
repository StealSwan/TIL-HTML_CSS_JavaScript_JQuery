package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.MemberDto;
import mysql.db.DbConnect;

public class MemberDao {

	
	DbConnect db= new DbConnect();
	
	
	//���̵�üũ_boolean(String id)
	public boolean isIdCheck(String id) {
		
		boolean isid= false;
		
		Connection conn= db.getConnection();
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		
		String sql= "select * from member2 where id=?";
		
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//���ε�
			pstmt.setString(1, id);
			
			//����
			rs=pstmt.executeQuery();
			
			if(rs.next()) {	//�ش� id�� �����Ұ�� true
				isid=true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			db.dbClose(rs, pstmt, conn);
		}
		
		return isid;
	}
	
	
	
	//���̵� ���� name(String id)
	public String getName(String id) {
		
		String name = "";
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from member2 where id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			//���ε�
			pstmt.setString(1, id);
			
			//����
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				name= rs.getString("name");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return name;
		
	}
	
	//insert
	public void insertMember(MemberDto dto) {
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into member2 (name, id, pass, hp, addr, email, gaipday) values (?,?,?,?,?,?,now())";
		
		try {
			pstmt= conn.prepareStatement(sql);
			
			//���ε�
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getId());
			pstmt.setString(3, dto.getPass());
			pstmt.setString(4, dto.getHp());
			pstmt.setString(5, dto.getAddr());
			pstmt.setString(6, dto.getEmail());

			//����
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	
	//��ü��� - select : DTO�� ��� List �ٷ��̸� ��ȯ - �̰ɷ� action���� ����Ұ�
	public List<MemberDto> getAllMembers(){
		
		List<MemberDto> list = new Vector<MemberDto>();
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from member2 order by num desc";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			
			//������ �о List�� DTO�� ����ֱ�
			while(rs.next()) {
				
				MemberDto dto = new MemberDto();
				
				//�� ���� dto�� �°� rs���� �о�� ���� �־��ֱ�
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setHp(rs.getString("hp"));
				dto.setAddr(rs.getString("addr"));
				dto.setEmail(rs.getString("email"));
				dto.setGaipday(rs.getTimestamp("gaipday"));

				//����Ʈ�� ����ֱ�
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
		
	}
	
	
	//��й�ȣ üũ
	public boolean isPassEqual(String num, String pass) {
		
		boolean b = false;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from member2 where num=? and pass=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//���ε�
			pstmt.setString(1, num);
			pstmt.setString(2, pass);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				b=true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			db.dbClose(rs, pstmt, conn);
		}
		
		
		return b;
	}
	
	
	//����
	public void deleteMember(String num) {
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "delete from member2 where num=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			//���ε�
			pstmt.setString(1, num);
			
			//����
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	
	//num�� �ش��ϴ� ȸ�� dto��ȯ
	public MemberDto getMember(String num) {
		MemberDto dto = new MemberDto();
		
		Connection conn= db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from member2 where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {

				//�� ���� dto�� �°� rs���� �о�� ���� �־��ֱ�
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setHp(rs.getString("hp"));
				dto.setAddr(rs.getString("addr"));
				dto.setEmail(rs.getString("email"));
				dto.setGaipday(rs.getTimestamp("gaipday"));

			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return dto;
	}
	
	
	//update
	public void updateMember(MemberDto dto) {

		Connection conn= db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql= "update member2 set name=?, hp=?, addr=?, email=? where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//���ε�
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getHp());
			pstmt.setString(3, dto.getAddr());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getNum());
			
			//����
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
}
