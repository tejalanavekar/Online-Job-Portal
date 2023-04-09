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
import com.entity.Jobs;

@WebServlet("/update")
public class UpdateJobServlet extends HttpServlet
{

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
    try{
        int id=Integer.parseInt(req.getParameter("id")); 
        String title=req.getParameter("title"); 
        String location=req.getParameter("location");
        String category=req.getParameter("category");
        String status=req.getParameter("status");
        String desc=req.getParameter("desc");

        Jobs j=new Jobs();
        j.setId(id);
        j.setTitle(title);
        j.setDescription(desc);
        j.setLocation(location);
        j.setCategory(category);
        j.setStatus(status);

        HttpSession session=req.getSession();
    
        JobDAO dao=new JobDAO(DBConnect.getConn());
        boolean v=dao.updateJob(j);
        if(v)
        {
            session.setAttribute("succMsg", "Job Updated Successfully...");
            resp.sendRedirect("view_jobs2.jsp"); 

        }else{
            session.setAttribute("succMsg", "Something wrong on server");
            resp.sendRedirect("view_jobs2.jsp");

        }

    } 
    catch (Exception e)
    {
        e.printStackTrace();
    }
}


}