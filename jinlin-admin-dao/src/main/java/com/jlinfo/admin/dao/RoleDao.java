package com.jlinfo.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jlinfo.admin.model.User;

public interface RoleDao {

	@Select({
			"SELECT user_id AS id, user_name AS name, email, mobile, ec_salt AS salt, password, status ",
			"FROM role WHERE user_id =#{userId}" })
	public User selectUser(@Param("userId") Long userId);

	@Select({
			"SELECT user_id AS id, user_name AS name, email, mobile, ec_salt AS salt, password, status ",
			"FROM role WHERE 1" })
	public List<User> selectAllUser();

	@Insert({
			"INSERT INTO role(user_id, user_name, email, mobile, salt, password,add_ )",
			"VALUES(#{id}, #{name}, #{email}, #{mobile}, #{salt}, #{password})" })
	void insertUser(User user);

	@Update({ "UPDATE role SET is_separate=#{isSeparate} ",
			"WHERE order_sn = #{orderSN}" })
	void updateUser(@Param("orderSN") String orderSN,
			@Param("isSeparate") int isSeparate);

}