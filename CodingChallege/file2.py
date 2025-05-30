import pandas as pd

emp_df = pd.read_csv("employees.csv")
pro_df = pd.read_csv("projects.csv")

# print(emp_df.head(2))

# print(emp_df['Department'].unique())

# avg_salary = emp_df.groupby('Department')['Salary'].mean()
# print(avg_salary)

# from datetime import datetime
# emp_df['JoiningDate'] = pd.to_datetime(emp_df['JoiningDate'])
# current_year = datetime.now().year
# emp_df['TenureInYears'] = current_year - emp_df['JoiningDate'].dt.year
# print(emp_df[['Name','JoiningDate','TenureInYears']])

# value = emp_df[(emp_df['Department'] == 'IT') & (emp_df['Salary'] > 60000)]
# print(value)

# grouped = emp_df.groupby('Department')
# employee_count = grouped['EmployeeID'].count()
# total_salary = grouped['Salary'].sum()
# average_salary = grouped['Salary'].mean()
# summary_df = pd.DataFrame({
#     'EmployeeCount': employee_count,
#     'TotalSalary': total_salary,
#     'AverageSalary': average_salary
# })
# print(summary_df)

# sorted_df = emp_df.sort_values(by='Salary', ascending=False)
# print(sorted_df)

# merge_df = pd.merge(emp_df,pro_df,on = 'EmployeeID',how = "right")
# print(merge_df)

# merge_df = pd.merge(emp_df,pro_df,on = 'EmployeeID',how = "left")
# no_pro = merge_df[merge_df['ProjectID'].isna()]
# print(no_pro[['EmployeeID', 'Name', 'Department','ProjectID', 'ProjectName']])

merge_df = pd.merge(emp_df,pro_df,on = 'EmployeeID')
merge_df['TotalCost'] = merge_df['HoursAllocated'] * (merge_df['Salary'] / 160)
print(merge_df[['Name', 'ProjectName', 'HoursAllocated', 'Salary', 'TotalCost']])
