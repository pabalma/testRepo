package EMP;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import COMMON.DB;

public class EmpDAO {
	public void insert() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DB.dbConn();
			conn.setAutoCommit(false);
			long before = System.currentTimeMillis();
			
			String sql = "insert into emp2(empno,ename,deptno) values(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			for(int i=1;i<=100000;i++) {
				//pstmt = conn.prepareStatement(sql);  //위로 올려서 close()와 함께 1번만 사용해도 무방.
				pstmt.setInt(1, i);
				pstmt.setString(2, "kim"+i);
				pstmt.setInt(3, i);
				pstmt.executeUpdate();
				//pstmt.close();  // 100000번 open할때마다 close안해주면 maximum open cursors exceeded Error발생. 
			}
			long after = System.currentTimeMillis();
			conn.commit();
			conn.setAutoCommit(true);
			System.out.println("실행시간1: "+(after-before));
		} catch (Exception e) {
			e.printStackTrace();
			try {
				if(conn != null) conn.rollback();
				System.out.println("1 처리가 롤백되었습니다.");
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} finally {
			try {
				if(pstmt != null) pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void insert_batch() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DB.dbConn();
			conn.setAutoCommit(false);
			String sql = "insert into emp2(empno,ename,deptno) values(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			long before = System.currentTimeMillis();
			for(int i=100001;i<=200000;i++) {
				pstmt.setInt(1, i);
				pstmt.setString(2, "kim"+i);
				pstmt.setInt(3, i);
				pstmt.addBatch();
			}
			pstmt.executeBatch();
			conn.commit();
			conn.setAutoCommit(true);
			long after = System.currentTimeMillis();
			System.out.println("실행시간2: "+ (after-before));
		} catch (Exception e) {
			e.printStackTrace();
			try {
				if(conn != null) conn.rollback();
				System.out.println("2 처리가 롤백되었습니다.");
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} finally {
			try {
				if(pstmt != null) pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
