package Filter;

import entity.manager;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebFilter("/admin/*")
public class LoginFilter extends HttpFilter {
    private List<String> excludes = List.of("/login");

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        for (String e : excludes) {
            if (e.equals(req.getServletPath())) {
                chain.doFilter(req, res);
                return;
            }
        }
        manager Manager = (manager) req.getSession().getAttribute("manager");
        if (Manager != null) {
            chain.doFilter(req, res);
        } else {
            res.sendRedirect("/login");
        }
    }


}
