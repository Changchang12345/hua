package controller;

import service.FactoryService;
import service.NewsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/listNews")
public class ListServlet extends HttpServlet {
    // 基于ServiceFactory工厂，获取单例的UserService组件
    private NewsService newsService = FactoryService.getNewsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 实现加载全部新闻，并转发至/WEB-INF/jsp/listNews.jsp
        req.setAttribute("news", newsService.ListNews());
        req.getRequestDispatcher("/admin/ListNews.jsp")
                .forward(req, resp);

    }
}