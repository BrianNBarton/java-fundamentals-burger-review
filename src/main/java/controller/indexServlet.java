package controller;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import model.Burger;
import java.util.List;
import java.util.ArrayList;
@WebServlet(name = "IndexServlet", urlPatterns ="/home")
public class indexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Burger bigMac = new Burger("Big Mac", 3, 7, 2, true);
        Burger homestyle = new Burger("Homestyle", 2, 3, 1, false);
        Burger quarterPounder = new Burger("Quarter Pounder", 2, 3, 1, true);
        List<Burger> allBurgers = new ArrayList<>();
        allBurgers.add(bigMac);
        allBurgers.add(homestyle);
        allBurgers.add(quarterPounder);
        req.setAttribute("allBurgers", allBurgers);
        req.setAttribute("truthiness", true);
        req.getRequestDispatcher("/index.jsp").forward(req,res);
    }
}