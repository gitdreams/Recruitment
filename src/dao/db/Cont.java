package dao.db;


import java.util.List;
/**
 * @author Admin
 *
 *控制接口，提供增删查改四个接口，根据不同的表来具体实现该接口，
 *这些函数接口暂时不在action中实现，action只负责调用，则需要一个参数列表传入
 *查询函数就是根据不同的表来实现之后将上一步封装的查询函数返回的结果集整理，封装成字符串数组
 *更新的函数的作用还没想好，在编程中再思考吧，
 *
 */
public interface Cont {
	public Object getOne(String sql,String[] str);
	public List getAllDB();
	public int update(String sql,String[] str);
//	public int delete(String sql,String[] str);
//	public int add(String sql,String[] str);
}
