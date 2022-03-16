package co.etech.osspage.persistence;

import java.util.List;

import co.etech.osspage.commons.paging.Criteria;
import co.etech.osspage.domain.ArticleVO;

public interface ArticleDAO {

    void create(ArticleVO articleVO) throws Exception;

    ArticleVO read(Integer article_no) throws Exception;

    void update(ArticleVO articleVO) throws Exception;

    void delete(Integer article_no) throws Exception;

    List<ArticleVO> listAll() throws Exception;
    
    List<ArticleVO> listPaging(int page) throws Exception;
    
    List<ArticleVO> listCriteria(Criteria criteria) throws Exception;
    
    int countArticles(Criteria criteria) throws Exception;

}