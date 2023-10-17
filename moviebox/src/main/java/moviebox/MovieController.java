package moviebox;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/moviebox/*")
public class MovieController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Movie movie;
	Reservation reservation;
	MoviesDao moviesDao;
	MoiveService moiveService;
	ReservationDao reservationDao;
	

	public void init(ServletConfig config) throws ServletException {
		movie = new Movie();
		reservation = new Reservation();
		moviesDao = new MoviesDao();
		reservationDao = new ReservationDao();
		moiveService = new MoiveService();
		
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextPage = "";
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String action = request.getPathInfo();
		System.out.println("action: " + action);
		
		try {
			List movieList = new ArrayList();
	
			 if (action == null || action.equals("/movieLogin.do")) {
				nextPage="/moviebox2/movieLogin.jsp"; //첫화면 켰을 때 로그인창이야
			
		}else  if( action.equals("/mainForm.do")) {
			nextPage = "/moviebox2/mainForm.jsp";  // 메인메뉴
			
			
			} else if(action.equals("/reservationform.do")) {
				movieList = moiveService.listMovies();
				request.setAttribute("movieList", movieList);
				
				nextPage="/moviebox2/reservationForm.jsp";  //영화 목록 + 영화번호 입력		
				
				
				
			} else if (action.equals("/reservation.do")) { //선택영화번호로 목록정보 + 좌석 입력
				movieList = moiveService.listMovies();
				request.setAttribute("movieList", movieList);
				
				
				String resid = request.getParameter("resid");
				String seat = request.getParameter("seat");
				String moviename = request.getParameter("moviename");
				String movieid = request.getParameter("movieid");
			
				Reservation reservation = new Reservation(resid, seat, moviename, movieid);
				reservationDao.res(reservation);
				

				request.setAttribute("msg", "res");
		
				nextPage = "/moviebox2/mainForm.jsp";
		
				
			}else if(action.equals("/ticketconfirm.do")) { //예매정보확인 위한 정보입력 창
				nextPage = "/moviebox2/movieListForm.jsp";
				
			}else if(action.equals("/ticketconfirm_2.do")) {  //예매정보확인창
				String resid = request.getParameter("resid");
				//int resid = Integer.parseInt(resid);
				//int resid = Integer.parseInt(request.getParameter("resid")); 이런 방식으로 db에 int형을 가져오려면 jsp  //System.out.println(resid+"zzzzz");
				reservation = MoiveService.findByResId(resid); 
				request.setAttribute("reservation", reservation);
				
				nextPage = "/moviebox2/ticketconfirm.jsp";
			
			}else if(action.equals("/ticketcancle.do")) {
				nextPage = "/moviebox2/movieListForm2.jsp";
				
			}else if(action.equals("/ticketcancle_2.do")) { //예매취소창
				String resid = request.getParameter("resid");
				//int resid = Integer.parseInt(resid);
				//int resid = Integer.parseInt(request.getParameter("resid"));
				reservation = MoiveService.cancel(resid);
				request.setAttribute("msg", "cancel");
				nextPage = "/moviebox2/mainForm.jsp";
				
			}else if(action.equals("/adminMovieList.do")) {
				movieList = moiveService.listMovies();
				request.setAttribute("movieList", movieList);
				
				nextPage="/moviebox2/adminMovieList.jsp";
	
			
			}else if(action.equals("/addMovie.do")) { 
				movieList = moiveService.listMovies();
				request.setAttribute("movieList", movieList);
				nextPage = "/moviebox2/addForm.jsp";
			
			}else if(action.equals("/addMovie_2.do")) {
			
				//int id = Integer.parseInt(request.getParameter("id"));
				String id = request.getParameter("id");
				String title = request.getParameter("title");
				String genre = request.getParameter("genre");
			
				Movie movie = new Movie(id, title, genre);
				moviesDao.add(movie);
				
				
				
				
				//String id = request.getParameter("id");
				//int id = Integer.parseInt(id);
				//int id = Integer.parseInt(request.getParameter("a"));
				//movieVO = MoiveService.add(id);
				request.setAttribute("msg", "add");
				movieList = moiveService.listMovies();
				request.setAttribute("movieList", movieList);
				nextPage = "/moviebox2/adminMovieList.jsp";
				
			}else if(action.equals("/deleteMovie.do")) {
				movieList = moiveService.listMovies();
				request.setAttribute("movieList", movieList);
				nextPage = "/moviebox2/adminDel.jsp";
				
				
		}else if(action.equals("/deleteMovie_2.do")) {
			String id = request.getParameter("id");
			//int id = Integer.parseInt(id);
			//int id = Integer.parseInt(request.getParameter("id"));
			movie = MoiveService.delete(id);
			request.setAttribute("msg", "delete");
			movieList = moiveService.listMovies();
			request.setAttribute("movieList", movieList);
			nextPage = "/moviebox2/adminMovieList.jsp";
		}
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
		
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
