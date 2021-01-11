import com.sandm.shop.mapper.ProductMapper;
import com.sandm.shop.pojo.Product;
import com.sandm.shop.service.impl.ProductServiceImpl;
import com.sandm.shop.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;/**
 * @program: shop
 * @description:
 * @author: Closer
 * @create: 2020-12-28 11:36
 **/


public class ProductMapperTest {
    ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    ProductServiceImpl productServiceImpl = context.getBean("productServiceImpl", ProductServiceImpl.class);
    @Test
    public void testGetProductById(){
        Product product = productServiceImpl.getProductById(1);
        System.out.println(product);
    }

    @Test
    public void testGetProductList(){
        List<Product> productList = productServiceImpl.getProductList();
        for (Product product : productList) {
            System.out.println(product);
        }
    }

    @Test
    public void testAddProduct(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
        Date date = new Date();
        int i = mapper.addProduct(new Product(null,"demo2",
                BigDecimal.valueOf(1000),1,1,
                1,date,"desc","2.jpg"));
        System.out.println(i);
        sqlSession.close();
    }

    @Test
    //TO DO
    public void testModifyProduct(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
        Date date = new Date();
        int i = mapper.modifyProduct(new Product(null,"demo", BigDecimal.valueOf(1000),1,1,1,date,"desc","1.jpg"));
        System.out.println(i);
        sqlSession.close();
    }

    @Test
    public void testUpdate(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
        Date date = new Date();
        int i = mapper.update(41,"0");
        System.out.println(i);
        sqlSession.close();
    }

    @Test
    public void testDeleteProduct(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
        Date date = new Date();
        int i = mapper.deleteProduct(41);
        System.out.println(i);
        sqlSession.close();
    }

    @Test
    public void testDeleteBatch(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
        Date date = new Date();
        int[] ids = {45,42};
        int i = mapper.deleteBatch(ids);
        System.out.println(i);
        sqlSession.close();
    }
}
