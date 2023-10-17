package moviebox;

public class Reservation {

	 private String resid; //예매발급번호
	 private String seat; //고객 좌석명
	 private String moviename; //영화명
	 private String movieid; //영화 아이디
	
	 
	 public Reservation() {
		
	 }

	 
	 public Reservation(String resid, String seat, String moviename, String movieid) {
		 super();
		 this.resid = resid;
		 this.seat = seat;
		 this.moviename = moviename;
		 this.movieid = movieid;
	 }

	public String getResid() {
		return resid;
	}

	public void setResid(String resid) {
		this.resid = resid;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getMoviename() {
		return moviename;
	}

	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}

	public String getMovieid() {
		return movieid;
	}

	public void setMovieid(String movieid) {
		this.movieid = movieid;
	}
	
	@Override
	public String toString() {
		return "Reservation [resid=" + resid + ", seat=" + seat + ", moviename=" + moviename + ", movieid=" + movieid + "]";
	}
	 
}
