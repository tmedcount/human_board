package com.human.app;

import java.util.ArrayList;

public interface iBBS {
	void writebbs(String sTitle, String sContent, String sWriter, String sPasscode);
	ArrayList<BBSrec> getList();
	BBSrec getPost(int bbs_id);
	void updatebbs(int nBbsId, String sTitle, String sContent);
	void deletebbs(int nBbsId);
}
