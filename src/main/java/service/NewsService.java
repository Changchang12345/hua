package service;

import entity.News;

import java.util.List;

public interface NewsService {
        public List<News> ListNews();

        public void addNews(String Newname);

        public void UpdateNews(News news);

        public News getNews(int idNews);

        public void DeleteNews(int idnews);
}
