import os
import sys

# Ensure correct working directory
if os.path.basename(os.getcwd()) == "experiments":
    os.chdir(os.path.join("..",".."))

# Adds 'experiments' folder to path to load experiments_util
sys.path.insert(0, 'src/experiments')
# Load general utility functions
from experiments_util import *

gt_id = "contest_tmp2m" # "contest_precip" or "contest_tmp2m"
target_horizon = "34w" # "34w" or "56w"
experiment = "regression"

date_cols = create_date_data(gt_id, target_horizon, experiment)
lat_lon_date_cols = create_lat_lon_date_data(gt_id, target_horizon, experiment,
                                             forecast_models=["nmme","nmme0"])
