--1
CREATE INDEX idx_customerid_orderid ON orders (customerid, orderid);

--2
DROP INDEX idx_orders_customerid_orderid ON orders;

--3
CREATE TABLE returns (
  id INTEGER PRIMARY KEY,
  customerid VARCHAR(5) NOT NULL,
  date_returned DATE NOT NULL,
  productid INTEGER NOT NULL,
  quantity INTEGER NOT NULL,
  orderid INTEGER NOT NULL,
  FOREIGN KEY (customerid) REFERENCES customers(customerid),
  FOREIGN KEY (productid) REFERENCES products(productid),
  FOREIGN KEY (orderid) REFERENCES orders(orderid));

--4
ALTER TABLE returns RENAME COLUMN returndate TO return_date;

--5
ALTER TABLE returns RENAME TO bad_orders;

--6
ALTER TABLE bad_orders ADD COLUMN reason TEXT;

--7
ALTER TABLE bad_orders DROP COLUMN reason;

--8
ALTER TABLE bad_orders ALTER COLUMN quantity INT;

--9
DROP TABLE bad_orders;
