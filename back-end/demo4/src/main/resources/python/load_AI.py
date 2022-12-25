import sys
import os
import pickle
from tokenize import String
import pandas as pd
from sklearn.preprocessing import StandardScaler
workingdirectory = os.getcwd


ProductBrand=sys.argv[2]
Material=sys.argv[3]
ProductionWay=sys.argv[4]
# df1 = pd.DataFrame({"Age":[float(age)],
#                     "EstimatedSalary":[float(estimate)],
#                    })
df1 = pd.DataFrame({"ProductBrand":[float(ProductBrand)],
                    "Material":[float(Material)],
                    "ProductionWay":[float(ProductionWay)]
                   })
filename = sys.argv[1]
loaded_model = pickle.load(open(filename, 'rb'))

predict = loaded_model.predict(df1)
print(predict[0])