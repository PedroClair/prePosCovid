from database import connect as cnc

class BIBTEX:
	def __init__ (self, title, author, year, abstract):
		self._title = title
		self._author = author
		self._year = year
		self._abstract = abstract
			
	# Getters
	def get_title(self): return self._title
	def get_author(self): return self._author
	def get_abstract(self): return self._abstract
	def get_year(self): return self._year

    # Setters
	def set_title(self, title): self._title = title
	def set_author(self, author): self._author = author
	def set_abstract(self, abstract): self._abstract = abstract
	def set_year(self, year): self._year = year

	# Print reference
	def __str__(self): return f"Title: {self._title}.\nAuthor: {self._author} Ano: {self._year}"#\nAbstract: {self._abstract}"
	
	#Methods
	def refToDB(self):
		sql = "INSERT INTO paper (author, abstract, title, year) VALUES (%s, %s, %s, %s)"
		val = (self.get_author(), self.get_abstract(), self.get_title(), self.get_year())
		cnc.cursor.execute(sql, val)
		cnc.db.commit()