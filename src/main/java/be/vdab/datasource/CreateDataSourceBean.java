package be.vdab.datasource;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.lookup.JndiDataSourceLookup;

// enkele imports
@Configuration
public class CreateDataSourceBean {
@Bean
DataSource dataSource() {
return new JndiDataSourceLookup().getDataSource("jdbc/brouwers"); 
}
}