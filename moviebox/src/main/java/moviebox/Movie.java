package moviebox;

import java.util.List;

public class Movie {
	
	private String id; //영화 등록번호
	private String title; //영화 제목
	private String genre; //영화 장르
	
	
	public Movie(String title, String genre) {
		this.title = title;
		this.genre = genre;
	}
	
	public Movie(String id) {
		this.id = id;
		}
	
	
	public Movie() {
		
	}
	
	public Movie(String id, String title, String genre) {
		this.id = id;
		this.title = title;
		this.genre = genre;
	}
	public  String getId() {
		return id;
	}
	
	
	public void setId(String id) {
		this.id = id;
	}
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}

	@Override
	public String toString() {
		return "Movie [영화발급번호 = " + id + ", 영화제목 = " + title + ", 장르 = " + genre + "]";
	}

	public void add(Movie movie) {
		// TODO Auto-generated method stub
		
	}




	

}
