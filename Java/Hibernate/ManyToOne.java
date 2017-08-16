@Id
@Column(unique = true, nullable = false)
private Integer id;

@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
@JoinColumn(name = "foreign_table_id")
private ForeignTable foreignTable;
