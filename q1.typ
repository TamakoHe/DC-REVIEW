#set text(size: 15pt, font: ("Arial", "Source Han Serif SC"))
#set heading(numbering: "1.")
= Q1
== (b)
$ "Gain"=((G_2(s)G_1(s))[(1+G_3(s))G_4(s)])/(1+H_2(s)G_2(s)+G_2(s)G_1(s)H_1(s)) $
= Q2
== (a)
=== (i)
$ R(s)=2/(s(s+3)) $
Final response theorem:
$ R(infinity)=lim_(s->0) s R(s)=2/3 $
=== (ii)
steady-state error:稳态的时候，输入与输出的差
$ 1-2/3=1/3 $
== (b)
- zeros: $omega_n^2+2xi omega_n s=0$
  - $ s=- omega_n/(2 xi)=- 3/2 $
- poles: $s^2+6s+9=0$, $s_1=s_2=-3$
== (c)
/*
Explain why it is common in practical control system applications to enhance
derivative control with proportional control. Highlight the reasons for this
augmentation, emphasizing the complementary nature of proportional and derivative
control mechanisms. Additionally, elaborate on how this combination contributes to
improved system stability, responsiveness, and overall performance.
*/
Proportional control alone often results in a persistent error because the control effort diminishes as the error decreases, lacking the ability to fully eliminate the error unless the gain is very high.(只用PC,常常会导致持续的误差, 除非增益特别大， 否则无法把误差尽量消除)

Proportional control reacts only to the current error and does not anticipate future error trends, which can lead to sluggish or oscillatory responses to rapid changes.(PC缺乏对未来的预测性)

Derivative control alone is impractical because it only responds to the rate of change of the error, not the error itself. If the error is constant (even if large), the derivative term is zero, producing no control action.(如果误差是一个常数， 那么DC是无效的， 所以不能仅仅用DC)

Additionally, derivative control is sensitive to noise, as high-frequency noise in the error signal can lead to large, erratic control outputs.(DC对噪声特别敏感)

PD控制的作用：
+ Improve C/L system stability（增强控制系统的稳定性）
+ speed up the transient response
+ Lower overshoot
= Q3 
== (a)
$ G(s)=((s+2)(s+3))/(s(s+1)(s+4)) $
$ [R(s)-C(s)]k G(s)=C(s) $
$ C(s)/R(s)=(K G(s))/(1+K G(s)) $
ce:$1+K G(s)=0$
$ s(s+1)(s+4)+K(s+2)(s+3)=0 $
== (b)
=== (i)
open-loop zeros:$s=-2$,$s=-3$

open-loop poles:$s=0$,$s=-1$,$s=-4$
=== (ii)
$ -4,-3,-2,-1,0 $
- $s<-4$, 5 ponits, true 
- $-4<s<-3$, 4 ponits, false 
- $-3<s<-2$, 3 points, true 
- $-2<s<-1$, 2 points, false 
- $-1<s<0$, 1 points, true 
- $s>0$, false 
=== (iii)
number of asymptotes:$P-Z=3-2=1$

centroid(质心， 渐近线和实轴的交点)
$ sigma=(sum_"极点的实部"-sum_"零点的实部")/(P-Z)=0 $
angle:
$ theta=((2k+1)pi)/(P-Z) $
$ k=0,...,P-Z-1 $
$ theta=pi $
=== (iv)
break away point:
特征方程:$1+K G(s)=0$, 
$-1/G(s)$对$s$的微分为0就是脱离点
solution of $s^4+10s^3+39z^2+60s+24$
== (c)
close-loop ce:
$ s^3+(5+K)s^2+(4+5K)s+6K=0 $
第一行:$[1, 4+5K]$

第二行:$[5+K, 6K]$
#image("image-2.png")
第一列全部大于0，综合条件是$K>0$
= Q4 
