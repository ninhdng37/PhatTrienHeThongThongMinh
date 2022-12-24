package com.example.demo4.controller;

import java.util.ArrayList;
import java.util.List;

//import javax.management.loading.PrivateClassLoader;

public class Apriori {
//	private int numTransactions;
//	private int minSup;
//	private int numItems;
//	private int n;
//	private int m;
//	private String frequentItemSet[n][m*m];
	public static void main(String[] args) {
		String data[][] = { { "A", "C", "D" }, { "B", "C", "E" }, { "A", "B", "C", "E" }, { "B", "E" } };
		String frequentItemSet[][] = new String[100][100];
		int Location[] = new int[100];
		foundFrequentItemSet(data, frequentItemSet, Location);
		System.out.println("Phong");
	}
	// Lay du lieu
//	@Query(value = "CALL SP_LAYDSHD(:masothue)", nativeQuery = true)
//	public void LOADDATA(List<HOADON> HD, List<CTHD> cthd) {
//		int n = HD.size();
//		int m = 100;
//		String A[][] = new String[n][m];
//		int i, j = 0;
//		for (HOADON hd : HD) {
//			A[i][j] = hd.getSoHD();
//			j++;
//			for (CTHD ct : cthd) {
//				if (ct.getSoHD == hd.getSoHD) {
//					A[i][j] = ct.getMaMH();
//					j++;
//				}
//			}
//			j = 0;
//			i++;
//		}
//	}

	public static void foundFrequentItemSet(String A[][], String frequentItemSet[][], int Location[]) {
		int count = 0;
//		int n = 0;
		String tmp;
		int rows = 0;
		int colums = 0;
		List<String> frequentTmp = new ArrayList<String>();
		// Tìm tập phổ biến 1 thuộc tính.
		String B[] = { "A", "B", "C", "D", "E" };
		for (int i = 0; i < 5; i++) {
			// tmp = LISTSP[i].getMAMH();
			tmp = B[i];
			for (int j = 0; j < 4; j++) {
				for (int k = 0; k < 4; k++) {
					// if(A[j][k] == null) break;
					if (tmp.equals(A[j][k])) {
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
		frequentTmp.remove(0);
		int xet = 0;
		int daXet = 0;
		int columsXet = 1;
		int dem = 0;
		int xetMoi = 0;
		while (cons) {
			if (rows == 0)
				break;
			// Duyệt hết một phần tử.
			for (int t = 0; t < frequentTmp.size() - 1; t++) {
				// Duyệt một phần tử
				for (int p = t; p < frequentTmp.size(); p++) {
					count = 0;
					// Kiểm tra một dòng.
					for (int i = 0; i < 4; i++) {
						// Kiểm tra A có phải là con của B?
						for (int k = 0; k < columsXet; k++) {
							for (int j = 0; j < 100; j++) {
								if (frequentItemSet[rowXet][k].equals(A[i][j])) {
									dem++;
									j = 0;
									break;
								}
							}
							// kiểm tra phần tử mới đã tồn tại chưa
							for (int j = 0; j < 100; j++)
								if (frequentTmp.get(p).equals(A[i][j])) {
									dem++;
									j = 0;
									break;
								}
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
				}
				rowXet = rowXet1;
				columsXet = 1;
			}
			rowXet1++;
			rowXet = rowXet1;
			columsXet = 1;
			frequentTmp.remove(0);
			if (frequentTmp.size() == 0)
				cons = false;
		}

	}

	public void foundLawDetermination(String data[][], String frequentItemSet[][], String itemHistory[],
			List<String> finaly) {
		int countCheck = 0;
		int countCheck1 = 0;
		boolean check = false;
		for (int i = 0; i < 100; i++) {
			countCheck = 0;
			countCheck1 = 0;
			for (int j = 0; j < 100; j++) {
				if (frequentItemSet[i][j] != null)
					countCheck++;
				for (int k = 0; k < 100; k++) {
					if (itemHistory[k].equals(frequentItemSet[i][j])) {
						countCheck1++;
						break;
					}
				}
			}
			if (countCheck == countCheck1) {
				check = true;
			}
			if (!check) {
				int checkConfidence = 0;
				String tmp[] = new String[100];
				String notConfidence[] = new String[100];
				int index = 0;
				int indexNotConfidence = 0;
				// Tao ra 2 mang x va y: X là mảng chứa các vật phẩm đã mua, y là các vật phẩm
				// không mua.
				for (int j = 0; j < 100; j++) {
					for (int k = 0; k < 100; k++) {
						if (itemHistory[k].equals(frequentItemSet[i][k])) {
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
				// Tim luật kết hợp của một dòng dữ liệu
				if (checkElement(data, index, tmp, i) == 1)
					for (int j = 0; j < indexNotConfidence; j++)
						if (CheckFrequent(finaly, notConfidence[j]) == 0)
							finaly.add(notConfidence[j]);
			}
		}
	}

	// Tính confidence
	// 1: add 0: duyệt dòng mới
	public int checkElement(String data[][], int n, String confidence[], int dangXet) {
		int count = 0;

		double maxCon = 75.0;
//		boolean revise = true;
		// Duyệt kiểm tra với vt là một mặt hàng có xác định được không?
		for (int i = 0; i < n; i++) {
			count = 0;
			for (int j = 0; j < 100; j++)
				for (int k = 0; k < 100; k++)
					if (data[i][j].equals(confidence[i])) {
						count++;
						break;
					}

			double con = (dangXet * 1.0 / count) * 100;
			if (con > maxCon || con == maxCon) {
				return 1;
//				revise = false;
			}
		}
		// chưa xác định được duyệt tiếp
		int columsXet = 1;
		int dem = 0;
//		boolean xetTiep = false;
		// Duyệt từng phần tử.
		for (int i = 0; i < n; i++) {
			// Duyệt theo dòng
			for (int k = 0; k < 100; k++) {
				dem = 0;
				// Kiểm tra a có phải là con của b không?
				for (int j = i + 1; j < columsXet + 1; j++) {
					for (int p = 0; p < 100; p++)
						if (data[k][p].equals(confidence[j])) {
							dem++;
							// p = 0;
							break;
						}
					for (int p = 0; p < 100; p++)
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
	public int CheckFrequent(List<String> S, String s) {
		if (S.size() == 0)
			return 0;
		for (String tmp : S) {
			if (s.equals(tmp))
				return 1;
		}
		return 0;

	}
}
