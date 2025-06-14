#set text(size: 15pt, font: ("Arial", "Source Han Serif SC"))
#set heading(numbering: "1.")
= 什么是Dynamic system  
A dynamic system is one which is in motion（运动的系统）
= system’s equation of motion
用于描述动力学系统的方程，一般是描述输入(I/P)和输出(O/P)的关系，可以有多输入多输出(MIMO)
= First-Order system(一阶系统)
$ x^' (t)+1/tau x(t)=k u(t) $
= Second-Order system 
$ x^'' (t)+2xi omega_n x^' (t)+omega_n^2 x(t)=K u(t) $
= Laplace transform 
$ F(s)=cal(L){f(t)}=integral_0^infinity f(t) e^(-s t) d t $
$ delta(t)->^cal(L) 1 $
$ u(t)->^cal(L) 1/s $
$ t u(t)->^cal(L) 1/s^2 $
$ e^(-a t)u(t)->^cal(L) 1/(s+a) $
= 两种常见的输入
#image("2025-06-09-15-48-02.png")
= Control system(控制系统)
== 开环(open-loop)
#figure(caption: [开环控制系统])[#image("2025-06-09-15-58-50.png")]
== 闭环(close-loop)
#figure(caption: [闭环控制系统])[#image("2025-06-09-16-00-50.png")]
闭环控制系统的输出通过处理后会通过反馈通路影响输入。
= Block diagrams(框图)
- 一般是用于频域分析的
- 描述系统各个部分的连接关系
- 由功能块(functional blocks)组成
- 方形的是频域相乘，灯泡形状的是加减
= 控制系统的稳定性(Control System Stability)
== 极点(poles), 零点(zeros), 特征方程(Characteristic Equation)
对于传递函数
$ G(s)=C(s)/R(s) $ 
- poles:分母(deniminator)为0的根
- zeros:分子(numerator)为0的根
- CE(特征方程):把分母的多项式设为0得到的方程
== 稳定性
=== 怎么用单位冲激响应的极点零点来判断LTI系统的稳定性？
用极点判断: 极点:$sigma+j omega$
- 所有极点满足$sigma<0$(左半平面):stable, 离散时间$|z|<1$(单位圆内) 
- 由极点$sigma>0$, 离散时间$|z|>1$:unstable 
- 有边缘点:marginally stable 
=== 稳定$=>$特征方程的所有系数是正的(0不行), 稳定LTI系统的必要条件
=== 稳定的充要条件:Routh矩阵的第一列是正的 
= Feedback Control Systems(反馈控制系统)
+ 控制器比较实际的输出和预期的输出
+ 产生一个控制信号来减小实际和预期的差别
== Proportional Control (P)
控制信号和系统误差成正比
$ u(t)=K_p e(t) $
#figure(caption: [Proportional Control])[#image("2025-06-09-19-37-23.png")]
== Derivative Control (D)
控制信号和系统误差对时间的微分成正比
$ u(t)=K_d (d e(t))/(d t) $
_Tends to amplify noise_
== Integral Control (I) 
控制信号和误差对时间的积分成正比
$ u(t)=K_i integral_0^t e(t) d t $
_Constant disturbances can be cancelled with zero error_(对于常数干扰的处理不错)
== 混合信号
=== PD 
#image("2025-06-09-19-44-00.png")
$ u(t)=K_p e(t)+K_d (d e(t))/(d t) $
=== PI 
$ u(t)=K_p e(t)+K_i integral_0^t e(t) d t $
#image("2025-06-09-21-07-11.png")
=== PID 
$ u(t)=K_p e(t)+K_i integral_0^t e(t) d t+K_d (d e(t))/(d t) $
#image("2025-06-09-21-14-40.png")
= 二阶系统的标准形式
$ (omega_n^2)/(s^2+2 xi omega_n s+omega_n^2) $
= final value theorem  
$ lim_(t->infinity)f(t)=lim_(s->0)s F(s) $
= P1.md 