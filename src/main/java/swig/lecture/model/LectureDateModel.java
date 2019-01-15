package swig.lecture.model;

import java.util.Date;

public class LectureDateModel {
	private int ld_no;
	private int ll_no;
	private Date ld_date;
	
	public int getLd_no() {
		return ld_no;
	}
	public void setLd_no(int ld_no) {
		this.ld_no = ld_no;
	}
	public int getLl_no() {
		return ll_no;
	}
	public void setLl_no(int ll_no) {
		this.ll_no = ll_no;
	}
	public Date getLd_date() {
		return ld_date;
	}
	public void setLd_date(Date ld_date) {
		this.ld_date = ld_date;
	}
}
