# import seaborn library 
import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd
  
# load the dataset 
data = sns.load_dataset('tips')

data2 = pd.read_csv('doc/file/csvToCompareStudentPerformance.csv')
  
# view the dataset 
print(data2.head(50))

# create grouped boxplot  
sns.boxplot(x = data2['Question'], 
            y = data2['Grade'], 
            hue = data2['Semester'])

plt.show()

