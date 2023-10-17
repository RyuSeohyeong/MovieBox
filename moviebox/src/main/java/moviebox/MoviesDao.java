package moviebox;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;




public class MoviesDao {
	static List<Movie> movielist = new ArrayList();
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	private String title;
	
	public MoviesDao() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/servletex");			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public List<Movie> listMovies(){
		List<Movie> movieList = new ArrayList();
		try {
			conn = dataFactory.getConnection();
			String query = "select * from movie";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String title = rs.getString("title");
				String genre = rs.getString("genre");
				
				Movie movie = new Movie(id, title, genre);
				movieList.add(movie);
				System.out.println(movieList);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return movieList;
	}
	
	
	
	
	
	

	public  List printAllMovies() {
		try {
			conn = dataFactory.getConnection();
			String sql = "SELECT id, title, genre FROM movie ORDER BY id DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					Movie movie = new Movie();
					movie.setId(rs.getString("id"));
					movie.setTitle(rs.getString("title"));
					movie.setGenre(rs.getString("genre"));
					movielist.add(movie);
				}
				rs.close();
				pstmt.close();
				conn.close();
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return movielist;
		
	}
	
	public  Movie findByMovieId(String id) {
		Movie movie = new Movie();
		try {
			conn = dataFactory.getConnection();
			String sql = "SELECT id, title, genre FROM movie WHERE id=? ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
				if(rs.next()) {
					movie.setId(rs.getString("id"));
					movie.setTitle(rs.getString("title"));
					movie.setGenre(rs.getString("genre"));
				}
				conn.close();
				rs.close();
			pstmt.close();
			
			
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return movie;
	}
	
	public Movie delete(String _movie) {
		Movie movie = new Movie();
		try {
			conn = dataFactory.getConnection();
			String sql = "DELETE FROM movie WHERE id=? ";
			System.out.println(sql);
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, _movie);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return movie;
	}
	
	

		public void  add(Movie m) {
			try {
				Movie movie = new Movie();
		
				conn = dataFactory.getConnection();
				String id = m.getId();	
				String title = m.getTitle();	
				String genre = m.getGenre();		
				String query = "INSERT INTO movie(id, title, genre)" + "VALUES(?, ?, ?)";
				System.out.println(query);
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, id);
				pstmt.setString(2, title);
				pstmt.setString(3, genre);
				pstmt.executeUpdate();
				pstmt.close();
			    conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
}
			
		
		


	
