package com.example.demo4.controller;

import java.util.ArrayList;
import java.util.List;

import com.example.demo4.entity.Ctddh;
import com.example.demo4.entity.Cthd;
import com.example.demo4.entity.Hoadon;
import com.example.demo4.entity.Mathang;

//import javax.management.loading.PrivateClassLoader;

public class Apriori {
	private static int numTransactions = 0;
	private static int minSup = 3;
	private static double maxConfidence = 65.0;
	private static int maxSize = 1;
	private static int sizeCustomer = 0;
	private static int sizeAll = 0;

	public static void main(String[] args) {
		String data[][] = new String[200][200];
				
 		String frequentItemSet[][] = new String[1000][1000];
		int Location[] = new int[100];
		String itemHistory[] = new String[100];
		String itemAll[] = new String[100];
//		String itemAll[] = new String[100];
 		List<String> finaly = new ArrayList<String>();
		foundFrequentItemSet(data, frequentItemSet, Location, itemAll);
		foundLawDetermination(data, frequentItemSet, itemHistory, finaly, Location);
		System.out.println(finaly.size());
		for(String s: finaly)
			System.out.println(s);
		// System.out.println("Phong");
//		for(int i = 0; i < 100; i++)
//		{
//			if(frequentItemSet[i][0] == null) break;
//			for (int j  = 0; j < 100; j++) {
//				if(frequentItemSet[i][j] == null)
//					break;
//				System.out.println(frequentItemSet[i][j]);
//			}
//			System.out.println("Phong");
//		}
	}

	
	// Lấy danh sách các sản phẩm đã mua của all
	public void LoadProductAll(String itemAll[], List<Mathang> mh) {
		int i = 0;
		for(Mathang m: mh)
		{
			itemAll[i] = m.getMamh();
			i++;
		}
		sizeAll = i;
	}
	
	// Lấy danh sách sản phẩm mà khách hàng mua
	public void LoadProductCustomer(String itemHistory[], List<Mathang> mh) {
		int i = 0;
		for(Mathang m: mh)
		{
			itemHistory[i] = m.getMamh();
			i++;
		}
		sizeCustomer = i;
	}
	
//	@Query(value = "CALL SP_LAYDSHD(:masothue)", nativeQuery = true)
	public void LOADDATA(List<Hoadon> HD, List<Cthd> cthd, String data[][]) {
		int i = 0, j = 0;
		numTransactions = HD.size();
		int max = 1;
		for (Hoadon hd : HD) {
			data[i][j] = hd.getSohd();
			j++;
			for (Cthd ct : cthd) {
				if (ct.getHoadon().getSohd() == hd.getSohd()) {
					data[i][j] = ct.getMathang().getMamh();
					j++;
				}
			}
			if(j > max)
				max = j;
			j = 0;
			i++;
		}
		maxSize = max;
	}

	// ok
	// Tìm tập phổ biến
	public static void foundFrequentItemSet(String data[][], String frequentItemSet[][], int Location[], String itemAll[]) {
		int count = 0;
//		int n = 0;
		String tmp;
		int rows = 0;
		int colums = 0;
		List<String> frequentTmp = new ArrayList<String>();
		// Tìm tập phổ biến 1 thuộc tính.
		//String B[] = { "A", "B", "C", "D", "E" };
		for (int i = 0; i < sizeAll; i++) {
			tmp = itemAll[i];
			//tmp = B[i];
			for (int j = 0; j < numTransactions; j++) {
				for (int k = 1; k < maxSize; k++) {
					// if(A[j][k] == null) break;
					if (tmp.equals(data[j][k])) {
						count++;
						break;
					}
				}
			}
			if (count > 2 || count == 2) {
				frequentItemSet[rows][colums] = tmp;
				Location[rows] = count;
				rows++;
				count = 0;
				frequentTmp.add(tmp);
			}

		}
		colums++;
		int rowXet = 0;
		int rowXet1 = 0;
		boolean cons = true;
//		for(String s: frequentTmp)
//			System.out.print(s +" ");
//		System.out.println();
		frequentTmp.remove(0);
//		for(String s: frequentTmp)
//			System.out.print(s +" ");
//		int xet = 0;
//		int daXet = 0;
		int columsXet = 1;
		int dem = 0;
//		int numCol = numTransactions;
		while (cons) {
			if (rows == 0)
				break;
			// Duyệt hết một phần tử.
			for (int t = 0; t < frequentTmp.size(); t++) {
				// Duyệt một phần tử
				for (int p = t; p < frequentTmp.size(); p++) {
					count = 0;
					// Kiểm tra một dòng.
					for (int i = 0; i < numTransactions; i++) {
						// Kiểm tra A có phải là con của B?
						for (int k = 0; k < columsXet; k++) {
							for (int j = 1; j < maxSize; j++) {
								if (frequentItemSet[rowXet][k].equals(data[i][j])) {
									dem++;
									break;
								}
							}

						}
						// kiểm tra phần tử mới đã tồn tại chưa
						for (int j = 1; j < maxSize; j++)
							if (frequentTmp.get(p).equals(data[i][j])) {
								dem++;
								break;
							}
						if (dem == columsXet + 1)
							count++;
						dem = 0;
					}
					// Kiểm tra mức độ phổ biến
					if (count > 2 || count == 2) {
						for (int i = 0; i < columsXet + 1; i++) {
							if (i == columsXet) {
								frequentItemSet[rows][i] = frequentTmp.get(p);
								break;
							}
							frequentItemSet[rows][i] = frequentItemSet[rowXet][i];
						}
						Location[rows] = count;
						rows++;
						columsXet++;
						rowXet = rows - 1;
					}
					else 
						break;
				}
				rowXet = rowXet1;
				columsXet = 1;
			}
			rowXet1++;
			rowXet = rowXet1;
			columsXet = 1;
			// xảy ra lỗi!
			frequentTmp.remove(0);
//			if(frequentTmp.size() == 1)
			if (frequentTmp.size() == 0)
				cons = false;
		}

	}

	// ok
	// Tìm luận xác định
	public static void foundLawDetermination(String data[][], String frequentItemSet[][], String itemHistory[],
			List<String> finaly, int location[]) {
		int countCheck = 0;
		int countCheck1 = 0;
		boolean check = false;
		for (int i = 0; i < 100; i++) {
			countCheck = 0;
			countCheck1 = 0;
			check = false;
			for (int j = 0; j < 100; j++) {
				if (frequentItemSet[i][j] != null)
					countCheck++;
				for (int k = 0; k < sizeCustomer; k++) {
					if (itemHistory[k].equals(frequentItemSet[i][j])) {
						countCheck1++;
						break;
					}
				}
			}
			if (countCheck == countCheck1) {
				check = true;
			}
			if(countCheck1 == 0)
				continue;
			if (!check) {
				//System.out.println(i);
				int checkConfidence = 0;
				String tmp[] = new String[100];
				String notConfidence[] = new String[100];
				int index = 0;
				int indexNotConfidence = 0;
				// Tao ra 2 mang x va y: X là mảng chứa các vật phẩm đã mua, y là các vật phẩm
				// không mua.
				for (int j = 0; j < 100; j++) {
					checkConfidence = 0;
					if(frequentItemSet[i][j] == null)
						break;
					for (int k = 0; k < 2; k++) {
						if (itemHistory[k].equals(frequentItemSet[i][j])) {
							tmp[index] = itemHistory[k];
							index++;
							checkConfidence = 1;
							break;
						}
					}
					if (checkConfidence == 0) {
						notConfidence[indexNotConfidence] = frequentItemSet[i][j];
						indexNotConfidence++;
					}
				}
				//System.out.println(indexNotConfidence);
				// Tim luật kết hợp của một dòng dữ liệu
//				System.out.println(index);
				if (checkElement(data, index, tmp, location[i]) == 1)
					for (int j = 0; j < indexNotConfidence; j++) {
						//System.out.println(notConfidence[j]);
						if (CheckFrequent(finaly, notConfidence[j]) == 0)
							finaly.add(notConfidence[j]);
					}
			}
		}
	}

	// Tính confidence
	// 1: add 0: duyệt dòng mới
	public static int checkElement(String data[][], int n, String confidence[], int dangXet) {
		int count = 0;
//		System.out.println(dangXet);
		double maxCon = 60.0;
//		boolean revise = true;
		// Duyệt kiểm tra với vt là một mặt hàng có xác định được không?
//		for(int i = 0; i < n; i++)
//			System.out.print(confidence[i]);
//		System.out.println(" phong");
		for (int i = 0; i < n; i++) {
			count = 0;
			for (int j = 0; j < numTransactions; j++)
				for (int k = 0; k < maxSize; k++)
					if (confidence[i].equals(data[j][k])) {
						count++;
						break;
					}

			double con = (dangXet * 1.0 / count) * 100;
//			System.out.println(count);
			if (con > maxCon || con == maxCon) {
				return 1;
//				revise = false;
			}
		}
		if(n == 1)
			return 0;
		// chưa xác định được duyệt tiếp
		int columsXet = 1;
		int dem = 0;
		
		// Kiểm tra đoạn này nếu sảy ra lỗi
		// Duyệt từng phần tử.
		for (int i = 0; i < n; i++) {
			// Duyệt theo dòng
			for (int k = 0; k < numTransactions; k++) {
				dem = 0;
				// Kiểm tra a có phải là con của b không?
				for (int j = i + 1; j < columsXet + 1; j++) {
					for (int p = 0; p < maxSize; p++)
						if (data[k][p].equals(confidence[j])) {
							dem++;
							// p = 0;
							break;
						}
					for (int p = 0; p < 4; p++)
						if (data[k][p].equals(confidence[i])) {
							dem++;
							break;
						}
				}
				if (dem == columsXet + 1)
					count++;
			}
			double con = (dangXet * 1.0 / count) * 100;
			if (con > maxCon || con == maxCon)
				return 1;
			columsXet++;
			// Nếu chưa xét theo phẩn tử đầu thì tiếp tục duyệt tiếp.
			if (columsXet < n)
				i--;
		}
		return 0;
	}

	// 0: ko ton tai, 1: co ton tai
	public static int CheckFrequent(List<String> S, String s) {
		if (S.size() == 0)
			return 0;
		for (String tmp : S) {
			if (s.equals(tmp))
				return 1;
		}
		return 0;

	}
}
