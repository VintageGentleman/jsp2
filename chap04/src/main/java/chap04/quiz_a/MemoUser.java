package chap04.quiz_a;

public class MemoUser {

	private String user_id;
	private String user_pwd;
	
	public MemoUser(String user_id, String user_pwd) {
		this.user_id = user_id;
		this.user_pwd = user_pwd;
	}

	// equals를 만들어 놓으면 contains 메서드가 가져다가 비교에 사용한다 
	@Override
	public boolean equals(Object obj) {
		return this.user_id.equals(((MemoUser)obj).user_id);
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	
}