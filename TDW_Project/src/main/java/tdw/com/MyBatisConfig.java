package tdw.com;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
public class MyBatisConfig {

	
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{
	        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
	        sqlSessionFactoryBean.setDataSource(dataSource);
	        //applicationContext.getResources("classpath:/mapper/*Mapper.xml");
	        Resource[] arrResource = new PathMatchingResourcePatternResolver()
	                .getResources("classpath:mapper/**/*.xml");
	        sqlSessionFactoryBean.setMapperLocations(arrResource);
	        sqlSessionFactoryBean.getObject().getConfiguration().setMapUnderscoreToCamelCase(true);
	        return sqlSessionFactoryBean.getObject();
	    }
	
	 @Bean
	    public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) throws Exception {
	        return new SqlSessionTemplate(sqlSessionFactory);
	    }
	
	 
}
