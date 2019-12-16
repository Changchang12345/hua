package controller;

import service.FactoryService;
import service.NewsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/getNews")
public class GetServlet extends HttpServlet {
    // 基于ServiceFactory工厂，获取单例的UserService组件
    private NewsService newsService = FactoryService.getNewsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取指定ID用户的详细信息
        int id = Integer.parseInt(req.getParameter("idnews"));
        req.setAttribute("news", newsService.getNews(id));
        req.getRequestDispatcher("/jsp/GetNews.jsp")
                .forward(req, resp);
    }
}
