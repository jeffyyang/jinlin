package com.jlinfo.admin.dao;

import com.jlinfo.admin.model.Profile;

public interface ProfileDao {

	public Profile selectProfileByUserId(Long userId);

	public void createProfile(Profile profile);

}