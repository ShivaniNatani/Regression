import pickle
import numpy as np
import warnings
# Ignore DeprecationWarning
warnings.filterwarnings("ignore")


def read_pickle_file(file_path):
    with open(file_path, 'rb') as f:
        data = pickle.load(f)
    
    print(data)
    return data

def predict(model):
    # Making a prediction
    test_data = np.array([[6]])
    prediction = model.predict(test_data)
    print(f"Prediction for {test_data[0][0]}: {prediction[0]}")

if __name__ == '__main__':
    import sys
    model = read_pickle_file('model.pkl')
    predict(model)
