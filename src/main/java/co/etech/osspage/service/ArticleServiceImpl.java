package co.etech.osspage.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import co.etech.osspage.domain.ArticleVO;
import co.etech.osspage.persistence.ArticleDAO;

@Service
public class ArticleServiceImpl implements ArticleService {

    private final ArticleDAO articleDAO;

    @Inject
    public ArticleServiceImpl(ArticleDAO articleDAO) {
        this.articleDAO = articleDAO;
    }

    @Override
    public void create(ArticleVO articleVO) throws Exception {
        articleDAO.create(articleVO);
    }

    @Override
    public ArticleVO read(Integer article_no) throws Exception {
        return articleDAO.read(article_no);
    }

    @Override
    public void update(ArticleVO articleVO) throws Exception {
        articleDAO.update(articleVO);
    }

    @Override
    public void delete(Integer article_no) throws Exception {
        articleDAO.delete(article_no);
    }

    @Override
    public List<ArticleVO> listAll() throws Exception {
        return articleDAO.listAll();
    }
}