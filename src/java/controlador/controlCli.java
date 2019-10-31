package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Cliente;
import modelo.encmd5;
import modeloDAO.ClienteDAO;

@WebServlet(name = "controlCli", urlPatterns = {"/controlcli.do"})
public class controlCli extends HttpServlet {

    String login = "vistas/login.jsp";
    String cont;
    String index = "index.jsp";
    ClienteDAO dao = new ClienteDAO();
    Cliente c = new Cliente();
    int r;
    encmd5 enc = new encmd5();
    private int id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String acceso = "";
        String action = request.getParameter("accion");
        
        if (action.equalsIgnoreCase("Ingresar")) {
            String usu = request.getParameter("usucli");
            String con = request.getParameter("concli");
            cont = enc.getHash(con, "MD5");
            c.setUsucli(usu);
            c.setConcli(cont);
            r = dao.valcli(c);
            if (r == 1) {
                request.getSession().setAttribute("usucli", usu);
                request.getSession().setAttribute("concli", cont);
                acceso = index;
            } else {
                acceso = login;
            }
        }else if(action.equalsIgnoreCase("login")){
            acceso=login;
        }
        
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
