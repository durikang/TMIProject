package moneyManage.dao;

import static common.JDBCTemplate.*;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Properties;

import moneyManage.model.paydate;

public class Moneydao {
	private Properties prop = new Properties();

	public Moneydao() {
		String fileName = Moneydao.class.getResource("/sql/money/moneyman-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<paydate> paycategory(Connection conn) {
		ArrayList<paydate> array = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Calendar first = Calendar.getInstance();  
		first.add(Calendar.MONTH, -3);
		Calendar second = Calendar.getInstance();  
		second.add(Calendar.MONTH, -6);
		Calendar third = Calendar.getInstance();  
		third.add(Calendar.MONTH, -9);
		Calendar four = Calendar.getInstance();
		four.add(Calendar.MONTH, -12);
		
		String sql = prop.getProperty("payDatecate");
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			array = new ArrayList<paydate>();
			while (rset.next()) {
				if (rset.getString(5).equals("N")) {
					Calendar pd = Calendar.getInstance();
					pd.setTime(rset.getDate(4));
					int caldate = pd.compareTo(first);
					if(caldate>0) {
						array.add(new paydate(rset.getString(1),1, Integer.parseInt(rset.getString(3))));
					}else {
						caldate = pd.compareTo(second);
						if(caldate>0) {
							array.add(new paydate(rset.getString(1),2, Integer.parseInt(rset.getString(3))));
						}else {
							caldate = pd.compareTo(third);
							if(caldate>0) {
								array.add(new paydate(rset.getString(1),3, Integer.parseInt(rset.getString(3))));
								caldate = pd.compareTo(four);
							}else if(caldate>0) {
								array.add(new paydate(rset.getString(1), 4, Integer.parseInt(rset.getString(3))));
							}
						}
					}
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return array;
	}

}
