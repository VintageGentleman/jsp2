CREATE TABLE pizza (
    pizza_id CHAR(6),
    pizza_name VARCHAR2(30),
    pizza_price NUMBER(6),
    avail_option NUMBER(4)
);

INSERT INTO pizza VALUES('A00000', 'ġ�� ����', 8000, 11);
INSERT INTO pizza VALUES('A00001', '���۷δ� ����', 9000, 13);
INSERT INTO pizza VALUES('A00002', '�Ұ�� ����', 10000, 81);
INSERT INTO pizza VALUES('A00003', '���۽����� ����', 10000, 35);
INSERT INTO pizza VALUES('A00004', '�������� ����', 11000, 132);

SELECT * FROM pizza;
COMMIT;

CREATE TABLE pizza_order (
    order_id CHAR(6),
    customer_id CHAR(6),
    pizza_id CHAR(6),
    address VARCHAR2(100),
    pizza_option NUMBER(3)
);

CREATE SEQUENCE pizza_order_seq 
    NOCYCLE NOCACHE MINVALUE 0 MAXVALUE 999999 START WITH 0;

SELECT * FROM pizza_order;
COMMIT;