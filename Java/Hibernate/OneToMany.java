@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
@JoinColumn(name="joined table's foreignkey") // = this table's key
@Where(clause="") // eg: "column_1 = true"
