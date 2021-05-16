import com.xiaogemini.dao.AdminMapper;
import com.xiaogemini.pojo.Admin;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author gemini
 * Created in  2021/5/16 11:35
 */
public class MyTest {
    @Test
    public void test(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        Admin admin = new Admin("admin", "123456");
        AdminMapper adminMapper = context.getBean("adminMapper", AdminMapper.class);
        System.out.println(adminMapper.selectAdmin(admin));
    }
}
