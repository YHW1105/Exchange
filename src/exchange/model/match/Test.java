package exchange.model.match;

import java.sql.SQLException;

import exchange.model.database.DataBaseAdmin;

public class Test {

	public static void main(String[] args) throws SQLException  {
		// TODO Auto-generated method stub


		// TODO Auto-generated method stub

		DataBaseAdmin.changeDBAccount("root","root");
		
		//////////////////////////
		BasicAlgorithm basicAlgorithm =new BasicAlgorithm("test102",92); //傳遞帳號與技能ID過去
		basicAlgorithm.creatMateSet();
		System.out.println(basicAlgorithm.match());
		System.out.println(basicAlgorithm.match());
		System.out.println(basicAlgorithm.match()); //回傳null代表沒資料了
	}

}
