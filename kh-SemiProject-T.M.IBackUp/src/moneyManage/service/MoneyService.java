package moneyManage.service;

import static common.JDBCTemplate.*;
import java.sql.Connection;
import java.util.ArrayList;
import moneyManage.dao.Moneydao;
import moneyManage.model.paydate;

public class MoneyService {

	
	public ArrayList<paydate> paycategory() {
		Connection conn = getConnection();
		Moneydao mdo = new Moneydao();
		ArrayList<paydate> payment = mdo.paycategory(conn);
		close(conn);
		return payment;
	}

}
