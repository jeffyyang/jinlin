package com.jlinfo.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jlinfo.admin.model.User;

public interface UserMapper {

	@Select({
			"SELECT user_id AS id, user_name AS name, email, ec_salt AS salt, password ",
			"FROM ecs_admin_user WHERE 1" })
	public List<User> selectAllUser();

	@Insert({
			"INSERT INTO ecs_admin_user(user_id, user_name, email,ec_salt, password)",
			"VALUES(#{id}, #{name}, #{email}, #{salt}, #{password}, #{payStatus},  #{createTime}, #{moneyPaid}, #{orderAmount}, #{goodsAmount}, #{scoreFee}, #{zipcode}, #{userName}, #{mobile}, #{address}, #{suppliersId}, #{payId}, #{srcType})" })
	void insertUser(User user);

	@Update({ "UPDATE ecs_admin_user SET is_separate=#{isSeparate} ",
			"WHERE order_sn = #{orderSN}" })
	void updateUser(@Param("orderSN") String orderSN,
			@Param("isSeparate") int isSeparate);

}