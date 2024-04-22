package doancuoiky.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import doancuoiky.dao.LoginDao;
import doancuoiky.dao.NguoiDungDao;
import doancuoiky.model.Login;
import doancuoiky.model.NguoiDung;

/**
 * Servlet implementation class ViewNguoiDungController
 */
@WebServlet("/views/QTVHT/viewnguoidung")
public class ViewNguoiDungController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewNguoiDungController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String id = request.getParameter("sid");
		 System.out.print(id);
		 System.out.print("Trang thai xoa");
		 NguoiDungDao nguoidungdao = new NguoiDungDao();
		 NguoiDung nguoidung  = new NguoiDung();
		  try {
			nguoidung =  nguoidungdao.getNguoiDungByMaND(id);
			 request.setAttribute("xemnguoidung", nguoidung);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("/views/QTVHT/xemnguoidung.jsp");
			 dispatcher.forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
