package exchange.model.account;

import java.sql.SQLException;
import java.util.Date;

import exchange.model.database.DataBaseAdmin;

public class Test {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub

		//Date recentLog = new Date();
		//java.sql.Date now = new java.sql.Date(recentLog.getTime());
		//System.out.println(now);
		DataBaseAdmin db = new DataBaseAdmin();
		db.changeDBAccount("root", "narutoap12");
		AccountManager am = new AccountManager();
		
		//getAccount method success
		//System.out.println(am.getAccount("10567026"));
		//System.out.println(am.getAccount("1234567"));
		//System.out.println(am.getAccount("jec88899"));
		
		//測試失敗
		//am.addAccount("jec888899", "10567029", "Stanely", "Champion", 1, "@yahoo.com", "1994-07-27", "新北");

		//System.out.println();
	    
		//setProfile(id, profile) success 
		//Profile profile = new Profile("nick2", "email1515", "region882");
		//am.setProfile("10567026", profile);
		
		//setSecret(secret) success
		//Secret secret = new Secret("10567026", "kc567894");
		//am.setSecret(secret);
		
		//getAllUserId() success
		//System.out.println(am.getAllUserId());
		
		//isSkillFull(id) success
		//System.out.println(am.isSkillFull("1234567"));
		
		//getregion(id) success
		//System.out.println(am.getRegion("1234567"));
	}

}
