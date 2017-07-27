//テーブル		Student				sid
//テーブル		Teacher				tid
//中間テーブル 	Teacher_Student		ts_tid	ts_sid

@Entity
@Table(name = "Teacher")
TeacherEntity.Class
{
	@ManyToMany(fetch = FetchType.EAGER)
	// OR @ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
	@JoinTable(name = "Teacher_Student",
				joinColumns = {@JoinColumn(name = "ts_tid", referencedColumnName = "tid")},
				inverseJoinColumns = {@JoinColumn(name = "ts_sid", referencedColumnName = "sid")}
	)
	@WhereJoinTable(clause = "")
	@Where(clause = "")
	@OrderBy(clause = "")
	List<Student> students = new ArrayList<>();
	//OR Set<Student> students = new HashSet<>();
}

@Entity
@Table(name = "Student")
StudentEntity.Class
{
	@ManyToMany(mappedBy = "students")
	List<Teacher> teachers = new ArrayList<>();
	//OR Set<Teacher> teachers = new HashSet<>();
}
