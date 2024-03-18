import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    x = customers[~customers['id'].isin(orders['customerId'])]
    x = x[['name']].rename(columns={'name': 'Customers'})

    return x
