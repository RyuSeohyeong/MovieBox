package moviebox;

import java.util.ArrayList;
import java.util.List;

public class MoiveService {
	static MoviesDao moviesDAO;
	static ReservationDao reservationDAO;
	
	public MoiveService() {
		moviesDAO = new MoviesDao();
		reservationDAO = new ReservationDao();
	}
	
	public List<Movie> listMovies(){
		List<Movie> movieList = moviesDAO.listMovies();
		return movieList;
	}
	
	
	public static Movie findByMovieId(String id){
		Movie movieList = moviesDAO.findByMovieId(id);
		return movieList;
	}
	
	/*
	 * public static Movie add(Movie m) { Movie movieList = (Movie)
	 * moviesDAO.add(m); return movieList; }
	 */
	public static Movie delete(String _movie) {
		Movie movieList = (Movie) moviesDAO.delete(_movie);
		return movieList;
	}
	
	
	/*
	 * public static Reservation save(String seat) { Reservation reservationList =
	 * (Reservation) reservationDAO.save(seat); return reservationList; }
	 */
	
	public static Reservation findByResId(String parseInt) {
		Reservation reservationList = (Reservation) reservationDAO.findByResId(parseInt);
		return reservationList;
		
	}
	
	public static Reservation cancel(String com) {
		Reservation reservationList = (Reservation) reservationDAO.cancel(com);
		return reservationList;
		
	}

	
	

	
	
	}
	

