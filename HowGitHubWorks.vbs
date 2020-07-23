# Clone an existing repo.
git clone <repo_url>
# Navigate into newly created repo directory
cd <repo_name>


######################################
# ADD FILES
######################################

# Create a file, called clean_data.py
touch clean_data.py

# Add and commit clean_data.py...
git add clean_data.py
git status
git commit -m "First commit."

# Add cleanup code to clean_data.py...
git add clean_data.py
git status
git commit -m "Clean up provided data."

# Add code to export clean data...Note that `add .` adds
# everything in the current folder
git add .
git status
git commit -m "Export clean data as CSV."



######################################
# Branching
######################################


#To create a new, isolated development history, we must create branches.

# Create new branch and switch to it
# Long form: `git checkout --branch data_analytics`
git checkout -b data_analytics
#Alternatively, we can create a branch and then switch to it as two separate steps, though this is uncommon.

git branch new_branch_name
git checkout new_branch_name
Once we’ve created a new branch, we can develop as normal:

# Create file to contain data analysis
git add analysis.ipynb
git status
git commit -m "Add Jupyter Notebook for data analysis."

# Add notebook cells summarizing data
git add analysis.ipynb
git status
git commit -m "Add summary tables to Jupyter Notebook."

# Export analyzed data and/or plots
git add .
git commit -m "Export analysis results and save plots as PNG files."



######################################
# MERGING
######################################

# Move back to master
git checkout master

# Merge changes on data_analysis with code on master
git merge data_analysis

# Delete the data_analysis branch
git branch -d data_analysis