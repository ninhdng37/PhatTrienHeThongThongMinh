package com.example.demo4.repository;

import java.util.List;

import org.hibernate.Session;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo4.entity.Khachhang;
import com.example.demo4.entity.Mathang;


public interface MathangRepository extends JpaRepository<Mathang, String>{
	@Query("SELECT mh FROM Mathang mh WHERE mh.mamh = ?1")
	public Mathang getMHById(String id);
	@Query(value = "CALL getLastMathang();", nativeQuery = true)
    public List<Mathang> getMathangLast();
	@Query(value = "CALL getListMHIn(:ten);", nativeQuery = true)
	public List<Mathang> getInListID(@Param("ten") String ten);
	@Query(value = "CALL SP_LAYDSSP(:masothue);",nativeQuery = true)
	public List<Mathang> getLayDSSP(@Param("masothue") String masothue);
	@Query(value = "CALL SP_LAYDSSPDAMUA(:masothue);",nativeQuery = true)
	public List<Mathang> getLayDSSPDAMUA(@Param("masothue") String masothue);
//	@Query("")
//	public Mathang getInListID(String entity, String entityID, Class<E> type, List<String> isds);
//}
//
////get all in List id
//	public List<E> getInListID(String entity, String entityID, Class<E> type, List<String> ids){
//		if (ids == null) {
//			return null;
//		}
//		Session session = factory.openSession();
//		String hql = "From " + entity + " Where " + entityID + " in (";
//		for (String id : ids) {
//			//String str = "'" + id + "',";
//			String str = id + " ,";
//			hql += str;
//		}
//		hql = hql.substring(0,hql.length()-1);
//		hql += ")";
//		System.out.println("querry in getInListID = " + hql);
//		return session.createQuery(hql,type).getResultList();
	}