package STUDENT;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import COMMON.DB;

public class StudentDAO {
	List<StudentDTO> student_list() {
		List<StudentDTO> items = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DB.dbConn();
			String sql = "select studno,sname,grade,mname from stud s, major m ";
			sql += 		 "    where s.majorno = m.majorno ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int studno = rs.getInt("studno");
				String sname = rs.getString("sname");
				int grade = rs.getInt("grade");
				String mname = rs.getString("mname");
	
				StudentDTO dto = new StudentDTO();
				dto.setStudno(studno);
				dto.setSname(sname);
				dto.setGrade(grade);
				dto.setMname(mname);
				items.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
			try {
				if(pstmt != null) pstmt.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return items;
	}
}
