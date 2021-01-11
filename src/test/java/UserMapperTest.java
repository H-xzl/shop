import com.sandm.shop.mapper.UserMapper;
import com.sandm.shop.pojo.User;
import com.sandm.shop.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

/**
 * @program: shop
 * @description: UserMapperTest
 * @author: Closer
 * @create: 2020-12-21 16:32
 **/
public class UserMapperTest {
    @Test
    public void testGetUserById(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        User user = mapper.getUserById(1);
        System.out.println(user);
        sqlSession.close();
    }

    @Test
    public void testGetUserList(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        List<User> userList = mapper.getUserList();
        for (User user : userList) {
            System.out.println(user);
        }
        sqlSession.close();
    }

    @Test
    public void testAddUser(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        int i = mapper.addUser(new User(null,"test1","123456",25,"15690868769","12345@qq.com","华北水利水电大学",1,"test.jpg"));

        System.out.println(i);

        sqlSession.close();
    }

    @Test
    public void testModifyUser(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        int i = mapper.modifyUser(new User(22,"test","123456",21,"15690868769","123456@qq.com","华北水利水电大学",1,null));
        System.out.println(i);
        sqlSession.close();
    }

    @Test
    public void testUpdatePwd(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        int i = mapper.updatePwd(1,"123");
        System.out.println(i);
        sqlSession.close();
    }

    @Test
    public void testDeleteUser(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        int i = mapper.deleteUser(24);
        System.out.println(i);
        sqlSession.close();
    }
}
