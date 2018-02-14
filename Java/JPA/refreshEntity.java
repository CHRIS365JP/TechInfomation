public class XXXRepositoryImpl {
    
    @PersistenceContext
    private EntityManager entityManager;
    
    @SuppressWarnings("unchecked")
    public List<T> findBySQL() {
        String sql = "SELECT t FROM table t WHERE t.column IS NOT NULL ";
        Query query = entityManager.createQuery(sql);
        entityManager.getEntityManagerFactory().getCache().evictAll();
        List<T> queryResultList = query.getResultList();
        List<T> resultList = new ArrayList<>();
        for(T detail : queryResultList) {
            T mDetail = entityManager.merge(detail);
            entityManager.refresh(mDetail);
            resultList.add(mDetail);
        }
        return resultList;
    }
}
