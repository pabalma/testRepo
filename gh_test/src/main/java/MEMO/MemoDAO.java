package MEMO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import COMMON.DB;
import oracle.jdbc.OracleTypes;

public class MemoDAO {
	public List<MemoDTO> list_memo() {
		List<MemoDTO> items = new ArrayList<>();
		Connection conn = null;
		CallableStatement cstmt = null;
		ResultSet rs = null;
		try {
			conn = DB.dbConn();
			String sql = "{call memo_list_p(?)}";
			cstmt = conn.prepareCall(sql);
			cstmt.registerOutParameter(1, OracleTypes.CURSOR); //출력 매개변수이며 Cursor자료형임을 지정.
			cstmt.execute();
			rs = (ResultSet)cstmt.getObject(1); //첫번째 출력매개변수를(cursor) Resultset으로 변환
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String writer = rs.getString("writer");
				if (writer.indexOf("<script") != -1 || writer.indexOf("<xmp>") != -1) {
					writer = writer.replace("<", "&lt;");
					writer = writer.replace(">", "&gt;");
				}
				
				String memo = rs.getString("memo");
				if (memo.indexOf("<script") != -1 || memo.indexOf("<xmp>") != -1) {
					memo = memo.replace("<", "&lt;");
					memo = memo.replace(">", "&gt;");
				}
				Date post_date = rs.getDate("post_date");
				String ip = rs.getString("ip");
				MemoDTO dto = new MemoDTO(idx,writer,memo,post_date,ip);
				items.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				cstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return items;
	}
	
	public void insert_memo(MemoDTO dto) {
		Connection conn = null;
		CallableStatement cstmt = null;
		try {
			conn = DB.dbConn();
			String sql = "{call memo_insert_p(?,?,?)}";
			cstmt = conn.prepareCall(sql);
			cstmt.setString(1,  dto.getWriter());
			cstmt.setString(2,  dto.getMemo());
			cstmt.setString(3,  dto.getIp());
			cstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				cstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
