package service;

import utils.DataBaseUtils;
import entity.News;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsServiceImp implements NewsService{
    @Override
        public void addNews(String Newname){
            String sql = "INSERT INTO data.news(name) VALUES(?)";
            try(Connection conn = DataBaseUtils.getConnection();
                PreparedStatement st = conn.prepareStatement(sql)) {
                st.setString(1, Newname);
                st.executeUpdate();
            }catch (SQLException e) {
                e.printStackTrace();
            }
        }
     @Override
     public void UpdateNews(News news) {
         String sql = "UPDATE data.news SET name=? WHERE idnews=?";
         try(Connection conn = DataBaseUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
             st.setString(1, news.getName());
             st.setInt(2,news.getIdnews());
             st.executeUpdate();
         }catch (SQLException e) {
             e.printStackTrace();
         }
     }
    @Override
    public News getNews(int id) {
        News news = null;
        String sql = "SELECT * FROM data.news WHERE idnews=? ORDER BY idnews ";
        try(Connection conn = DataBaseUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            try(ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    news = new News(rs.getInt("idnews"), rs.getString("name"),rs.getString("content"), rs.getTimestamp("inserttime"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return news;
    }
    @Override
    public List<News> ListNews() {
        List<News> news = new ArrayList<>();
        String sql = "SELECT * FROM data.news ORDER BY idnews";
        try(Connection conn = DataBaseUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                News news1 = new News(rs.getInt("idnews"), rs.getString("name"), rs.getString("content"),rs.getTimestamp("inserttime"));
                news.add(news1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return news;
    }

        public void DeleteNews(int idnews){
            String sql = "DELETE FROM data.news WHERE (idnews=?)";
            try(Connection conn = DataBaseUtils.getConnection();
                PreparedStatement st = conn.prepareStatement(sql)) {
                st.setInt(1, idnews);
                st.executeUpdate();
            }catch (SQLException e) {
                e.printStackTrace();
            }
        }
}
