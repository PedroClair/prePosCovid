from interface import frontEnd_prePosCovid as FE

def print_menu():
	print("\n---------------------Welcome--------------------------------")
	print("1. Example boxplot question and class: (question=6, class='2019-2')")
	print("2. Example boxplot question in all classes: (question=6)")
	print("3. Comparation bettwen question before COVID-19 and after using boxplot")
	print("0. Exit")
	print("---------------------Student Performance---------------------\n")

def main():
	while True:
		print_menu()
		choice = input("Enter your choice: ")
		if choice == '1':
			FE.questionSemesterBoxPlot(6, "2019-2")
		elif choice == '2':
			FE.questionSemester(6)
		elif choice == '3':
			FE.generalComparation()
		elif choice == '0':
			print("Exiting ... ")
			break
		else:
			print("Invalid choice. Please try again")
        
if __name__ == "__main__":
   main()