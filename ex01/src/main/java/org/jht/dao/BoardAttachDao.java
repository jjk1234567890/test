package org.jht.dao;

import org.jht.model.AttachFileDTO;

public interface BoardAttachDao {
	// 파일첨부테이블(tbl_attach)에 insert
	public void BoardAttachWrite(AttachFileDTO adto);
}
