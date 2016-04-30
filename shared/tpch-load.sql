\COPY supplier FROM '/home/postgres/shared/supplier.csv' WITH DELIMITER AS '|';
\COPY customer FROM '/home/postgres/shared/customer.csv' WITH DELIMITER AS '|';
\COPY orders FROM '/home/postgres/shared/orders.csv' WITH DELIMITER AS '|';
\COPY nation FROM '/home/postgres/shared/nation.csv' WITH DELIMITER AS '|';
\COPY lineitem FROM '/home/postgres/shared/lineitem.csv' WITH DELIMITER AS '|';
\COPY part FROM '/home/postgres/shared/part.csv' WITH DELIMITER AS '|';
\COPY region FROM '/home/postgres/shared/region.csv' WITH DELIMITER AS '|';
\COPY partsupp FROM '/home/postgres/shared/partsupp.csv' WITH DELIMITER AS '|';
