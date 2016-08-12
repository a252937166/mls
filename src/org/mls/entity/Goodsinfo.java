package org.mls.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Goodsinfo entity. @author MyEclipse Persistence Tools
 */

public class Goodsinfo implements java.io.Serializable {

	// Fields

	private Integer gdid;
	private String gdname;
	private Integer tpid;
	private Integer ctid;
	private Integer ccid;
	private Integer mtid;
	private Integer ceid;
	private Integer clhid;
	private Integer ccloseid;
	private Integer csid;
	private Integer cssid;
	private Integer cshid;
	private Integer csbid;
	private Integer cskid;
	private Integer ctsid;
	private Integer cthid;
	private Integer soleid;
	private Integer ptid;
	private Integer packagehardness;
	private Integer packageinner;
	private Integer pgstid;
	private Integer stid;
	private Integer tagid;
	private String gtkeywords;
	private Integer gsid;
	private Timestamp gtdate;
	private Set goodspricehistories = new HashSet(0);
	private Set goodsprices = new HashSet(0);
	private Set goodscollections = new HashSet(0);
	private Set goodscomments = new HashSet(0);
	private Set goodsimages = new HashSet(0);

	// Constructors

	/** default constructor */
	public Goodsinfo() {
	}

	/** minimal constructor */
	public Goodsinfo(String gdname) {
		this.gdname = gdname;
	}

	/** full constructor */
	public Goodsinfo(String gdname, Integer tpid, Integer ctid, Integer ccid,
			Integer mtid, Integer ceid, Integer clhid, Integer ccloseid,
			Integer csid, Integer cssid, Integer cshid, Integer csbid,
			Integer cskid, Integer ctsid, Integer cthid, Integer soleid,
			Integer ptid, Integer packagehardness, Integer packageinner,
			Integer pgstid, Integer stid, Integer tagid, String gtkeywords,
			Integer gsid, Timestamp gtdate, Set goodspricehistories,
			Set goodsprices, Set goodscollections, Set goodscomments,
			Set goodsimages) {
		this.gdname = gdname;
		this.tpid = tpid;
		this.ctid = ctid;
		this.ccid = ccid;
		this.mtid = mtid;
		this.ceid = ceid;
		this.clhid = clhid;
		this.ccloseid = ccloseid;
		this.csid = csid;
		this.cssid = cssid;
		this.cshid = cshid;
		this.csbid = csbid;
		this.cskid = cskid;
		this.ctsid = ctsid;
		this.cthid = cthid;
		this.soleid = soleid;
		this.ptid = ptid;
		this.packagehardness = packagehardness;
		this.packageinner = packageinner;
		this.pgstid = pgstid;
		this.stid = stid;
		this.tagid = tagid;
		this.gtkeywords = gtkeywords;
		this.gsid = gsid;
		this.gtdate = gtdate;
		this.goodspricehistories = goodspricehistories;
		this.goodsprices = goodsprices;
		this.goodscollections = goodscollections;
		this.goodscomments = goodscomments;
		this.goodsimages = goodsimages;
	}

	// Property accessors

	public Integer getGdid() {
		return this.gdid;
	}

	public void setGdid(Integer gdid) {
		this.gdid = gdid;
	}

	public String getGdname() {
		return this.gdname;
	}

	public void setGdname(String gdname) {
		this.gdname = gdname;
	}

	public Integer getTpid() {
		return this.tpid;
	}

	public void setTpid(Integer tpid) {
		this.tpid = tpid;
	}

	public Integer getCtid() {
		return this.ctid;
	}

	public void setCtid(Integer ctid) {
		this.ctid = ctid;
	}

	public Integer getCcid() {
		return this.ccid;
	}

	public void setCcid(Integer ccid) {
		this.ccid = ccid;
	}

	public Integer getMtid() {
		return this.mtid;
	}

	public void setMtid(Integer mtid) {
		this.mtid = mtid;
	}

	public Integer getCeid() {
		return this.ceid;
	}

	public void setCeid(Integer ceid) {
		this.ceid = ceid;
	}

	public Integer getClhid() {
		return this.clhid;
	}

	public void setClhid(Integer clhid) {
		this.clhid = clhid;
	}

	public Integer getCcloseid() {
		return this.ccloseid;
	}

	public void setCcloseid(Integer ccloseid) {
		this.ccloseid = ccloseid;
	}

	public Integer getCsid() {
		return this.csid;
	}

	public void setCsid(Integer csid) {
		this.csid = csid;
	}

	public Integer getCssid() {
		return this.cssid;
	}

	public void setCssid(Integer cssid) {
		this.cssid = cssid;
	}

	public Integer getCshid() {
		return this.cshid;
	}

	public void setCshid(Integer cshid) {
		this.cshid = cshid;
	}

	public Integer getCsbid() {
		return this.csbid;
	}

	public void setCsbid(Integer csbid) {
		this.csbid = csbid;
	}

	public Integer getCskid() {
		return this.cskid;
	}

	public void setCskid(Integer cskid) {
		this.cskid = cskid;
	}

	public Integer getCtsid() {
		return this.ctsid;
	}

	public void setCtsid(Integer ctsid) {
		this.ctsid = ctsid;
	}

	public Integer getCthid() {
		return this.cthid;
	}

	public void setCthid(Integer cthid) {
		this.cthid = cthid;
	}

	public Integer getSoleid() {
		return this.soleid;
	}

	public void setSoleid(Integer soleid) {
		this.soleid = soleid;
	}

	public Integer getPtid() {
		return this.ptid;
	}

	public void setPtid(Integer ptid) {
		this.ptid = ptid;
	}

	public Integer getPackagehardness() {
		return this.packagehardness;
	}

	public void setPackagehardness(Integer packagehardness) {
		this.packagehardness = packagehardness;
	}

	public Integer getPackageinner() {
		return this.packageinner;
	}

	public void setPackageinner(Integer packageinner) {
		this.packageinner = packageinner;
	}

	public Integer getPgstid() {
		return this.pgstid;
	}

	public void setPgstid(Integer pgstid) {
		this.pgstid = pgstid;
	}

	public Integer getStid() {
		return this.stid;
	}

	public void setStid(Integer stid) {
		this.stid = stid;
	}

	public Integer getTagid() {
		return this.tagid;
	}

	public void setTagid(Integer tagid) {
		this.tagid = tagid;
	}

	public String getGtkeywords() {
		return this.gtkeywords;
	}

	public void setGtkeywords(String gtkeywords) {
		this.gtkeywords = gtkeywords;
	}

	public Integer getGsid() {
		return this.gsid;
	}

	public void setGsid(Integer gsid) {
		this.gsid = gsid;
	}

	public Timestamp getGtdate() {
		return this.gtdate;
	}

	public void setGtdate(Timestamp gtdate) {
		this.gtdate = gtdate;
	}

	public Set getGoodspricehistories() {
		return this.goodspricehistories;
	}

	public void setGoodspricehistories(Set goodspricehistories) {
		this.goodspricehistories = goodspricehistories;
	}

	public Set getGoodsprices() {
		return this.goodsprices;
	}

	public void setGoodsprices(Set goodsprices) {
		this.goodsprices = goodsprices;
	}

	public Set getGoodscollections() {
		return this.goodscollections;
	}

	public void setGoodscollections(Set goodscollections) {
		this.goodscollections = goodscollections;
	}

	public Set getGoodscomments() {
		return this.goodscomments;
	}

	public void setGoodscomments(Set goodscomments) {
		this.goodscomments = goodscomments;
	}

	public Set getGoodsimages() {
		return this.goodsimages;
	}

	public void setGoodsimages(Set goodsimages) {
		this.goodsimages = goodsimages;
	}

}