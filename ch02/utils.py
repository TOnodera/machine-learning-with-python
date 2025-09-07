import matplotlib.pyplot as plt
import numpy as np


def plot_feature_importances_cancer(model, cancer):
    n_features = cancer.data.shape[1]
    plt.barh(range(n_features), model.feature_importances_, align="center")
    plt.yticks(np.arange(n_features), cancer.feature_names)
    plt.xlabel("Feature importance")
    plt.title("Feature importances (Cancer dataset)")
    plt.show()
