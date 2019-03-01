ALTER TABLE buys 
   add constraint check_positive check (price > 0);

ALTER TABLE sells 
   add constraint check_positive check (price > 0);

ALTER TABLE listing  
   add constraint check_positive check (list_price > 0);

ALTER TABLE listing  
   add constraint check_positive check (size > 0);

ALTER TABLE house  
   add constraint check_positive check (lot_size > 0);

ALTER TABLE house  
   add constraint check_positive check (storieS > 0);
