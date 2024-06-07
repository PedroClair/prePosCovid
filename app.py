from interface import frontEnd_prePosCovid as FE

def print_menu():
	print("\n---------------------Welcome--------------------------------")
	print("1. Generate boxplot question and class: (6, 2019-1)")
	print("2. Generate boxplot question in all classes: (6)")
	print("0. Exit")
	print("---------------------Student Performance------------------------\n")

def main():
	while True:
		print_menu()
		choice = input("Enter your choice: ")
		if choice == '1':
			FE.questionSemesterBoxPlot(6, "2019-2")
			#questionSemesterBoxPlot(6, 2022-1)
			#questionSemesterBoxPlot(6, 2022-2)
		elif choice == '2':
			FE.questionSemester(6)
		elif choice == '0':
			print("Exiting ... ")
			break
		else:
			print("Invalid choice. Please try again")
        
if __name__ == "__main__":
   main()