package COMMON;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DB {
	public static Connection dbConn() {
		DataSource ds = null;
		Connection conn = null;
		try {
			Context ctx = new InitialContext();  //context.xml 파일을 분석하는 객체
			
			// oraDB : context내 Resource name= 과 일치해야함
			// myDB : context내 Resource name= 과 일치해야함
			ds = (DataSource)ctx.lookup("java:comp/env/oraDB"); //oracle용
			//ds = (DataSource)ctx.lookup("java:comp/env/myDB"); //mysql용
			
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
