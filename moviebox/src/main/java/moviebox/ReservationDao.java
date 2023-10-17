package moviebox;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ReservationDao {

		List<Reservation> reservationlist = new ArrayList();
		private Connection conn;
		private DataSource dataFactory;
		private PreparedStatement pstmt;
		
		public ReservationDao() {
			try {
				Context ctx = new InitialContext();
				Context envContext = (Context) ctx.lookup("java:/comp/env");
				dataFactory = (DataSource) envContext.lookup("jdbc/servletex");			
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		public List<Reservation> findById(String moviename){
			Reservation reservation = new Reservation();
			try {
				conn = dataFactory.getConnection();
				String sql = "SELECT resid, seat, moviename, movieid FROM reservation WHERE moviename=? ";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, moviename);
				ResultSet rs = pstmt.executeQuery();
					while(rs.next()) {
						reservation.setResid(rs.getString("resid"));
						reservation.setSeat(rs.getString("seat"));
						
						reservation.setMoviename(rs.getString("moviename"));
						reservation.setMovieid(rs.getString("movieid"));
						reservationlist.add(reservation);
					}
					
					rs.close();
					pstmt.close();
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
			return reservationlist;
		}
		public Reservation findByResId(String parseInt) {
			Reservation reservation = new Reservation();
			try {
				conn = dataFactory.getConnection();
				String sql = "SELECT resid, seat, moviename, movieid FROM reservation WHERE resid=?";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				System.out.println(sql);
				pstmt.setString(1, parseInt);
				ResultSet rs = pstmt.executeQuery();
					if(rs.next()) {
						reservation.setResid(rs.getString("resid"));
						reservation.setSeat(rs.getString("seat"));
						
						reservation.setMoviename(rs.getString("moviename"));
						reservation.setMovieid(rs.getString("movieid"));
					}
					
					rs.close();
					pstmt.close();
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
			return reservation;
		}
		
	
		public void  res(Reservation r) {
			try {
				Reservation reservation = new Reservation();
		
				conn = dataFactory.getConnection();
				String resid = r.getResid();	
				String seat = r.getSeat();	
				String moviename = r.getMoviename();
				String movieid = r.getMovieid();
				
				String query = "INSERT INTO reservation(resid, seat, moviename, movieid)" + "VALUES(?, ?, ?, ?)";
				System.out.println(query);
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, resid);
				pstmt.setString(2, seat);
				pstmt.setString(3, moviename);
				pstmt.setString(4, movieid);
				pstmt.executeUpdate();
				pstmt.close();
			    conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
				
		
			
		
		public Reservation cancel(String com) {
			Reservation reservation = new Reservation();
			try {
				conn = dataFactory.getConnection();
				String sql = "DELETE FROM reservation WHERE resid=? ";
				System.out.println(sql);
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, com);
				pstmt.executeUpdate();
				pstmt.close();
				conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
			return reservation;
		}




}
