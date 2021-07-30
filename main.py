import numpy as np
import logging as log
import debugpy
from sklearn.datasets import make_hastie_10_2
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier

debugpy.listen(("0.0.0.0", 5678))
log.info("Waiting for client to attach...")
debugpy.wait_for_client()

def main():
    X, y = make_hastie_10_2(random_state=42)
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)
    
    clf = RandomForestClassifier(n_estimators=1000)
    clf = clf.fit(X_train, y_train)
    
    debugpy.breakpoint()
    predictions = clf.predict(X_test)
    
    with open("predictions.txt", "w") as f:
        np.savetxt(f, predictions)    
    
    debugpy.breakpoint()    
    log.info("Training complete!")
    
if __name__ == "__main__":
    main()
