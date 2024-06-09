# import seaborn library 
import seaborn as sns
import matplotlib.pyplot as plt
  
# load the dataset 
data = sns.load_dataset('tips') 
  
# view the dataset 
print(data.head(5))

# create grouped boxplot  
sns.boxplot(x = data['day'], 
            y = data['total_bill'], 
            hue = data['sex'])

plt.show()

