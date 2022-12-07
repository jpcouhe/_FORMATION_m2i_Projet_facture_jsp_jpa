package com.example.projetfacture.dao;

import com.example.projetfacture.models.ProductEntity;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static com.example.projetfacture.utilities.EntityManager.getEntityInstance;

public class ProductDao implements Dao<ProductEntity> {

    private EntityManagerFactory emf = getEntityInstance();
//
//
//    public Optional<ProductEntity> getProductByFactureId(int id) {
//        List<ProductEntity> productList = new ArrayList<>();
//        EntityManager em = emf.createEntityManager();
//        EntityTransaction et = em.getTransaction();
//        try{
//            et.begin();
//
//            TypedQuery<InvoiceEntity> query = em.createQuery("SELECT f from InvoiceEntity f INNER JOIN ClientEntity c ON f.idClient = :idParam", InvoiceEntity.class)
//                    .setParameter("idParam", idClient);
////            invoiceList = query.getResultList();
//            et.commit();
//            return Optional.of(invoiceList);
//        }catch (Exception e){
//            e.printStackTrace();
//            if(et.isActive()) {et.rollback();}
//        } finally {
//            em.close();
//        }
//        return Optional.empty();
//    }

    @Override
    public Optional<ProductEntity> get(int id) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            ProductEntity product = em.createQuery("SELECT b FROM ProductEntity b WHERE b.id = :idParam", ProductEntity.class)
                    .setParameter("idParam", id)
                    .getSingleResult();
            et.commit();
            return Optional.of(product);
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
        return Optional.empty();
    }

    @Override
    public List<ProductEntity> getAll() {
        List<ProductEntity> productList = new ArrayList<>();

        EntityManager entityManager = emf.createEntityManager();
        EntityTransaction et = entityManager.getTransaction();

        try{
            et.begin();

            TypedQuery<ProductEntity> query = entityManager.createQuery("SELECT g from ProductEntity g", ProductEntity.class);
            productList = query.getResultList();
            et.commit();
        }catch (Exception e){
            e.printStackTrace();
            if(et.isActive()) {et.rollback();}
        } finally {
            entityManager.close();
        }
        return productList;
    }

    @Override
    public void save(ProductEntity productEntity) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            em.merge(productEntity);
            et.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
    }

    @Override
    public void update(ProductEntity productEntity) {
        ProductEntity productUpdated = null;
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            productUpdated = em.merge(productEntity);
            et.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
    }

    @Override
    public void delete(ProductEntity productEntity) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            ProductEntity productToDelete = em.find(ProductEntity.class, productEntity.getIdProduct());
            em.remove(productToDelete);
            et.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
    }
}