package jspboard.model;

public class Comment {
	private Integer com_id;
	private String com_content;
	private String com_writer;
	private String com_password;
	private Integer post_id;
	
	public Integer getCom_id() {
		return com_id;
	}
	public void setCom_id(Integer com_id) {
		this.com_id = com_id;
	}
	public String getCom_content() {
		return com_content;
	}
	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}
	public String getCom_writer() {
		return com_writer;
	}
	public void setCom_writer(String com_writer) {
		this.com_writer = com_writer;
	}
	public String getCom_password() {
		return com_password;
	}
	public void setCom_password(String com_password) {
		this.com_password = com_password;
	}
	public Integer getPost_id() {
		return post_id;
	}
	public void setPost_id(Integer post_id) {
		this.post_id = post_id;
	}
	
}
