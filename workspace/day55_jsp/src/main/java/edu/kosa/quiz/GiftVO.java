package edu.kosa.quiz;

public class GiftVO {
	private String gname;
	private int gno;
	private int g_start;
	private int g_end;

public GiftVO() {	
	this.gname = "비쵸비";
	this.gno=1;
	this.g_start=5000;
	this.g_end=10000;
	}

public String getGname() {
	return gname;
}

public void setGname(String gname) {
	this.gname = gname;
}

public int getGno() {
	return gno;
}

public void setGno(int gno) {
	this.gno = gno;
}

public int getG_start() {
	return g_start;
}

public void setG_start(int g_start) {
	this.g_start = g_start;
}

public int getG_end() {
	return g_end;
}

public void setG_end(int g_end) {
	this.g_end = g_end;
}

@Override
public String toString() {
	return "GiftVO [gname=" + gname + ", gno=" + gno + ", g_start=" + g_start + ", g_end=" + g_end + "]";
}


}