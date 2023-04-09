package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.DAO.JobDAO;

@WebServlet("/delete")
public class DeleteJobbServlet extends HttpServlet{

    @Override                                              
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{ 
        try{
            int id=Integer.parseInt(req.getParameter("id"));
            
            JobDAO dao=new JobDAO(DBConnect.getConn());
            boolean k=dao.deleteJobs(id);
              
            HttpSession session=req.getSession();
            if(k)
            {
                session.setAttribute("succMsg", "Job Deleted Successfully...");
                resp.sendRedirect("view_jobs2.jsp");

            }else{
                session.setAttribute("succMsg", "Something wrong on server");
                resp.sendRedirect("view_jobs2.jsp");

            }


        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}