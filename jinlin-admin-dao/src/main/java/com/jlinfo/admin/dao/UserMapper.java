package com.jlinfo.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jlinfo.admin.model.User;

public interface UserMapper {

	@Select({
			"SELECT agency_id AS agencyId, agency_type AS agencyTYpe, agency_name AS agencyName, map_lat AS mapLat, map_lng AS mapLng, address AS address, office_phone AS officePhone, add_time AS addTime ",
			"FROM ecs_admin_user WHERE is_check=1" })
	public List<User> selectAllUser();

	@Insert({
			"INSERT INTO ecs_admin_user(order_sn, user_id, order_status, shipping_status,shipping_time, pay_status, add_time, money_paid, order_amount, goods_amount, integral, zipcode, consignee, mobile, address, suppliers_id, pay_id, src_type)",
			"VALUES(#{orderSN}, #{userId}, #{status}, #{shippingStatus}, #{shippingTime}, #{payStatus},  #{createTime}, #{moneyPaid}, #{orderAmount}, #{goodsAmount}, #{scoreFee}, #{zipcode}, #{userName}, #{mobile}, #{address}, #{suppliersId}, #{payId}, #{srcType})" })
	void insertUser(User order);

	@Update({ "UPDATE ecs_admin_user SET is_separate=#{isSeparate} ",
			"WHERE order_sn = #{orderSN}" })
	void updateUser(@Param("orderSN") String orderSN,
			@Param("isSeparate") int isSeparate);

	// @Select({
	// "SELECT agency_id AS agencyId, agency_type AS agencyTYpe, agency_name AS agencyName, map_lat AS mapLat, map_lng AS mapLng, address AS address, office_phone AS officePhone, add_time AS addTime ",
	// "FROM ecs_bank_agency WHERE is_check=1 AND agency_type=#{agencyType}" })
	// public List<ECSBankAgency> selectBankAgencyByType(
	// @Param("agencyType") int agencyType);
	//
	// @Select({
	// "SELECT agency_id AS agencyId, agency_name AS agencyName, map_lat AS mapLat, map_lng AS mapLng, address AS address, office_phone AS officePhone, add_time AS addTime ",
	// "FROM ecs_bank_agency ",
	// "WHERE is_check=1 AND ",
	// "map_lng between #{lng} - #{lng_distance} and #{lng} + #{lng_distance} AND ",
	// "map_lat between #{lat} - #{lat_distance} and #{lat} + #{lat_distance}"
	// })
	// public List<ECSBankAgency> selectBankAgencyByPos(@Param("lat") double
	// lat,
	// @Param("lng") double lng,
	// @Param("lat_distance") double lat_distance,
	// @Param("lng_distance") double lng_distance);

}