package com.example.demo4.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.springframework.stereotype.Component;
@Component
public class ReadPython {
	public String ReadPython(Double ProductBrand, Double Material, Double ProductionWay) throws IOException, InterruptedException {
		String data = "C:\\Users\\ADMIN\\Downloads\\test\\PhatTrienHeThongThongMinh\\back-end\\demo4\\src\\main\\resources\\python\\AI.sav";
//String path = "C:\\Users\\ADMIN\\Downloads\\hung\\shung.py";
//Float age=(float) ( 47/100);
//Float estimate=(float) (117000/200000);
//		Double age = 0D;
//		Double estimate = 0D;
//		age = (double) (47 / 100D);
//		estimate = (double) (117000 / 200000D);
//	Double ProductBrand=(double) 0.6D;
//	Double Material=(double) 0.333333333D;
//	Double ProductionWay=(double) 0.5D;
//		String s = Double.toString(age);
//		System.out.println(ProductBrand.toString());
//		System.out.println(Material.toString());
		ProcessBuilder pb = new ProcessBuilder("python",
				"C:\\Users\\ADMIN\\Downloads\\test\\PhatTrienHeThongThongMinh\\back-end\\demo4\\src\\main\\resources\\python\\load_AI.py",
				data, ProductBrand.toString(), Material.toString(), ProductionWay.toString()).inheritIO();
		Process p = pb.start();
		p.waitFor();
		BufferedReader bfr = new BufferedReader(new InputStreamReader(p.getInputStream()));
		String line = "";
		String label="";
		while ((line = bfr.readLine()) != null) {
//			System.out.println(line);
			label=line;
		}
		return label;
	}

}
