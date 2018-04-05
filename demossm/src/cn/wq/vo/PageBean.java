package cn.wq.vo;

import java.util.List;

/*
 * 封装实现分页的数据
 */
public class PageBean<E> {
	private int pc;//当前页数page code
	private int tr;//总记录数total record
	private int number;
	private int ps;//每页的记录数 page size
	private List<E> beanList;
	
	public int setNumber() {
		int tp=tr/ps;
		number=(tr%ps==0? tp : tp+1);
		return number;
	}
	public int getNumber(){
		return number;
	}
	public int getPc() {
		return pc;
	}
	public void setPc(int pc) {
		this.pc = (pc-1)*ps;
	}
	public int getTr() {
		return tr;
	}
	public void setTr(int tr) {
		this.tr = tr;
	}
	public int getPs() {
		return ps;
	}
	public void setPs(int ps) {
		this.ps = ps;
	}
	public List<E> getBeanList() {
		return beanList;
	}
	public void setBeanList(List<E> beanList) {
		this.beanList = beanList;
	}
	
}
