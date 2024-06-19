from database import connect as DB

class TODO:
	def __init__ (self, question, semester, grades):
		self._question = question
		self._semester = semester
		self._grades = grades

	# Getters
	def get_question(self): return self._question
	def get_semester(self): return self._semester
	def get_grades(self): return self._grades

  # Setters
	def set_question(self, question): self._question = question
	def set_semester(self, semester): self._semester = semester
	def set_grades(self, grades): self._grades = grades

	def __str__(self): return f"Title: {self._question}.\nAuthor: {self._semester} Ano: {self._grades}"

class BIBTEX:
	def __init__ (self, title, author, year, abstract):
		self._title = title
		self._author = author
		self._year = year
		self._abstract = abstract
			
	#Getters
	def get_title(self): return self._title
	def get_author(self): return self._author
	def get_abstract(self): return self._abstract
	def get_year(self): return self._year

  #Setters
	def set_title(self, title): self._title = title
	def set_author(self, author): self._author = author
	def set_abstract(self, abstract): self._abstract = abstract
	def set_year(self, year): self._year = year

	#Print reference
	def __str__(self): return f"Title: {self._title}.\nAuthor: {self._author} Ano: {self._year}"#\nAbstract: {self._abstract}"
	
	#Methods
	def refToDB(self):
		sql = "INSERT INTO paper (author, abstract, title, year) VALUES (%s, %s, %s, %s)"
		val = (self.get_author(), self.get_abstract(), self.get_title(), self.get_year())
		DB.cursor.execute(sql, val)
		DB.db.commit()

