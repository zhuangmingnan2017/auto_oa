package com.yinian.autooa.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.apache.commons.lang3.reflect.FieldUtils;
import org.apache.ibatis.executor.statement.PreparedStatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.scripting.defaults.DefaultParameterHandler;
import org.apache.ibatis.scripting.xmltags.ForEachSqlNode;
/*import org.apache.ibatis.scripting.defaults.DefaultParameterHandler;
import org.apache.ibatis.scripting.xmltags.ForEachSqlNode;*/
import org.apache.ibatis.session.Configuration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/**
 *
 * <pre>
 * Title:类中文名称
 * Description: 类功能的描述    计算记录的总数
 * </pre>
 * @author caozj  cao.zhijun@163.com
 * @date 2015-8-29 上午11:04:29
 * @version 1.00.00
 * <pre>
 * 修改记录
 *    修改后版本:     修改人：  修改日期:     修改内容:
 * </pre>
 */
public class CountHelper {


    private static final String MAPPED_STATEMENT = "mappedStatement";
    private static Logger logger = LoggerFactory.getLogger(CountHelper.class);

    /**
     * 保存计算总行数的值
     */
    private static ThreadLocal<Integer> totalRowCountHolder = new ThreadLocal<Integer>();

    /**
     * 获取查询对象的总行数
     * @param sql  获取总行数的SQL
     * @param statementHandler
     * @param configuration
     * @param boundSql
     * @param connection
     * @throws Throwable
     */
    public static void getCount(String sql, PreparedStatementHandler statementHandler,
                         Configuration configuration,  BoundSql boundSql,
                         Connection connection)
            throws Throwable{
        Object parameterObject = statementHandler.getParameterHandler().getParameterObject();
        if (logger.isDebugEnabled()) {
            logger.debug("Total count SQL [{ "+ sql +" }] ");
            logger.debug("Total count Parameters: { "+ parameterObject +" } ");
        }


        PreparedStatement countStmt = null;
        ResultSet rs = null;
        try {
            countStmt = connection.prepareStatement(sql);
            List<ParameterMapping> pmLs = boundSql.getParameterMappings();
            final BoundSql countBS = new BoundSql(configuration, sql,
                    pmLs, parameterObject);
            for(ParameterMapping pm:pmLs){
                String propertyName = pm.getProperty();
                //这里只是增加以"_frec_"开始的参数，表示是for each参数，其他参数可以从ParameterObject获取。
                if (propertyName.startsWith(ForEachSqlNode.ITEM_PREFIX)){
                    countBS.setAdditionalParameter(propertyName, boundSql.getAdditionalParameter(propertyName));
                }
            }
            MappedStatement mappedStatement = (MappedStatement) FieldUtils.readField(statementHandler, MAPPED_STATEMENT, true);

            DefaultParameterHandler handler =
                    new DefaultParameterHandler(mappedStatement, parameterObject, countBS);
            handler.setParameters(countStmt);

            rs = countStmt.executeQuery();
            int count = 0;
            if (rs.next()) {
                count = rs.getInt(1);
            }
            if (logger.isDebugEnabled()) {
                logger.debug("Total count: { "+count+" }");
            }
            totalRowCountHolder.set(count);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
            } finally {
                if (countStmt != null) {
                    countStmt.close();
                }
            }
        }
    }

    /**
     * 获取当前线程对应的分页查询的总行数
     *
     * @return
     */
    public static int getTotalRowCount() {
        return totalRowCountHolder.get();
    }
}
