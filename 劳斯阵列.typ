#set text(size: 15pt, font: ("Arial", "Source Han Serif SC"))
#set heading(numbering: "1.")
特征方程：
$ a_n s^n+a_(n-1)s^(n-1)+...+a_1 s+a_0=0 $
= 第一行和第二行
分奇偶系数从高次到低次依次排列:
$ [a_n, a_(n-2), ...] $
$ [a_(n-1), a_(n-3), ...] $
= 从第三行开始
#image("image-1.png")
= 例子
特征方程:$s^5+2s^4+3s^3+2s^2+6s+4=0$
构造Routh表：
#image("2025-06-15-19-22-07.png")
Routh表如果第一列都为正（等于0不行），那就是稳定系统，否则是不稳定系统

通过Routh表变号的词数，(2->-2>2) 变了两次，该系统在s平面右半平面有两个极点。 
