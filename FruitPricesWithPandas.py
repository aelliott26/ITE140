import pandas as pd

array1 = pd.read_excel("Fruit-Prices-2022.xlsx")

array1.info()

print("\n \n \n \n \n ")
print(array1.loc[2, "Fruit"])
print(array1.iloc[2, 1])
print("\n \n \n \n \n ")
n =0
tasterating = []
for n in range(62):
  n += 1
  tasterating.append(n)
  
array1['TasteRating'] = tasterating

array1.info()