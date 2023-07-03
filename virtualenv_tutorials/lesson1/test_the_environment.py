import pandas as pd
import numpy as np

df = pd.DataFrame({'A' : np.random.random(size=10),
                   'B' : np.random.random(size=10),
                   'C' : np.random.random(size=10)})
print(df.head())

print('Success! The Virtual Environment worked! Enjoy this little victory, you deserve it!')