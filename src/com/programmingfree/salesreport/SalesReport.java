package com.programmingfree.salesreport;

public class SalesReport {


    public SalesReport(String country,String revenue, String salesmanager,String year)
    {
        
        this.country = country;
        this.revenue = revenue;
        this.salesmanager = salesmanager;
       this.year=year;
    }
      
    private String country;
    private String revenue;
    private String salesmanager;
    private String year;

    
    
    
	public String getCountry() {
		return country;
	}
	public String getRevenue() {
		return revenue;
	}
	public String getSalesmanager() {
		return salesmanager;
	}
	public String getYear() {
		return year;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public void setRevenue(String revenue) {
		this.revenue = revenue;
	}
	
	public void setSalesmanager(String salesmanager) {
		this.salesmanager = salesmanager;
	}
	
	public void setYear(String year) {
		this.year = year;
	}
}
