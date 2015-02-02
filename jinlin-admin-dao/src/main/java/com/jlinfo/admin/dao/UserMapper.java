package com.jlinfo.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jlinfo.admin.model.User;

public interface UserMapper {

	@Select({
			"SELECT user_id AS id, user_name AS name, email, mobile, ec_salt AS salt, password, status ",
			"FROM user WHERE user_id =#{userId}" })
	public User selectUser(@Param("userId") Long userId);

	@Select({
			"SELECT user_id AS id, user_name AS name, email, mobile, ec_salt AS salt, password, status ",
			"FROM user WHERE 1" })
	public List<User> selectAllUser();

	@Insert({
			"INSERT INTO user(user_id, user_name, email, mobile, salt, password, add_time )",
			"VALUES(#{id}, #{name}, #{email}, #{mobile}, #{salt}, #{password}, #{createTime})" })
	void insertUser(User user);

	@Update({ "UPDATE user SET status = #{status}",
			"WHERE user_id = #{userId}" })
	void updateUser(@Param("userId") Long userId ,@Param("status") int status);

}