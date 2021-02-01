package com.web.blog.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "PostDto : 게시글 정보", description = "게시글 상세 정보")
public class PostDto {

	@ApiModelProperty(value = "글번호")
	private int postNo;
	@ApiModelProperty(value = "글제목")
	private String title;
	@ApiModelProperty(value = "글내용")
	private String content;
	@ApiModelProperty(value = "작성일")
	private String uploadDate;
	@ApiModelProperty(value = "수정일")
	private String modifyDate;
	@ApiModelProperty(value = "좋아요")
	private int likeCnt;
	@ApiModelProperty(value = "작성자 이메일 아이디")
	private String email;
	@ApiModelProperty(value = "작성자 이름")
	private String name;
	@ApiModelProperty(value = "임시저장용")
	private int temp;
	
	private List<MultipartFile> files;
	
	@Override
	public String toString() {
		return "PostDto [postNo=" + postNo + ", title=" + title + ", content=" + content + ", uploadDate=" + uploadDate
				+ ", modifyDate=" + modifyDate + ", likeCnt=" + likeCnt + ", email=" + email + ", name=" + name
				+ ", temp=" + temp + ", files=" + files + ", unmodified=" + unmodified + "]";
	}

	private List<String> unmodified;
	

//	public PostDto() {
//		super();
//		// TODO Auto-generated constructor stub
//	}
//
//	public PostDto(int postNo, String title, String content, String uploadDate, String modifyDate, int likeCnt,
//			String email, String name) {
//		super();
//		this.postNo = postNo;
//		this.title = title;
//		this.content = content;
//		this.uploadDate = uploadDate;
//		this.modifyDate = modifyDate;
//		this.likeCnt = likeCnt;
//		this.email = email;
//		this.name = name;
//	}

	public List<String> getUnmodified() {
		return unmodified;
	}

	public void setUnmodified(List<String> unmodified) {
		this.unmodified = unmodified;
	}

	public List<MultipartFile> getFiles() {
		return files;
	}

	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}

	public int getLikeCnt() {
		return likeCnt;
	}

	public void setLikeCnt(int likeCnt) {
		this.likeCnt = likeCnt;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getTemp() {
		return temp;
	}

	public void setTemp(int temp) {
		this.temp = temp;
	}
}