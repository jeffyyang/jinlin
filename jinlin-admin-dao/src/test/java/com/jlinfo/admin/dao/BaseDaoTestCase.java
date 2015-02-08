package com.jlinfo.admin.dao;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;


@RunWith(SpringJUnit4ClassRunner.class)
// @ContextConfiguration(locations={"classpath:/META-INF/spring/applicationContext.xml","classpath:/spring-config-*.xml"})
@ContextConfiguration(locations={"classpath:/META-INF/spring/jinlin-admin-dao.xml"})
@TransactionConfiguration(transactionManager="transactionManager",defaultRollback=true)
@Transactional
public class BaseDaoTestCase {
 //本类作为基类，所有要用到的东西都在annotation里配置了。所以什么内容都不用写了。
}
