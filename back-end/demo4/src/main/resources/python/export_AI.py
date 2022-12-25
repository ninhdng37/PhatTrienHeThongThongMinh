import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.svm import SVC
import os
from sklearn.metrics import classification_report,plot_confusion_matrix
from sklearn import metrics
import pickle
df=pd.read_csv('training_product_to_number.csv')
X=df.iloc[:,0:3]
Y=df.iloc[:,3]
X_Train,X_Test,Y_Train,Y_Test=train_test_split(X,Y,test_size=0.25,random_state=0)
print("Training data:",X_Train.shape)
print("Testing data",X_Test.shape)
sc_X=StandardScaler()
# X_Train=sc_X.fit_transform(X_Train)
# X_Test=sc_X.transform(X_Test)
model=SVC(kernel='linear',decision_function_shape='ovr')
model.fit(X,Y)
# print(X_Test)
# print(Y_Test)
# df1 = pd.DataFrame({"ProductBrand":[float(0.6)],
#                     "Material":[float(0.333333333)],
#                     "ProductionWay":[float(0.5)]
#                    })
# df1=sc_X.transform(df1)                  
# print(df1)
# Y_Pred=model.predict(X_Test)
# # for x in Y_Pred:
# #     if x == 2:
# #         print(x)
# # print("hung")
# Y_Pred1=classfier.predict(df1)
# print(Y_Pred1[0])
filename ='AI.sav'
pickle.dump(model, open(filename, 'wb'))






