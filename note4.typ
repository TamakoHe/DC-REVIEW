#set text(size: 15pt, font: ("Arial", "Source Han Serif SC"))
#set heading(numbering: "1.")
= 控制系统的稳定性
BIBO Stability: 有界输入一定对应有界输出。
== 稳定系统的优势
- Performance assurance 
- Robustness 
- Safety 
- Predictability 
- Ease of Implementation  
当然，一个所需的系统仅仅稳定是不行的
= Root Locus Analysis(根轨迹分析)
#image("2025-06-10-12-58-25.png")
特征方程:$s^2+a s+K=0$
$ s_1,s_2=-a/2 plus.minus sqrt([(a/2)^2-K]) $
+ $0<=K<=a^2/4$, 两个不同实数根
+ $K=a^2/4$, $s_1=s_2=-a/2$
+ $K>a^2/4$, 两个实部为$-a/2$的共轭根
根轨迹分析是研究极点随着模型参数，比如$K$从0到$infinity$的变化 
== Root Locus Construction(构造根轨迹)
$ C(s)/R(s)=(K G(s))/(1+K G(s)) $
$G(s)$是开环传递函数，意味着开环传递函数和闭环传递函数的零点是相同的 

$1+K G(s)=0$是闭环传递函数的特征方程，决定了其极点
=== angle criterion
对于分子$K G(s)$, $G(s)=-1/k+j 0$, 可以认为$G(s)$的角度是$pi+2 q pi$
$ K G(s)=K ((s-z_1)(s-z_2)...(s-z_m))/((s-p_1)(s-p_2)...(s-p_n)) $
$ arg G(s)=arg(s-z_1)+arg(s-z_2)+...-arg(s-p_1)-arg(s-p_2)-... $
$ arg G(s)=pi+ 2 q pi $
calibration equation(校准方程)
$ K=1/(|G(s)|) $
$ |G(s)|=(Pi_(i=1)^m |s-z_i|)/(Pi_(i=1)^n |s-p_i|) $
= ral.md 根轨迹分析的实例
= Frequency Response(频率响应)
定义为一个系统对正弦(准确来说是$e^(a t)$)输入的稳态响应。 

频率响应对于LTI系统和输入的振幅和初始相位无关。 
== 频域分析的一些概念 
+ Frequency Domain Representation: 用频域方式来表示信号 
+ Gain margain:在保持稳定的情况下系统的增益能增大多少？
+ Phase margain:在系统出现不稳定之前，可以向其添加多大的相位滞后量呢？
== 如何绘制频率响应
=== Nyquist plot(极点轨迹)
将$s=j omega$带入传递函数，$omega$从0到$+infinity$, 计算每个频率下的复数值，
然后绘制到二维平面
#image("2025-06-15-22-57-17.png")

=== Bode diagram 
这种图包含两个部分(对于传递函数G(s)):
+ Magnitude/gain
$ 20 log_10^(|G(j omega)|) $
单位:db
+ Phase
$ arg[G(j omega)] $
单位:rad(弧度)
#image("2025-06-15-22-40-24.png")
==== 传递函数的time constant form 
$ G(s)=(K(1+s/omega_"z1")(1+s/omega_"z2")...)/(s^r (1+s/omega_"p1")(1+s/omega_"p2")...) $
- 在这个形式的基础上进行计算
#image("2025-06-10-20-51-58.png")
#image("2025-06-10-21-08-14.png")
计算出增益和角度 
= 重点例题(n42.md)
#image("2025-06-11-12-57-47.png")
