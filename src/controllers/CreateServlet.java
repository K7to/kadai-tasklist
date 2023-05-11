package controllers;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.taskList;
import utils.DBUtil;

/**
 * Servlet implementation class CreateServlet
 */
@WebServlet("/create")
public class CreateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

        //new.jspから送信でデータを受け取る
        String _token = request.getParameter("_token");
        if(_token != null && _token.equals(request.getSession().getId()) ) {
            EntityManager em = DBUtil.createEntityManager();

            em.getTransaction().begin();

            //空のデータを作る
            taskList tl = new taskList();
            String taskName = request.getParameter("name");
            tl.setTaskName(taskName);

            String taskDetail = request.getParameter("detail");
            tl.setTaskDetail(taskDetail);

            long time = System.currentTimeMillis();
            Timestamp tm = new Timestamp(time);
            tl.setAddedDay(tm);

            String deadLineY = request.getParameter("deadLineY");
            String deadLineM = request.getParameter("deadLineM");
            String deadLineD = request.getParameter("deadLineD");
            String date = deadLineY + "/" + deadLineM + "/" + deadLineD;
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
            try {
                Date d = sdf.parse(date);
                tl.setDeadLine(new Timestamp(d.getTime()));
            }
            catch (ParseException e) {
                //とりあえず現在時間を入れとく
            }

            //データベース書き込み
            em.persist(tl);
            em.getTransaction().commit();
            em.close();

            response.sendRedirect(request.getContextPath() + "/index");
        }
    }

}
