package org.jht.dao;

import org.jht.model.MemberDTO;

public interface MemberDao {
	public void MemberInsert(MemberDTO mdto);
	public MemberDTO Login(MemberDTO mdto);
}
