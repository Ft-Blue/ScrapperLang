grammar Scrapper;

root : 'Hello' ID;
ID : [a-z]+;
WS : [ \t\r\n]+ -> skip ;