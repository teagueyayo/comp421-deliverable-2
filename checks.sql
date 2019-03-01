ALTER TABLE buys 
   add constraint check_positive_price check (price > 0);

ALTER TABLE sells 
   add constraint check_positive_price check (price > 0);

ALTER TABLE listing  
   add constraint check_positive_price check (list_price > 0);

ALTER TABLE listing  
   add constraint check_positive_size check (size > 0);

ALTER TABLE house  
   add constraint check_positive_size check (lot_size > 0);

ALTER TABLE house  
   add constraint check_positive_stories check (stories > 0);
