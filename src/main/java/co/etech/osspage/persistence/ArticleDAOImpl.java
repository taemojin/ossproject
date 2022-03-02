package co.etech.osspage.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import co.etech.osspage.domain.ArticleVO;

@Repository
public class ArticleDAOImpl implements ArticleDAO {

    private static final String NAMESPACE = "co.etech.osspage.mappers.article.ArticleMapper";

    private final SqlSession sqlSession;

    @Inject
    public ArticleDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public void create(ArticleVO articleVO) throws Exception {
        sqlSession.insert(NAMESPACE + ".create", articleVO);
    }

    @Override
    public ArticleVO read(Integer article_no) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".read", article_no);
    }

    @Override
    public void update(ArticleVO articleVO) throws Exception {
        sqlSession.update(NAMESPACE + ".update", articleVO);
    }

    @Override
    public void delete(Integer article_no) throws Exception {
        sqlSession.delete(NAMESPACE + ".delete", article_no);
    }

    @Override
    public List<ArticleVO> listAll() throws Exception {
        return sqlSession.selectList(NAMESPACE + ".listAll");
    }
}