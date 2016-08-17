package com.programmingfree.salesreport; 

import au.com.bytecode.opencsv.CSVReader;

import com.programmingfree.salesreport.SalesReport;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.*;


public class FetchDataFromDb {
	
	private static List<SalesReport> SalesData = null;
	
	public static List<SalesReport> GetSalesData() throws IOException{
		
		if(SalesData==null){
			
			SalesData=new LinkedList<SalesReport>();
			String csvFilename = "country_revenue.csv";
			InputStream is =  Thread.currentThread().getContextClassLoader().getResourceAsStream("com/programmingfree/salesreport/"+csvFilename);
			BufferedReader br = new BufferedReader(new InputStreamReader(is));
			CSVReader csvReader = new CSVReader(br);
			String[] row = null;
			while((row = csvReader.readNext()) != null) {
				
			   SalesData.add(new SalesReport(row[0],row[1],row[2],row[3]));		   
			  
			}
			
			csvReader.close();
			
		}
		
		
		return SalesData;
		
	}
    


}
