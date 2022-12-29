from sklearn.decomposition import TruncatedSVD
import sklearn
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import sys

# RECOMMEND SYSTEM FOR COLLABORATION FILTER USER BASED
# ====================================================
# Using with large of dataset of rating product that user bought yet
# So the question is how to create that dataset ?????
# Searching for CONTENT-BASED FILTER to build recommendation system. ==============


# Change rating field in CF to time clicked, bought +100?,
# Biến đổi các chỉ số quan tam đến sản phẩm thay cho rating ????

# %matplotlib inline
plt.style.use("ggplot")

#web_ratings = pd.read_csv('ratings_Beauty.csv')
web_ratings = pd.read_csv(
    'D:\\ThanNgocQuynh\\TNQ_IV_HKI\\PHAT-TRIEN-HE-THONG-THONG-MINH\\Project_Gr\DemoIntel\\rating_raw.csv')
web_ratings = web_ratings.dropna()
web_ratings.head()

# print(web_ratings.shape)

popular_products = pd.DataFrame(
    web_ratings.groupby('ProductId')['Rating'].count())
most_popular = popular_products.sort_values('Rating', ascending=False)
most_popular.head(10)

# Show popular product sale
most_popular.head(5).plot(kind="bar")

# Subset of Amazon Ratings
web_ratings1 = web_ratings.head(1000)
ratings_utility_matrix = web_ratings1.pivot_table(
    values='Rating', index='UserId', columns='ProductId', fill_value=0)
ratings_utility_matrix.head()

# ratings_utility_matrix.shape
# Transposing matrix
X = ratings_utility_matrix.T
X.head()

X1 = X
# Decompose matrix
SVD = TruncatedSVD(n_components=3)
decomposed_matrix = SVD.fit_transform(X)
decomposed_matrix.shape
# Correlation matrix
correlation_matrix = np.corrcoef(decomposed_matrix)
correlation_matrix.shape


# Ex: the customer click buy product with id = i

i = str(sys.argv[1])

product_names = list(X.index)
product_ID = product_names.index(i)
# product_ID
correlation_product_ID = correlation_matrix[product_ID]
# correlation_product_ID.shape
Recommend = list(X.index[correlation_product_ID > 0.90])
# Removes the item already bought by the customer
Recommend.remove(i)

print(Recommend[0:9])
