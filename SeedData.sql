-- Fictional baseline rows for labelled coursework tasks.
-- Run via SetupCourseWork.sql after CourseWorkDB.sql.

-- Task 01: Clearance price selection (VIEW)
INSERT INTO RT01_PriceCard VALUES('PEN',3.5,1);
INSERT INTO RT01_PriceCard VALUES('KEY',25,1);
INSERT INTO RT01_PriceCard VALUES('PAD',5,0);

-- Task 02: Replenishment gaps view (VIEW)
INSERT INTO RT02_Bin VALUES(1,'K',2,5);
INSERT INTO RT02_Bin VALUES(2,'M',0,5);
INSERT INTO RT02_Bin VALUES(3,'P',4,4);

-- Task 03: Discounted invoice calculation (FUNCTION)
INSERT INTO RT03_Line VALUES(1,7,2,25,10);
INSERT INTO RT03_Line VALUES(2,7,1,10,0);
INSERT INTO RT03_Line VALUES(3,8,1,8,0);

-- Task 04: Delivery lateness report (VIEW)
INSERT INTO RT04_Dispatch VALUES(1,TRUNC(SYSDATE)-5,TRUNC(SYSDATE)-3);
INSERT INTO RT04_Dispatch VALUES(2,TRUNC(SYSDATE)-2,TRUNC(SYSDATE)-2);
INSERT INTO RT04_Dispatch VALUES(3,TRUNC(SYSDATE)+1,NULL);

-- Task 05: Prevent below-cost pricing (TRIGGER)
INSERT INTO RT05_CostCard VALUES('A',10,15);
INSERT INTO RT05_CostCard VALUES('B',3,4);

-- Task 06: Till tender reconciliation (VIEW)
INSERT INTO RT06_Tender VALUES(1,'A',10,'CASH');
INSERT INTO RT06_Tender VALUES(2,'A',20,'CARD');
INSERT INTO RT06_Tender VALUES(3,'B',5,'CARD');

-- Task 07: Weight-band carriage charge (FUNCTION)
INSERT INTO RT07_Slab VALUES(0,2,4);
INSERT INTO RT07_Slab VALUES(2,10,7);

-- Task 08: Approve a live quotation discount (PROCEDURE)
INSERT INTO RT08_Quote VALUES(1,100,SYSDATE+2,NULL);
INSERT INTO RT08_Quote VALUES(2,200,SYSDATE-1,NULL);

-- Task 09: Realised margin percentage (FUNCTION)
INSERT INTO RT09_ReceiptLine VALUES(1,'A',2,10,20);
INSERT INTO RT09_ReceiptLine VALUES(2,'B',1,3,0);

-- Task 10: Rank competing supplier bids (VIEW)
INSERT INTO RT10_Bid VALUES('A','V1',10,2);
INSERT INTO RT10_Bid VALUES('A','V2',11,1);
INSERT INTO RT10_Bid VALUES('A','V3',12,1);

-- Task 11: Transfer stock between depot cells (PROCEDURE)
INSERT INTO RT11_Cell VALUES('A',1,10);
INSERT INTO RT11_Cell VALUES('A',2,2);

-- Task 12: Prevent overspending a promotion budget (TRIGGER)
INSERT INTO RT12_PromoWallet VALUES('SPRING',100,20);
INSERT INTO RT12_PromoWallet VALUES('SUMMER',50,0);

-- Task 13: Settle a receivable exactly once (PROCEDURE)
INSERT INTO RT13_Receivable VALUES(1,75,NULL);
INSERT INTO RT13_Receivable VALUES(2,20,NULL);

-- Task 14: Reserve a basket line with captured pricing (PROCEDURE)
INSERT INTO RT14_Buyer VALUES(1,'Campus buyer',1);
INSERT INTO RT14_Buyer VALUES(2,'Dormant buyer',0);
INSERT INTO RT14_Lot VALUES('A',5,12);

-- Task 15: Revenue running total by day (VIEW)
INSERT INTO RT15_SalesJournal VALUES(1,TRUNC(SYSDATE)-2,10,0);
INSERT INTO RT15_SalesJournal VALUES(2,TRUNC(SYSDATE)-2,20,0);
INSERT INTO RT15_SalesJournal VALUES(3,TRUNC(SYSDATE)-1,30,0);
INSERT INTO RT15_SalesJournal VALUES(4,TRUNC(SYSDATE)-1,40,1);
