package controller;

import entity.News;
import service.FactoryService;
import service.NewsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/UpdateNews")
public class UpdateServlet extends HttpServlet {
    // 基于ServiceFactory工厂，获取单例的UserService组件
    private NewsService newsService = FactoryService.getNewsService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("idnews"));
        String newName = req.getParameter("name");
        News news = new News(id,newName);
        newsService.UpdateNews(news);
        resp.sendRedirect(req.getContextPath() + "/listNews");
    }
}
