/*
2.4 建表类型[浮点/定值]
浮点类型(类型,M,D)
  float(m,d)     4字节   m 24   d 8
  double(m,d)    8字节   m 53   d 30
定值类型(类型,M,D)
  decimal(m,d)   动态占有 m 65   d 30

使用对比:
  精度要求不高,例如:身高,体重  ->  float / double
  精度要求特别高,钱 工资,价格  ->  decimal
*/
 