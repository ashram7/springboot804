package ch11;

public class LoginBean {
    private String id;
    private String password;
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    
    public boolean dbCheck() {
        if(id.equals("ashram") && password.equals("55555"))
            return true;
        return false;
    }    
}
