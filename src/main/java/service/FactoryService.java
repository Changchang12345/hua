package service;
public class FactoryService {
    private static final NewsService NewsService = create();

    private static NewsService create() {
        return new NewsServiceImp();
    }
    public static NewsService getNewsService() {
        return NewsService;
    }
}
