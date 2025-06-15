#set text(size: 15pt, font: ("Arial", "Source Han Serif SC"))
#set heading(numbering: "1.")
= Stability Margins
== 分类
+ gain margain
+ phase margain
表征了一个系统对于干扰的robustness 
== 例子
一个系统的开环传递函数是$G(j omega)$, 
其闭环传递函数是$(G(j omega))/(1+G(j omega))=G_"cl"(j omega)$
$ 20 log |G_"cl"(j omega)|=20 log|G(j omega)|-20 log |1+G(j omega)| $
前一个部分是开环传递函数的， 对于多余出来的部分$20 log |1+G(j omega)|$. 

对于对数函,$1+G(j omega)->0$的时候,会变得不稳定。也就是越接近$|G(j omega)|=1, angle G(j omega)=-pi$, 就越不稳定。 
- phase margain 
  
  在保持$|G(j omega)=1|$的情况下（对应的$omega$叫做gain crossover frequency），可以添加的额外相位滞后量，使系统达到闭环不稳定的边缘(距离$-pi$的距离)。
  $ Phi=pi+theta $
- gain margain
  phase crossover frequency:保证$angle G(j omega)=-pi$的$omega$, 对于在这条下的幅度$lambda$, phase margain的定义是$1/lambda$
  $ "Gm(dB)"=20log 1/(|G(j omega)H(j omega)|) $
  #image("2025-06-11-16-31-27.png")
如果没有对应的crossover频率，那么余量是未定义的。 
- 该衡量方案只对开环稳定系统有效
- 大余量的系统虽然稳定，但是通常反应缓慢
- 一般情况下，好的phase margain对于好的gain margain，反过来也一样
= 频域的稳定性
对于一个简单减法反馈系统, $G(s)$是开环传递函数,$H(s)$是反馈路径的传递函数:
$ [I(s)-O(s)H(s)]G(s)=O(s) $
闭环传递函数:
$ M(s)=(G(s))/(1+H(s)G(s)) $
要得到极点，可以解方程:$1+H(s)G(s)=0$
== Cauchy principle of argument 
柯西幅角定理是复变函数论中的描述函数在复平面闭合曲面内的零点和极点数量关系的重要定理。
核心公式: 
$ 1/(2pi i) integral.cont_tau (f^' (z))/(f(z)) d z=Z-P $
$Z$和$P$按照重数计。

其中要求$f(z)$是一个在闭合曲线$tau$内全纯函数(meromorphic function, 复可微, 允许有孤立奇点存在)。

积分方向取逆时针方向。

柯西幅角定理:逆时针围绕$tau$转一圈,$F(s)$其幅角的变化是$(Z-P)2pi$,$tau$上无极点或者无极点。
== Nyquist Stability Criterion(一种稳定性判据)
闭环传递函数的不稳定极点的数量等于开环传递函数的不稳定节点+$D(s)=1+H(s)G(s)$的Nyquist plot围绕原点的圈数。 
#image("2025-06-11-15-44-32.png")
保证系统的稳定的条件是闭环传递函数在右半平面的极点的数量为0 
- N:Nyquist曲线顺时针包围(-1,j0)的圈数(瞬时针为正，逆时针为负)
- P:开环传递函数$G(s)H(s)$在右半平面的极点数
- Z:闭环传递函数在右半平面的极点数
$ N=Z-P $
稳定意味着$Z=0$,$N=-P$
= unity feedback system和non-unity feedback system的区别
- unity:$H(s)=1$
- non-unity:$H(s)!=1$
= 稳定区域和不稳定点(Stability Regions or Point of Instability)
== 判断系统稳定性的方法
=== Routh-Hurwitz criterion 
#image("2025-06-15-22-04-39.png")
