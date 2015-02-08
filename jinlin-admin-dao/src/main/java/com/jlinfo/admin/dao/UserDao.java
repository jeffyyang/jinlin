package com.jlinfo.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jlinfo.admin.model.User;

public interface UserDao {

	@Select({
			"SELECT user_id AS id, user_name AS name, email, mobile, salt, password, status ",
			"FROM admin_user WHERE user_id =#{userId}" })
	public User selectUserById(@Param("userId") Long userId);

	@Select({
			"SELECT user_id AS id, user_name AS name, email, mobile, salt, password, status ",
			"FROM admin_user WHERE user_name =#{userName}" })
	public User selectUserByName(@Param("userName") String userName);

	@Select({
			"SELECT user_id AS id, user_name AS name, email, mobile, salt, password, status ",
			"FROM admin_user WHERE mobile =#{mobile}" })
	public User selectUserByMobile(@Param("mobile") String mobile);

	@Select({
			"SELECT user_id AS id, user_name AS name, email, mobile, salt, password, status ",
			"FROM admin_user WHERE email =#{email}" })
	public User selectUserByEMail(@Param("email") String email);

	@Select({
			"SELECT user_id AS id, user_name AS name, email, mobile, salt, password, status ",
			"FROM admin_user WHERE 1" })
	public List<User> selectAllUser();

	@Insert({
			"INSERT INTO admin_user(user_id, user_name, email, mobile, salt, password, add_time )",
			"VALUES(#{id}, #{name}, #{email}, #{mobile}, #{salt}, #{password}, #{createTime})" })
	void insertUser(User user);

	@Update({ "UPDATE admin_user SET status = #{status}", "WHERE user_id = #{userId}" })
	void updateUserStatus(@Param("userId") Long userId, @Param("status") int status);

}