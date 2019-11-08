package model;

import java.io.Serializable;

public class MenuTable implements Serializable{
	 
	    private static final long serialVersionUID = 1L;
	    
	    private int id=0;

	    public MenuTable() {

	    }

	    public MenuTable(int id) {
	        
	        this.id = id;
	    }

	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id=id;
	        
	    }
	}
