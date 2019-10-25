package movie.model.vo;

public class Movie {
	
	private int mCode;//영화코드
	private String mTitle;//영화 명
	private String poster;//영화포스터
	private String preview;//예고편(동영상)
	private String plot;//줄거리
	private int Category;//예정작,방영작  0 ->예정작, 1 ->방영작
	

	public Movie() {
		super();
	}


	public Movie(int mCode, String mTitle, String poster, String preview, String plot, int category) {
		super();
		this.mCode = mCode;
		this.mTitle = mTitle;
		this.poster = poster;
		this.preview = preview;
		this.plot = plot;
		this.Category = category;
	}


	public int getmCode() {
		return mCode;
	}


	public void setmCode(int mCode) {
		this.mCode = mCode;
	}


	public String getmTitle() {
		return mTitle;
	}


	public void setmTitle(String mTitle) {
		this.mTitle = mTitle;
	}


	public String getPoster() {
		return poster;
	}


	public void setPoster(String poster) {
		this.poster = poster;
	}


	public String getPreview() {
		return preview;
	}


	public void setPreview(String preview) {
		this.preview = preview;
	}


	public String getPlot() {
		return plot;
	}


	public void setPlot(String plot) {
		this.plot = plot;
	}


	public int getCategory() {
		return Category;
	}


	public void setCategory(int category) {
		Category = category;
	}


	@Override
	public String toString() {
		return "Movie [mCode=" + mCode + ", mTitle=" + mTitle + ", poster=" + poster + ", preview=" + preview
				+ ", plot=" + plot + ", Category=" + Category + "]";
	}
	
	
	
}
