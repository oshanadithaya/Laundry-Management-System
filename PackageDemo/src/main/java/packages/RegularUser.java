package packages;

public class RegularUser {
	
	private int id;
	private String mOrder;
	private String mWeight;
	private String w;
	private String wd;
	private String wdp;
	private String m;
	private String ods;
	private String pad;
	private String uname;
	private String pword;
	
	/**
	 * @param mOrder
	 * @param mWeight
	 * @param w
	 * @param wd
	 * @param wdp
	 * @param m
	 * @param ods
	 * @param pad
	 * @param uname
	 * @param pword
	 */
	
	public RegularUser(int id, String mOrder, String mWeight, String w, String wd, String wdp, String m, String ods, String pad,
			String uname, String pword) {
		
		this.id = id;
		this.mOrder = mOrder;
		this.mWeight = mWeight;
		this.w = w;
		this.wd = wd;
		this.wdp = wdp;
		this.m = m;
		this.ods = ods;
		this.pad = pad;
		this.uname = uname;
		this.pword = pword;
	}

	public int getid() {
		return id;
	}
	
	public String getmOrder() {
		return mOrder;
	}

	public String getmWeight() {
		return mWeight;
	}

	public String getW() {
		return w;
	}

	public String getWd() {
		return wd;
	}

	public String getWdp() {
		return wdp;
	}

	public String getM() {
		return m;
	}

	public String getOds() {
		return ods;
	}

	public String getPad() {
		return pad;
	}

	public String getUname() {
		return uname;
	}

	public String getPword() {
		return pword;
	}
	
	public void setid(int id) {
		this.id = id;
	}

	public void setmOrder(String mOrder) {
		this.mOrder = mOrder;
	}

	public void setmWeight(String mWeight) {
		this.mWeight = mWeight;
	}

	public void setW(String w) {
		this.w = w;
	}

	public void setWd(String wd) {
		this.wd = wd;
	}

	public void setWdp(String wdp) {
		this.wdp = wdp;
	}

	public void setM(String m) {
		this.m = m;
	}

	public void setOds(String ods) {
		this.ods = ods;
	}

	public void setPad(String pad) {
		this.pad = pad;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public void setPword(String pword) {
		this.pword = pword;
	}
	
}
