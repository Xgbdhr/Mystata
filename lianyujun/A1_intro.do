



          *     -------------------------------------
          *     -------- 计量分析与STATA应用 --------
          *     -------------------------------------
                    
          *        主讲人：连玉君 博士

          *        单  位：中山大学岭南学院金融系
          *        电  邮: arlionn@163.com
          *        主  页: http://blog.cnfol.com/arlion 

          *             ::第一部分::
          *              Stata 操作
          *         =====================
          *           第一讲  STATA简介
          *         =====================
	  
		  
   * cd D:\stata11\ado\personal\Net_course_A\A1_intro
   
	 cd `c(sysdir_personal)'Net_course_A\A1_intro
  
  
*----------------
*    本讲目录
*----------------
* 1.1  本课程简介
* 1.2  STATA概貌
* 1.3  输入和导入数据 
* 1.4  存储和导出数据  
* 1.5  浏览资料     
* 1.6  执行指令
* 1.7  修改资料
* 1.8  log 文件: 记录你的分析过程 
* 1.9  do 文档: 高效快捷地执行命令
* 1.10 stata与Excel、Word、LaTeX的亲密接触  
* 1.11 Stata 设定



































          *===================================
          *        计量分析与STATA应用
          *===================================

          *        主讲人：连玉君 博士

          *        单  位：中山大学岭南学院金融系
          *        电  邮: arlionn@163.com
          *        主  页: http://blog.cnfol.com/arlion 

          *           ::第一部分::
          *            Stata 操作
          *       =====================
          *         第一讲  STATA简介
          *       =====================
          *         -1.1-  本课程简介

		  
   
          
*------------------------
*->  Stata 是何方神圣？
*------------------------

   * 短小精悍

   * 运算速度极快

   * 绘图功能卓越

   * 更新和发展速度惊人


   
*--------------------
*-> 1.1  本课程简介
*--------------------

          *     ==本节目录==

          *     1.1.1 课程纲要
          *     1.1.2 课程特点
          *     1.1.3 课程配套资料
		  *     1.1.4 课程配套资料的使用方法
          *     1.1.5 讨论和建议
 
		  
*__________________
*  1.1.1 课程纲要

                                             /*
  第一部分：Stata 操作
    1．Stata简介
    2．数据处理
    3．STATA绘图
    4．矩阵运算
    5．STATA编程初步

  第二部分：计量分析与Stata应用(STATA高级班，已发布)
    1．普通最小二乘法（OLS）
    2．广义最小二乘法（GLS）
    3．非线性最小二乘法（NLS）
    4．最大似然估计（MLE）
    5．工具变量法与 GMM
    6．时间序列分析
    7．面板数据模型
    8. Stata高级程序
    9. Monte Carlo模拟与 Bootstrap(自抽样)

  第三部分：Stata 应用专题(即将发布)
    1． Mata 语句高级程序
    2.  Logit/Probit 模型
    3.  Tobit 模型
    4.  Duration 模型
    5.  事件研究法
    6.  Treatment 效应模型(Heckman, DID, PSM 等)
    7.  分位数回归模型
    8.  一般化线性回归模型(GLM)
    9.  多元判别分析(discrim)
    10. 因子分析和聚类分析
	11. 假设检验
	12. 广义矩估计 GMM 编程
	13. Panel Data B(门槛面板\Panel VAR\Panel联立方程等)
                                             */

*__________________
*  1.1.2 课程特点

   * 系统有序的结构安排，帮助您快速建立Stata的学习架构
   
   * 注重与实际应用相结合
   
   * 翔实的配套资料
    
	 *-本讲义的 do-file 以及 PDF 格式 



*______________________
*  1.1.3 课程配套资料

   *-本课程中使用的 do 文档和 ado 文档
   
     *-stata do-file 格式，可供练习操作
	   cd D:\stata11\ado\personal\Net_course_A
	   doedit A1_intro.do
	  *-or
	   doedit D:\stata11\ado\personal\Net_course_A\A1_intro.do
	 
	 *-PDF 格式，可供打印
	   cd D:\stata11\ado\personal\Net_course_A\pdf_dofiles
	   shellout  A1_intro.pdf 
	   
	 *-课程的详细目录，快速查询
	   shellout  Course_A_contents.pdf
	   
   
   *-范例数据
     cd D:\stata11\ado\examples  \\建议存放于此处
	 cdout
   
   * 对于登陆国际网有困难的学员，提供STATA官方范例数据包
   
   * STATA外部命令包：plus(500于条)
     ado  // 呈现已经安装的外部命令
   
		 
*________________________________
*  1.1.4 课程配套资料的使用方法

   *-1.1.4.1 课程配套资料的存放位置
   
     *-我们提供的压缩包：只需解压后放置于 D 盘根目录下即可
	 * 注意：D:\stata11 而非 D:\stata11\stata11
	 
	 *-若用自己的stata软件，需做如下设定:
	 
	 * (1) profile.do 文件放置于stata安装目录下，
	 *     如 D:\stata11\profile.do
	 *     注：若你已经自行设定了该文件，
	 *         请将我的profile文件合并到你的文件中
	 
	 * (2) 重新打开 stata，若上述文件设定无误，则会显示
	 *     “running D:\stata11\profile.do ...”
	 
	 * (3) 输入 sysdir 命令，会显示如下信息
	 *
     *      STATA:  D:\stata11\
     *    UPDATES:  D:\stata11\ado\updates\
     *       BASE:  D:\stata11\ado\base\
     *       SITE:  D:\stata11\ado\site\
     *       PLUS:  D:\stata11\ado\plus\     // 存放和下载外部命令的位置
     *   PERSONAL:  D:\stata11\ado\personal\ // 个人文件夹
     *   OLDPLACE:  D:\stata11\ado\myado\    // 自己编写的程序


   *-1.1.4.2 如何打来本讲义 (do-files)
     
	 *-方法1：依次点击 
	 *   "New do-file editor"-->File-->Open 指向如下路径
	 *    或输入 doedit，然后点击 File-->Open
	 *     D:\stata11\ado\personal\Net_course_A
	 *     双击 A1_intro 即可
          
     *-方法2：依次输入如下命令
        cd D:\stata11\ado\personal  //若屏幕左下方显示的路径已在此处，可省略
	    cd Net_course_A
        doedit A1_intro.do 
	  *-or
	   doedit D:\stata11\ado\personal\Net_course_A\A2_data.do
	   
	 
   *-1.1.4.3 关于范例数据
     
	 *-stata官方的范例数据
	 
	   help dta_contents  // (File-->Example Datasets)
	   
	   *-注：多数已经下载，存放于 D:\stata11\ado\Examples
	   * 打开方式File-->Open-->D:\stata11\ado\Examples
	   
     *-本课程的范例数据
        cd D:\stata11\ado\personal\Net_course_A\A1_intro
		cdout
		dir *.dta
   
   
*______________________
*  1.1.5 讨论和建议

   *-人大论坛【计量版】之【STATA专版】：
     view browse "http://www.pinggu.org/bbs/forum-67-1.html"
	  
   *-人大论坛【统计软件培训班VIP在线答疑区】
   *       http://www.pinggu.org/bbs/forum-114-1.html
     view browse "http://www.pinggu.org/bbs/forum-114-1.html"
      
   * 【Arlion 的博客】http://blog.cnfol.com/arlion
   *       在百度中搜索关键词 “连玉君 博客”
     view browse "http://blog.cnfol.com/arlion"
	 
   * 【E-mail】: arlionn@163.com
   
   * 【连玉君主页】：
     view browse   ///
	 "http://www.lingnan.net/intranet/teachinfo/dispuser.asp?name=lianyj"
   
   *-其它：参见 1.11.1 小节
   
 



   






   

          *===================================
          *        计量分析与STATA应用
          *===================================

          *        主讲人：连玉君 博士

          *        单  位：中山大学岭南学院金融系
          *        电  邮: arlionn@163.com
          *        主  页: http://blog.cnfol.com/arlion 

          *           ::第一部分::
          *            Stata 操作
          *       =====================
          *         第一讲  STATA简介
          *       =====================
          *        -1.2- STATA 概貌
		  *        -1.3- 输入和导入数据
          *        -1.4- 存储和导出数据
  
  
      cd `c(sysdir_personal)'Net_course_A\A1_intro
	  
	  
*-------------------
*-> 1.2  STATA 概貌 
*-------------------

              *     ==本节目录==

              *     1.2.1 stata界面       
              *     1.2.2 首次使用STATA的一些基本设定

			  
*__________________________
* 1.2.1 STATA界面

   * 四个窗口，两组菜单条

   *_____________________
   * 两种执行命令的方式
     
     * 第一种：菜单
	 
     * 第二种：命令
      
     * 实例 1->
     *   一份简单的 do 文档
         doedit L1_intro_log_cs.do
		 
		 *-在 do文档中执行命令的快捷方式：Ctrl+D
     
     * 实例 2->
     *   连玉君,钟经樊.中国上市公司资本结构动态调整机制研究.
	 *                               南方经济,2007(1):23-38.
         doedit L1_intro_NFJJ.do
	  
		  
*____________________________________        
*- 1.2.2 首次使用STATA的一些基本设定  

   *-初次使用时界面偏好的设定 
   
      help window manage
	  
   * -设定方法  
   *    Edit-->Preference-->General Preference 按喜好设定
   *    注：可进一步设定图形偏好、do-editor的风格等
   
   * -保存设定
   *    Edit-->Preference-->Save...-->New... 任意输入一个名称，如 song12
       window manage prefs save song_12
	
	
   * -调入已有的界面偏好设定： 
   *    Edit-->Preference-->Load...-->选择你喜欢的设定
       window manage prefs load song_12
	   
	   
   *-stata11 对中文的支持问题
   
   *  -[Results]窗口
   *    Edit-->Preference-->General Preference Results Color 
   *    选择 "Classic"
   *    如此可以保证-Results-窗口中的中文字符得以正常显示
   
   *  -[help viewer]窗口
   *    Edit-->Preference-->General Preference Viewer Color 
   *    选择 "Custom 1"
   *    去掉所有 "Bold" 前面的对勾，如此可保证help文件正常显示
   
   
   *-Stata11 手册的设定
   *    请将stata11手册(16个pdf文档)放置于 D:\stata11\utilities
   *    使用方法1：Help > PDF Documentation 可打开整个PDF帮助
   *    help regress --> [section]Also see --> Manual:[R] regress
        help regress 
		

   *-文件目录
      pwd                          // 显示stata当前工作的路径
      cd D:\stata11\ado\personal   // 进入指定文件夹
	  sysdir                       // stata官方文件的路径
	  doedit D:\stata11\profile.do // 每次启动时需要立刻执行的命令
	  * 详见：1.11.2 小节
	  
	  
	  
	  
   

          *===================================
          *        计量分析与STATA应用
          *===================================

          *        主讲人：连玉君 博士

          *        单  位：中山大学岭南学院金融系
          *        电  邮: arlionn@163.com
          *        主  页: http://blog.cnfol.com/arlion 

          *           ::第一部分::
          *            Stata 操作
          *       =====================
          *         第一讲  STATA简介
          *       =====================
		  *        -1.3- 输入和导入数据
          *        -1.4- 存储和导出数据
		  
* 实证分析的第一步：数据处理！
* 收集数据、存储、修改、分析、输出结果
		  
*----------------------
*-> 1.3 输入和导入数据  
*----------------------

     *     ==本节目录==

     *     1.3.1 手动输入
     *     1.3.2 从 .txt, excel 表格中粘贴
     *     1.3.3 使用stata命令：infile, insheet, infix
     *         1.3.3.1  以-tab-分隔的数据：  -insheet- 命令
     *         1.3.3.2  以 空格 分隔的数据： -infile- 命令
     *         1.3.3.3  调入STATA格式的数据：-use- 命令
     *         1.3.3.4  调入Excel格式的数据：-xmluse-命令
     *         1.3.3.5  行列对调的数据
     *     1.3.4 时间序列资料 
     *     1.3.5 面板资料
     *     1.3.6 STATA官方提供的资料
     *     1.3.7 其它软件中的数据


*                  =本节命令=  
* ================================================
* input, infile, insheet, type, rename, xpose, cd
* dataout
* ================================================


*____________
* 三种方式：

  *   手动输入
  *   从 txt 或 Excel 文档中粘贴
  *   使用 Stata 命令


*__________________________
*-1.3.1 手动输入 (极少使用) 

   clear
   input x y z
         1 2 3
         4 5 6
   end
   save mydata, replace  // 保存数据
   use  mydata, clear    // 调入数据
   
   
  *-1.3.1.1  -clear- 命令的使用 (stata11 更新了其功能)
    
	*-stata运算的原理(内存的使用)
	
	*-内存中存储的内容
	  sysuse auto, clear
	  des
	  label list
	     clear             // 注意Variables窗口的变化
	     label list
	  
	  sysuse auto, clear   // clear 并不影响硬盘上存储的数据
	  
	  sum price weigh turn
	  return list          // 内存中存储的统计结果
	  
	  reg price weight turn foreign
	  ereturn list         // 内存中存储的回归结果
	  
	     clear results
		 ret  list
		 eret list
	
	  matrix A = I(5)
	  mat list A
	  mat dir
	     clear matrix
		 mat dir
		  


*_________________________________      
*-1.3.2 从 .txt, excel 表格中粘贴     

* 基本要求：数据是-Tab-键分隔的

    shellout d1.txt  // -tab-键分隔的数据，可以直接copy-paste
    shellout d1.xls  // Excel格式的数据，亦可以直接copy-paste 
    
	edit             // 打开数据编辑器，贴入后可保存之
    

*___________________________________________________________
*-1.3.3 使用stata命令：infile, insheet, infix, use, xmluse

  *-1.3.3.1 以 -tab- 分隔的数据： -insheet-
  
    type d1.txt                  // 查看原始资料的形态
    type d1.txt, showtabs
    shellout d1.txt
    insheet using d1.txt, clear

    type d11.txt                 // 一份没有变量名称的数据
    insheet using d11.txt, clear
    rename v1  price
    rename v2  weight 
    rename v3  length

    * 亦可在输入数据时，指定变量名称
      insheet price weight length  using d11.txt, clear
    

  *-1.3.3.2 以 空格 分隔的数据： -infile- 
  
    shellout d21.txt
    insheet using d21.txt, clear     
                      //空格 分隔的数据无法直接用-insheet-命令导入
    insheet using d21.txt, clear delimiter(" ") 
                      //需要通过 delimiter 选项指定“分隔符号”
    infile v1 v2 v3 using d21.txt, clear  
                      //空格 分隔的数据用-infile-命令导入比较方便*/

    * 包含文字变量的情形
      shellout d2.txt
      infile using d2.txt, clear        // 错误的方式
      infile v1-v5 using d2.txt, clear  // 文字变量全部变成了缺漏值
      browse                            // 指定变量类型(下面)
      infile str30 v1  int v2  int v3  int v4  str10 v5 ///
             using d2.txt, clear  
      browse                                  

    * 逗号 分隔的数据
      type d3.txt
      shellout d3.txt
      infile str30 v1 int v2 int v3 int v4 str10 v5 using d3.txt, clear


  *-1.3.3.3 调入STATA格式的数据
  
    use d3.dta, clear
    use "D:\stata11\ado\Examples\XTFiles\invest2.dta", clear
    sysuse auto, clear
    
    *-说明：使用 STATA9 无法打开 STATA10\11 版本下存储的数据，
    *       此时可采用外部命令 -use10- 打开stata10存储的数据。


  *-1.3.3.4 调入Excel格式的数据：-xmluse-命令
  
    *-注意：需要把 file.xls 另存为 file.xml (另存类型选择"XML表格")
	
    dir *.xls
    shellout d1.xls
	
    xmluse d1.xls, doctype(excel) clear firstrow  // 错误！.xls 不可
	
    shellout d1.xls    // "另存为" -->XML表格 更改文件的存储类型
	
    dir d1.*   // 显示当前目录下以 d1. 开头的所有文件
	
    xmluse d1.xml, doctype(excel) clear firstrow  // 正确！.xml 可以
	
    browse    // 第一列数据很宽，为什么？
    des       // make 变量被自动存储为 str244
	
    compress  // 精简资料的存储结构
    des
    browse
	
	*-xmluse 的其它选项
	  help xmluse


  *-1.3.3.5 行列对调的数据   
  
    shellout d5.txt       // 常规数据    
    shellout d51.txt      // 对调数据
	
    insheet using d51.txt, clear 
    browse
    xpose, clear          // 对调
    browse
	
    rename v1 year        // 给变量重命名
    rename v2 invest
    rename v3 income
    rename v4 consume


*_____________________
* 1.3.4 时间序列资料

  help tsset
  
  sysuse gnp96.dta, clear
  
  tsset date                         // 指定时间变量
  
  gen gg = (gnp96-L.gnp96)/L.gnp96   // 增长率
  
  tsset, clear                       // 清除时间变量
  
  gen gg2 = (gnp96-L.gnp96)/L.gnp96  // 错误!


*_____________________
* 1.3.5 面板资料

  type d6_panel.txt
  insheet using d6_panel.txt, clear
  tsset code year    // stata8.0 以下版本适用
  xtset code year    // stata9.0 以上版本适用
  
* xpose 命令同样适用于面板数据资料
  shellout d6_pdpose.txt 
  insheet using d6_pdpose.txt, clear
  xpose, clear
  list, sepby(v1)


*____________________________
* 1.3.6 STATA官方提供的资料

  help dta_contents
  help dta_examples
  help dta_manuals
  use http://www.stata-press.com/data/r9/educ99gdp.dta,clear
  webuse lifeexp, clear    // 从stata官网获取数据(等价于如下命令)
  use http://www.stata-press.com/data/r10/lifeexp,clear


*________________________
* 1.3.7 其它软件中数据

  * -Stat/Transfer- 软件：快捷地在不同软件数据格式之间转换
  * 在stata内部，可以使用 -stcmd- 命令调用 Stat/Transfer，并完成数据的转换
  * 对于需要转换大量数据的用户而言，这个方法很好，且具有可重复性
  * 可采用 findit 命令搜索并下载如下命令，如
  
    findit usespss
  
  * -usespss- 将 SPSS 格式的数据导入 STATA
  
  * -fdasave- Save and use datasets in FDA (SAS XPORT) format
  
  * -usesas- 将 SAS 格式的数据导入 STATA 
  
  * -bugsdat- convert a Stata datafile into the S-plus format used in Winbugs

  * -Stata2mplus- Convert Stata files to Mplus files
  
  * -outdat- module to export data to other statistical packages
  *             such as LIMDEP, RATS, and SPSS
  
  * -dta2ras-, -ras2dta- ArcView/ArcInfo 与 stata 数据之间的相互转换
    
  *-How do I convert among SAS, Stata and SPSS files?
  * http://www.ats.ucla.edu/stat/stata/faq/convert_pkg.htm


  
   
*----------------------
*-> 1.4 存储和导出数据  
*----------------------   

    *     ==本节目录==

    *  1.4.1 存储数据
    *  1.4.2 导出和转换
    *      1.4.2.1 -outfile-命令： 导出为 .raw 文本格式
    *      1.4.2.2 -outsheet-命令：导出为 -Tab- 分隔的文本文件
    *      1.4.2.3 -xmlsave-命令： 导出为 XML 格式
    *      1.4.2.4 -dataout-命令： 导出为 Word,Excel,Tex
    *      1.4.2.5 -outdat- 命令： 导出为 spss, rats, limdep 格式  

  
*__________________
*- 1.4.1 存储数据

    shellout d3.txt
    infile str30 v1 int v2 int v3 int v4 str10 v5 using d3.txt, clear  
    save d3.dta, replace 
	
    * 注意：通常只有在初次导入数据时我们需要保存之，
    *       此后的处理都在do-file中进行，只需保存do-file即可。
	

*___________________________________  
*- 1.4.2 导出和转换(另存为其它格式)

  *-1.4.2.1 -outfile-命令：导出为 .raw 文本格式
  
      sysuse auto, clear
      outfile using myauto,replace 
	                         // 存为文本格式,空格分隔,80字符/行
      dir myauto*
      winexec notepad myauto.raw // 打开输出的文本文档，.raw格式
	  
      *-选项设定 [wide] 选项  
      outfile using myauto, wide replace 
	                       // 每个观察值一行，没有80/行的限制 
      dir myauto*
      winexec notepad myauto.raw 
	  
      *-导出部分变量 
      outfile price-trunk foreign using myauto, wide replace 
      dir myauto*
      winexec notepad myauto.raw  
 	  
      
  *-1.4.2.2 -outsheet-命令：导出为 -Tab- 分隔的文本文件
  
      sysuse auto, clear
      keep in 1/10
      outsheet price wei len using myauto, replace
      dir myauto*
      winexec notepad myauto.out
         
		 
  *-1.4.2.3 -xmlsave-命令：导出为XML格式
  
      sysuse auto, clear
      xmlsave auto, doctype(excel) replace 
      shellout auto.xml
	  
 
  *-1.4.2.4 -dataout-命令：导出为 Word,Excel,Tex
  
    *-导出当前数据 
      sysuse auto, clear
      dataout, save(dataout01) excel replace
      dataout, save(dataout01) word replace
	  
	  keep make price weight rep78 gear foreign 
	  keep in 1/30
      dataout, save(dataout01) tex replace
    
	*-其它数据文件的转换
      shellout d1.txt 
      dataout using d1.txt, excel save(d1_excel) replace
      
      
	  
  *-1.4.2.5 -outdat- 命令：导出为 .spss, .rats, .limdep 格式    
      
	  help outdat





	  
	  
	  
	  

          *===================================
          *        计量分析与STATA应用
          *===================================

          *        主讲人：连玉君 博士

          *        单  位：中山大学岭南学院金融系
          *        电  邮: arlionn@163.com
          *        主  页: http://blog.cnfol.com/arlion 

          *           ::第一部分::
          *            Stata 操作
          *       =====================
          *         第一讲  STATA简介
          *       =====================
          *         -1.5-  浏览资料

  
      cd `c(sysdir_personal)'Net_course_A\A1_intro
	  
	  
*-------------------
*-> 1.5   浏览资料
*-------------------

         *     ==本节目录==
         
         *     1.5.1 变量的名称
         *     1.5.2 查看资料的结构
         *         1.5.2.1 更改变量的存储类型
         *         1.5.2.2 -list- 命令的使用
         *         1.5.2.3 定义变量的显示格式
         *         1.5.2.4 数据和变量的标签 
         *         1.5.2.5 附加说明文字
         *         1.5.2.6 搜索变量
         *     1.5.3 基本统计量
         *         1.5.3.1 -summarize- 命令
         *         1.5.3.2 -codebook- 命令
         *         1.5.3.3 -inspect- 命令
         *         1.5.3.4 列表统计(table, tabulate)
         *         1.5.3.5 论文格式的统计表格(tabstat)  
         *         1.5.3.6 将统计结果输出到txt文档中
   
   
*                    =本节命令=  
* ==================================================
* sysuse, use, describe, compress, label, summarize
* codebook, inspect, histogram, kdensity
* help, search, findit, recast, format
* ==================================================


*__________________
*-1.5.1 变量的名称

  *-基本规则：
    * (1) 由英为字母、数字或 _ 组成，至多不超过 32 个；
    * (2) 首字母必须为 字母 或 _ ；
    * (3) 英文字母的大写和小写具有不同的含义；
  
  *-示例：  
    *  abc_1 a1 _a2 _Gdp_ 都是合理的变量名
    *  5gdp 2invest 则不是；
  
  *-特别注意：
    *  建议不要使用 “_” 作为变量的第一个字母，
    *  因为许多stata的内部变量都是以 _ 开头的，
    *  如，_n, _N, _cons, _b 等等。
	
       help _variables


*_______________________
*-1.5.2 查看资料的结构

  sysuse auto, clear
  describe
  describe, detail
  
  * 另一个相似的命令
    help ds
    sysuse nlsw88.dta, clear
    ds
    ds, has(type int)
    
    ds, not(type byte)
    ret list
    dis "`r(varlist)'"  // 编程时，可以利用此返回值
    browse `r(varlist)'

    ds, detail
    

  *-1.5.2.1 更改变量的存储类型
  
    sysuse auto, clear
    list gear_ratio in 1/5
    d gear_ratio
    recast int gear_ratio, force
    d gear_ratio
    list gear_ratio in 1/5
    compress                // 自动精简资料的存储格式 
  
  
  *-1.5.2.2 -list- 命令的使用      -list-
  
    list price, sep(10)
    list price in 1/30, sep(0)
    sort rep78
    list make price rep78 in 1/20, sepby(rep78)
    list price weight length, noobs
    list price weight length, noobs clean
    

  *-1.5.2.3 定义变量的显示格式     -format-
    
    * 简介：
      * str18    文字型变量，每个观察值占据18个空格
      * %-18s    靠左列印于屏幕上；若  %18s，则靠右列印；
	  *                            若 %~18s, 则居中列印
      * %8.0g    在 `8.0' 的原则下，以尽量多的有效位数列出
      * %6.2f    总共占6个空格，小数位占两个空格
	  
    * 示例：
      list price gear in 1/5
      format price %6.1f
      format gear  %6.4f
      list price gear in 1/5


  *-1.5.2.4 数据和变量的标签        -label-
      
    *-a 样本标签
      sysuse auto, clear
      des 
      label data "这是一份汽车价格资料"
      des
      
    *-b 变量的标签
      label var price    汽车价格
      label var foreign  "汽车产地(1 国外; 2 国内)"
      des
      
    *-c 类别变量的文字标签(数字-文字对应表)  -label define-
      * label define 标签名
      * label values 变量名 标签名  //将变量值和标签联系起来
      browse
      label define repair  1 "好" 2 "较好" 3 "中" 4 "较差" 5 "差"
      label values rep78 repair
      browse
      
    *-d 标签的管理  -labelbook-
      label dir
      label list
      label drop repair
      label list
      labelbook      // 推荐使用
      * 另一个例子
        sysuse nlsw88, clear
        labelbook


  *-1.5.2.5 附加说明文字   -notes-
  
    sysuse auto, clear
    note: Wang:请确认-rep78-变量中缺漏值的原因        
	                          // 为整份数据加说明
    notes
    note weight: Su, 注意，该变量与length高度共线性！ 
	                          // 为单个变量加说明
    notes

  
  *-1.5.2.6 搜索变量   -lookfor-
  
    use nlswork_simple.dta, clear
    lookfor code
    lookfor wage
    lookfor married
    lookfor code married
    
    use d_lookfor.dta, clear  // 对于大型数据非常方便
    lookfor "固定资产"
    lookfor "现金流量净额" 
    lookfor "借款"


*_____________________
*-1.5.3  基本统计量
  
  *-1.5.3.1 -summarize- 命令
  
    sysuse auto, clear
    summarize 
    format price %6.2f
    sum price, format
    su  price wei, detail

	
  *-1.5.3.2 -codebook- 命令
  
    codebook price weight
	
    codebook rep78        // 当一个变量中的非重复值小于9个时，
                          // Stata便会视此变量为类别变量，并列表统计之
				
				
  *-1.5.3.3 -inspect- 命令
  
    inspect price weight length  // 相对于 codebook 命令，该命令还进一步绘制出直方图，
                                 // 以便对样本的分布有更直观的了解
                             
							 
  *-1.5.3.4 列表统计 -table-, -tabulate-
  
    sysuse auto,clear
	
    tabulate foreign
	
    tab      rep78
	
    table    rep78
	
    tab   foreign rep78
	
    table foreign rep78, c(mean price) f(%9.2f) center row col

	
	
  *-1.5.3.5 论文格式的统计表格  -tabstat-
  
    sysuse auto, clear
	
    tabstat price weight length
	
    tabstat price weight length, stats(mean p50 min max) 
	
    tabstat price weight length, stats(mean med min max) ///
	                             col(s) format(%6.2f)
	
    tabstat price weight length, s(mean p25 med p75 min max) ///
	                             c(s) f(%6.2f)
	
    tabstat price weight length, s(mean sd p25 med p75 min max) ///
                                 c(s) f(%6.2f) by(foreign)

								 
  *-1.5.3.6 将统计结果输出到txt文档中   -tabexport-
  
    sysuse auto, clear
	
    tabexport turn trunk length using results.txt, ///
	      s(mean sd) replace
    shellout results.txt
	
    tabexport turn trunk length using results.txt,  ///
          s(mean sd) by(foreign) noreshape replace
		  
    tabexport turn trunk length using results.txt,  ///
          s(count mean sd) by(foreign) replace format(%3.0f %9.2f)
		  
    *-说明：format() 选项与 s() 选项相对应
      type results.txt
      shellout results.txt


*_____________________
*-1.5.4 基本图形分析

  *-1.5.4.1 直方图: 样本的总体分布情况
  
    sysuse nlsw88.dta, clear
	
    histogram wage
	
    gen ln_wage = ln(wage)
    histogram ln_wage          // 对数转换后往往更符合正态分布
	
    histogram hours,frequency  // 纵坐标为对应的样本数，而非比例
    histogram ttl_exp, normal  // 附加与该变量 N(u,s2) 参数值相同的正态分布图
	
    histogram grade      
    histogram grade, discrete  // 离散变量的直方图必须附加 discrete 选项

	
	
	
  *-1.5.4.2 密度函数图 
  
    kdensity wage              // 它是直方图的平滑曲线
    kdensity ln_wage, normal
	
 
  *-1.5.4.3 散点图
  
    sysuse auto, clear
    twoway scatter price wei
    scatter mpg turn
  
  
  *-1.5.4.4 相关系数矩阵
  
    sysuse auto, clear
    graph matrix price wei len mpg



	
	
	

	
	

          *===================================
          *        计量分析与STATA应用
          *===================================

          *        主讲人：连玉君 博士

          *        单  位：中山大学岭南学院金融系
          *        电  邮: arlionn@163.com
          *        主  页: http://blog.cnfol.com/arlion 

          *           ::第一部分::
          *            Stata 操作
          *       =====================
          *         第一讲  STATA简介
          *       =====================
          *          -1.6-  执行命令 
		  *          -1.7-  修改资料
  
  
      cd `c(sysdir_personal)'Net_course_A\A1_intro
	            
          
*-------------------
*-> 1.6   执行命令
*-------------------

         *     ==本节目录==
         
         *     1.6.1 概览
         *     1.6.2 命令的适用范围
         *         1.6.2.1 列举多个变量
         *         1.6.2.2 样本范围的限制
         *     1.6.3 命令作用的增减：使用选项
         
         
*______________
*-1.6.1  概览
  
    * stata命令的通用格式: command varlist [if] [in] [ , options] 
    * [if] [in] 用于限制样本范围 
    * [options] “可选项”，增加了命令的弹性
  
       help sum                // 解读帮助文件
     
       sysuse nlsw88, clear
       sum wage hours ttl_exp if race==2, detail
       list wage grade race in 1/100, sepby(race)
       
    *-特别提醒：
      * (1) "[ ]" 为可选项，可以不填，但不在[]中的内容都必须填写
      * (2) 整个命令“裸露”的逗号只有一个，此前为命令主体，此后为选项
      *     虽然选项中可能有子选项，但子选项前的逗号并未“裸露”
      * 例如：
        sysuse sp500, clear
        twoway line close date, title("收盘价", place(left))


*______________________
*-1.6.2 命令的适用范围

  *-1.6.2.1 列举多个变量
  
    sum age race married never_married grade
    sum age-grade
    sum s*           // "*" 是孙悟空，可以表示`任何'长度的字母或数字
    sum ?a?e         // "?" 是猪八戒，只能替代`一个'长度的字母或数字 

  *-1.6.2.2 样本范围的限制
  
    sum in 10/20                       // 第10至第20个观察值之间的观察值
    sum wage in -5/-1                  // 倒数...
    sum wage hours if race == 1        // 等于
    sum wage if race ~= 3              // 不等于
    sum wage if (race==2)&(married==1) // 且
    sum wage if (race==3)|(married==0) // 或
    sum wage if hours >= 40            // 大等于



*_________________________________
*-1.6.3 命令作用的增减：使用选项

    sum wage , d
    
    *-说明：stata支持多数命令和选项的缩写，
    *       帮助文件中带下滑线的部分表示可以缩写的程度
    
    sysuse sp500, clear
    replace volume = volume/1000
    #delimit ;
        twoway (rspike hi low date)
               (line   close  date)
               (bar    volume date, barw(.25) yaxis(2))
                in 1/57
          , yscale(axis(1) r(900 1400))
            yscale(axis(2) r(  9   45))
            ylabel(, axis(2) grid)
            ytitle("股价 -- 最高, 最低, 收盘",place(top))
            ytitle("交易量 (百万股)", axis(2) bexpand just(left))
            xtitle(" ")
            legend(off)
            subtitle("S&P 500", margin(b+2.5))
            note("数据来源: 雅虎财经！");
    #delimit cr


	  
	
	
*-------------------
*-> 1.7  修改资料
*-------------------

* 目的： 
*   (1) 对现有变量进行修正和转换
*   (2) 产生新的变量

         *     ==本节目录==
         
         *     1.7.1 数学表达式
         *     1.7.2 变量的创建和修改
         *         1.7.2.1 变量的存储类型
         *         1.7.2.2 创建新变量
         *         1.7.2.3 修改旧变量
         *         1.7.2.4 删除变量和样本值
         *         1.7.2.5 移动变量窗口中变量的位置
         *         1.7.2.6 克隆已有变量
         *         1.7.2.7 拆分变量
         *     1.7.3 样本值的排序


*                     =本节命令=  
* =====================================================
* gen, replace, drop, order, aorder, move, sort, gsort, 
* assert, count, compare, encode, decode, recode, 
* note, notes, notes drop, char, char list
* =====================================================

*___________________
*-1.7.1 数学表达式

  * 三类：关系运算；逻辑运算；算术运算

  * 关系运算符  ==;  >;  <;  >=;  <=;  !=;  ~=
    sysuse auto,clear
    list price if foreign == 0
    sum price  if foreign != 1

  * 逻辑运算符： & -->(与) ;  | -->(或)
    sysuse auto, clear
    sum price wei if (foreign==1 & rep78<=3)
    sum price wei if (rep78==1) | (rep78==5) | (foreign !=0)
    sum price wei if (rep78>2 & rep78<5) | (price>10000)

  * 算术运算符：+ - * / ^(幂)
    display 5^2
    dis     1 - 3*2 + 4/5 - 9^3 
    dis     2*_pi 


*_________________________
*-1.7.2 变量的创建和修改

  *-1.7.2.1 变量的存储类型

    *- 整数的存储类型
       * byte     字节型     (-100, +100)
       * int      一般整数型 (-32000, +32000)
       * long     长整数型   (-2.14*10^10, +2.14*10^10)，即，正负21亿 
	   
    *- 小数的存储类型
       * float    浮点型   8  位有效数字
       * double   双精度   16 位有效数字
	   
    *- 字符型变量
       * str#     如 str20 表示该变量最多包含 20 个字符
       *          每个汉字占两个字符
       sysuse auto, clear
       des 
       gen x = "中国"     // 一个汉字占两个字符
       des x
      
      
  *-1.7.2.2 创建新变量      -generate-
  
    *-基本方式
      sysuse auto, clear
	  
      generate price2  = price^2    // 可简写为 gen
      gen      price2f = price^2 if foreign==1
      gen      wlratio = weight/length 

	  
    *-数学函数转换
	
       help math functions
	   
       sysuse nlsw88.dta, clear
	   
       gen ln_wage    = ln(wage)      // 取对数
       gen sqrt_hours = sqrt(hours)   // 开根号
	   
       gen int_wage   = int(wage)     // 取整
       gen floor_wage = floor(wage)   // 等价于取整
       gen ceil_wage  = ceil(wage)    // 取整数上限
	   
       list *wage in 1/5

	   
  *-1.7.2.3 修改旧变量   -rename-, -renvars-,  -replace-
    
    *-单个变量重命名   -rename-
      rename displacement  disp
   
    *-批量修改变量名称 -renvars-
      help renvars
	  sysuse auto, clear
      renvars price weight length  /  p wei len
      renvars p-wei, postfix(_new)  // 批量增加后缀
      renvars mpg , prefix(old_)       // 批量增加前缀
      
	  
    *-修改观察值       -replace-
	
      sysuse auto, clear
      replace price = 10000 if (price>10000)
      gen byte  bad = 0      // 事先指明变量类型是个不错的习惯
      replace bad = 1 if (rep78>3)
      list rep78 bad
	  
      *-更为合理的定义方式
        replace bad=. if (rep78==.)
        list rep78 bad
		
      *-文字变量观察值的修改
         des make 
         list make in 50/59
         replace make="宝马 320i" if (make=="BMW 320i") //要加双引号!
         list make in 50/59
      

  *-1.7.2.4 删除变量和样本值 -drop-
  
    *- Stata官方命令 -drop-
       drop price2             // 删除一个变量
       drop wlratio-bad2       // 删除一组变量
       list price in 1/5
       drop in 1/3             // 删除指定区间的观察值
       drop if (rep78==.)      // 删除满足特定条件的观察值
       list price in 1/5
       drop _all               // 删除内存中的所有变量
  
  
    *- 一些有用的外部命令  -cap drop-; -dropvars-; -safedrop-
	
       *-cap drop-
         help capture
		          
		 capture drop price2
         gen price2 = price^2
         cap drop prcie wlratio bad2    // 能否删掉这三个变量？
         gen wlratio = weight/length
    
       *-dropvars- 
         dropvars price2 wlratio bad2   // 等价于如下三条命令
           * cap drop price2
           * cap drop wlratio
           * cap drop bad2
         gen wlratio = wei/len
     
       *-safedrop-
         sysuse auto, clear
         drop forei
         sysuse auto, clear
         safedrop forei
         safedrop foreign gear_ratio
      

  *-1.7.2.5 移动变量窗口中变量的位置 -order- -aorder- -move-
     
     sysuse auto, clear
	 
     order price weight length foreign
	 
	 order trunk, before(weight) // 把trunk移到weight之前
	    sysuse auto, clear
	    move trunk weight        // 功能同上,stata11以前版本适用
		
	 order _all, alpha           // 按字母对变量排序
        aorder                   // 功能同上,stata11以前版本适用
		
     
  *-1.7.2.6 克隆已有变量  -clonevar-
    
    * 把已有变量的标签，数字-文字对应表等所有内容都复制过去
      help clonevar 
	  
      sysuse auto, clear
	  
      clonevar foreign_c = foreign
	  
      gen foreign_g = foreign
      sort mpg
      list foreign* in 1/10
      browse


  *-1.7.2.7 拆分变量      -separate-
      
      sysuse auto, clear
      separate mpg, by(foreign)
   
      * 等价方式：但没有变量标签
        gen mpg_f = mpg if (foreign==1)
        gen mpg_d = mpg if (foreign==0)
        
        browse


*____________________
*-1.7.3 样本值的排序    -sort-  -gsort- 

      sysuse nlsw88.dta, clear
	  
      sort wage                 // 默认为升序排列
         list wage in 1/10
         dis "max = " wage[_N]
         sum wage
		 gen nag_wage = -wage
		 sort nag_wage          // 降序排列
		 
      gsort -wage               // 降序排列
         list wage in 1/10
		 
      gsort wage, gen(numb)     // 产生排序编号
         list numb wage in 1/10 
   

  
  
  
  
  
  
  
  
          *===================================
          *      计量分析与STATA应用
          *===================================

          *        主讲人：连玉君 博士

          *        单  位：中山大学岭南学院金融系
          *        电  邮: arlionn@163.com
          *        主  页: http://blog.cnfol.com/arlion 

          *           ::第一部分::
          *            Stata 操作
          *       =====================
          *         第一讲  STATA简介
          *       =====================
          *          -1.8- log 文件 
  
      cd `c(sysdir_personal)'Net_course_A\A1_intro
	

*----------------------------------
*-> 1.8 log 文件: 记录你的分析过程
*----------------------------------

         *     ==本节目录==
         
         *     1.8.1 log 文件简介
         *     1.8.2 将 log 文件转换为网页
         *         1.8.2.1 -log2html- 命令：制作“单页”网页
         *         1.8.2.2 -hyperlog- 命令：制作“框架型”网页 
         *         1.8.2.3 其他命令 
         
*____________________
*-1.8.1 log 文件简介

  * 记录你的分析过程: log 文件 

    help log

    *- 示例 1：
       doedit L1_intro_log_cs.do
       dir *.log
       shellout paper01.log
    
    *- 示例 2：
	*
    *---------记录开始---------
	*
      cd D:\stata11\ado\personal\Net_course_A\A1_intro
      sysuse auto, clear
      
      log using mylog1.log, text replace // _mylog1.log_-begin-__ 
         dis "Part I：统计分析"
         sum price weight length
      log close                          // _mylog1.log_-over-__   
      
         tab rep78  // 这些分析不计入 log 文件
         des, detail
 
      log using mylog2.log, text replace // _mylog2.log_-begin-__ 
         tab rep78 foreign
         des price rep78 foreign, d
      log close                          // _mylog2.log_-over-__   
     *
	 *--------记录结束---------

	 shellout mylog1.log
	 
	 shellout mylog2.log


	 
*____________________________
*-1.8.2 将 log 文件转换为网页   

  *-  -log2html-, -hyperlog-, -autolog-, -logout-, -slog-
    
  *-1.8.2.1 -log2html- 命令：制作“单页”网页
    
    help log2html
    
    *-示例：
      cap log close
      log using mylog, replace
        sysuse nlsw88, clear
        desc
        summ
        regress wage hours ttl_exp
      log close
    
      *-转换为网页  
        log2html mylog, replace        // 转换 log --> 网页
        shellout mylog.html            // 打开网页 
        * 你也可以到当前活动目录下打开 mylog.html 文件
     
      *-附加网页标题
        log2html mylog, replace title("美国妇女工资影响因素研究")
        shellout mylog.html
        * 注意：
          * 为了能够正确显示中文字符，请在打开网页后依次点击：
          * "查看(V)"-->"编码(D)"-->简体中文(GB2312) 
        
      *-设定网页风格
        log2html mylog, replace input(ff3300) result(003333) bg(grey)
        shellout mylog.html
     

  *-1.8.2.2 -hyperlog- 命令：制作“框架型”网页          
  
    help hyperlog
    
    doedit mylog.do         
    do mylog.do                             // 生成 log 文件
    
    hyperlog mylog.do mylog01.log, replace  // 转换为网页
    
    shellout mylog_hlog.html                // 注意文件名的变化


  *-1.8.2.3 其他命令
  
    * -slog-     生成可嵌套的 log 文件，适于程序调试和大型 log 文件的书写
    * -logout-   将stata命令结果输出至Word，Excel，TeX中，随后介绍
    * -autolog-  更为快捷定义 log 文件，用于定义 profile.do 启动文件
    *            我自己定义的 profile.do 文件中，
	*            已经涵盖了这个功能，故不再介绍



	
	
  
  
          *===================================
          *      计量分析与STATA应用
          *===================================

          *        主讲人：连玉君 博士

          *        单  位：中山大学岭南学院金融系
          *        电  邮: arlionn@163.com
          *        主  页: http://blog.cnfol.com/arlion 

          *           ::第一部分::
          *            Stata 操作
          *       =====================
          *         第一讲  STATA简介
          *       =====================
		  *          -1.9- do  文档	
		  
	 cd `c(sysdir_personal)'Net_course_A\A1_intro
	
	
*------------------------------------
*-> 1.9  do 文档: 高效快捷地执行命令
*------------------------------------

         *     ==本节目录==

         *     1.9.1 do 文档简介
         *         1.9.1.1 打开 do 文档编辑器
         *         1.9.1.2 保存和关闭
         *         1.9.1.3 执行 do 文档
         *     1.9.2 合理规划你的do文档
         *         1.9.2.1 一些基本规则
         *         1.9.2.2 注释语句
         *         1.9.2.3 断行
         *         1.9.2.4 大型 do 文档的设定
         *     1.9.3 列印文字
         *         1.9.3.1 -display-命令 
         *         1.9.3.2 列印的颜色  
         *         1.9.3.3 列印的位置  
         *     1.9.4  关于编辑器
         *     1.9.5  do 文件的转换(制作网页教程) 


      
*_______________________   
*-1.9.1 do 文档简介 


*-> ==概览==

   *- do 文档实际上是Stata命令的集合，方便我们一次性执行多条stata命令;
   
   *- do 文档的使用使我们的分析工作具有可重复性；
   
   *- 在一篇文章的实证分析过程中，我们通常将数据的分析工作写在 do 文档中
   
   
  *-1.9.1.1 打开 do 文档编辑器
  
    *- 方法 1：
       doedit             // 打开 do-editor
       doedit mylog.do    // 打开一个已存在的 do 文档，可指定完整路径        

    *- 方法 2：
    *  点击Rusults窗口上方倒数第六个按钮            
    
    *- 设置属性：
       * Edit --> Preferences 
       * 建议选中 [Auto-indent] 和 [Save before do/run]

	   
  *-1.9.1.2 保存和关闭


  *-1.9.1.3 执行 do 文档
    
    *-Case1：执行一部分命令  
      *  选中需要执行的命令，点击doedit窗口中第二行倒数第一个图标。 
      *  【快捷键】：Ctrl+D
      
         doedit L1_intro_do.do
    
    *-Case2：整体执行
         do L1_intro_do.do
         
  
    
*_________________________   
*-1.9.2 合理规划你的do文档
   
  *-1.9.2.1 一些基本规则
   
    *-A. 提高 do 文档的可读性
    *
    *  gen z = z + y    is better than   gen z=z+y
    *
    *  gen z = x^2      is better than   gen z = x ^ 2
    *
    *  gen t = hours + minutes/60 + seconds/3600  
	*  is better than 
    *  gen t = hours + minutes / 60 + seconds / 3600
    *
    *  list price if (foreign==1) & (rep78>3)  
	*  is better than
    *  list price if foreign==1&rep78>3
   
    *-B. 断句和断行
	*
    *  每一行的语句不要太长，不用拖动下方导引条即可阅读；
    *  各段代码采用一个或多个空行加以分隔；
   
   
  *-1.9.2.2 注释语句
    
     help comments
    
    *-示例：
        * 第一种注释方式
        sum price weight    /* 第二种注释方式 */
        gen x = 5           // 第三种注释方式
    
    
   *-1.9.2.3 断行 
     
     *-三种方式： “///” 、 “/* */” 、 #delimit 命令
     
       *-第一种断行方式： ///
         sysuse auto, clear 
         twoway (scatter price weight)       ///
                (lfit price weight),         ///
                title("散点图和线性拟合图")
               
       *-第二种断行方式： /* */
         twoway   (scatter price weight)      /*
               */ (lfit price weight),        /*
               */ title("散点图和线性拟合图")   
              
       *-第三种断行方式： #delimit 命令
         #delimit ;
           twoway (scatter price wei)
                  (lfit price wei),
                  title("散点图和线性拟合图");
         #delimit cr
         
         *-另一种习惯：
           sysuse auto, clear
           #delimit ;
             des price wei;  sum price wei len;  reg price wei;
           #delimit cr
        
        
   *-1.9.2.4 大型 do 文档的设定 
   
     * 设定一个主文件，下设 N 个子文件，分别处理某一部分分析工作
     * 保存在同一个文件夹下
     
           doedit L1_main.do    

    
*___________________
*-1.9.3  列印文字
     
  *-1.9.3.1 -display-命令
    
    dis 3 + 5*7 + sqrt(20)
	
    dis in g sin(_pi*0.5) + cos(0.9)
	
    dis _n(2) _dup(3) "I Love This GAME! "
    
    * 将文字置于 " " 或 `" "' 之间
       display "This is a pretty girl!"
       dis     `"This is a "pretty" girl!"'
  
  *-1.9.3.2 列印的颜色
    
    * 颜色1：red green yellow white
      dis in green "I like stata!"
      dis in w     "This " in y "is " in g "a " in red "pretty" in g " girl"
    
    * 颜色2：as text(绿色)| as result(黄色)| as error(红色)| as input(白色)
      dis as result "Stata is Good !"
     
     
  *-1.9.3.3 列印的位置
  
     * ------------------------------------------
     *   副命令  |             定义                   
     * ------------------------------------------             
     *   _col(#) | 从第 # 格开始列印
     *   _s(#)   | 跳过 # 格开始列印
     *   _n(#)   | 从第 # 行开始列印
     *   _c      | 下次列印解着列印而无须从起一行
     *   _dup(#) | 重复列印 # 次
     * ------------------------------------------
     
       display "Stata is good"
       display _col(12) "Stata is good"
       display "Stata is good" _s(8) "I like Stata"
       display _dup(3) "Stata is good！ "
       display "Stata is good","I like it"
       display "Stata is good",,"I like it"
       display _n(3) "Stata is good"
     
     * 更精美的列印方式
       help smcl        // 我们在高级部分会对此作详细介绍
       
     * -display-的一个妙用：清屏
       display _newline(100)  
       
       
*___________________
*-1.9.4  关于编辑器

    * 如下文档详细介绍了如何把外部编辑器与stata联系起来
      * http://fmwww.bc.edu/repec/bocode/t/textEditors.html#disclaim 
    * stata11
      * 高亮功能(与LaTeX相仿)


*____________________________________
*-1.9.5 do 文件的转换(制作网页教程)
 
   * -do2htm-   优点在于可以自动插入图片

     doedit L1_do2htm_test.do         // 无需执行
     do2htm L1_do2htm_test, replace   
	              // 将 do 文件及其 log 结果转换为 html 网页
   
   * 打开网页
     dir *.htm
     shellout L1_do2htm_test.htm
     * 注意：
     *     为了能够正确显示中文字符，请在打开网页后依次点击：
     *     "查看(V)"-->"编码(D)"-->简体中文(GB2312) 
    
    
  
  
  
  
  
  
  
  
  
  
  
  
  
          *===================================
          *      计量分析与STATA应用
          *===================================

          *        主讲人：连玉君 博士

          *        单  位：中山大学岭南学院金融系
          *        电  邮: arlionn@163.com
          *        主  页: http://blog.cnfol.com/arlion 

          *               ::第一部分::
          *                Stata 操作
          * ============================================
          *             第一讲  STATA简介
          * ============================================
          *  1.10  stata与Excel、Word、LaTeX的亲密接触
  
  
      cd `c(sysdir_personal)'Net_course_A\A1_intro    
	
	
*---------------------------------------------
*-> 1.10  stata与Excel、Word、LaTeX的亲密接触
*---------------------------------------------

         *     ==本节目录==

         *     1.10.1 统计表格、矩阵的输出
         *          1.10.1.1  输出基本统计量 
         *          1.10.1.2  输出相关系数矩阵
         *          1.10.1.3  输出矩阵  
         *          1.10.1.4  其它说明
         *     1.10.2 估计结果的输出
         *          1.10.2.1  esttab ：回归结果的呈现
         *          1.10.2.2  logout ：输出 【Excel、Word、TeX文档】
         *          1.10.2.3  xml_tab：专业输出 【Excel 文档】
         *          1.10.2.4  outreg2：专业输出【Word、Excel文档】
         
  
  
*_____________________________
*-1.10.1 统计表格、矩阵的输出       -logout-

  *-基本设定
    *  logout, save(filename) word(excel,tex) [options]:  ///
    *          输出统计表格或列示矩阵的命令
  
  
  *-1.10.1.1  输出基本统计量 
  
            sysuse auto, clear 
            tabstat price wei len mpg rep78,        ///
            stats(mean sd min p50 max) c(s) f(%6.2f)   
    
    *- 【Word】文档           
    logout, save(mytable) word replace:       ///  
            tabstat price wei len mpg rep78,  ///
            stats(mean sd min p50 max) c(s) f(%6.2f) 
            
    *- 【Excel】文档        
    logout, save(mytable) excel replace:      ///
            tabstat price wei len mpg rep78,  ///
            stats(mean sd min p50 max) c(s) f(%6.2f) 
            
            
  *-1.10.1.2  输出相关系数矩阵      
  
    logout, save(mytable) word replace:       ///
            pwcorr price wei len mpg rep78  
    logout, save(mytable) word replace:       ///
            pwcorr_a price wei len mpg rep78
            *-说明： -pwcorr_a-命令由 Arlion 编写
  
 
  *-1.10.1.3  输出矩阵                

    mat a = I(10) 
    mat list a                                 
    logout, save(mytable) word replace:  ///
            mat list a, nohalf       
      
  
 *-1.10.1.4  其它说明
      
   *- -logout- 偶尔会有点小问题(空格)
      sysuse nlsw88, clear
      logout, save(mytable) word replace: tab occup 

   *- 其他命令
      * tabout 比较灵活，但输出后的word文档为-tab-分隔，
      *        尚需使用表格自动套用功能
      * tabexport, mkcorr, tabform, tablemat, tabone 
      *        都不是很好用


	  
*________________________  
*-1.10.2  估计结果的输出 
  
*         -esttab-, -logout-, -xml_tab-, -outreg2-
     
	 
  *-1.10.2.1  -esttab- 命令：回归结果的呈现
    
    sysuse auto, clear   
    reg price wei
      est store m1
    reg price wei len
      est store m2
    reg price wei len mpg foreign
      est store m3
      
   *-基本用法    
     esttab m1 m2 m3 
    
   *-修改显著水平，紧凑的方式呈现结果
     esttab m1 m2 m3, ar2 compress nogap  ///
             star(* 0.1 ** 0.05 *** 0.01) 
            
   *-呈现 p-value，置于 "[]" 中    
     esttab m1 m2 m3, ar2 compress nogap  ///
             star(* 0.1 ** 0.05 *** 0.01) ///
             b(%6.3f) brackets p 
             
   *-呈现标准化系数
     esttab m1 m2 m3, beta
    
   *-显示变量的标签，而非变量名
     label var weight "汽车重量"
     esttab m1 m2 m3, label
    
   *-呈现弹性系数
     esttab m1 m2 m3, margin         // 默认情况下，略去 Constant
     esttab m1 m2 m3, margin constant
    
   *-输出文件的其它格式
     esttab m1 m2 m3 using myout.html, replace // 网页
	 
     esttab m1 m2 m3 using myout.tex, replace  // TeX 文档
       * 这个文档可以直接插入 TeX 中，采用 \input{}
	     shellout mypdf.tex   // 一个模板
		 
     * 其它输出类型：smcl, fixed, tab, csv, scsv, 
	 *               rtf, html, tex, and booktabs
    
	
   *-输出至 Excel
     esttab m1 m2 m3 using myout.csv, replace
     esttab m1 m2 m3 using myout.csv, replace   ///
           compress nogap nonotes               ///
		   addnotes("*** 1% ** 5% * 10%" "" "")
     * 说明：
     *   (1) -esttab- 在输出Excel文档时，标注的限制水平不好看，故修改之
     *   (2) -addnotes()- 选项中的后两个 "" 是空两行的意思，便于后续追加
    
     * 在已有文件的基础上追加新结果
       reg price wei, robust
         est store rob01
       reg price wei len, robust
         est store rob02
       reg price wei len mpg foreign, robust
         est store rob03
		 
       esttab rob01 rob02 rob03 using myout.csv, append    ///
            compress nogap b(%6.3f) scalars(r2_a N F)      /// 
            star(* 0.1 ** 0.05 *** 0.01) obslast           ///
            title(Robust check of the main results)        ///
            addnotes("The White(1980) robust regression" "" "") 
			
       * 说明：
       *   (1) 如果你的研究分成多个部分，你可以依次追加；
       *   (2) 输出后的结果从Excel中粘贴到Word，仅需简单调整即可
       *   (3) using file.csv 可以指定文件存储的具体路径
    


  *-1.10.2.2  -logout- 命令：输出 【Excel、Word、TeX文档】  
          
    *-基本设定
    *  logout, save(filename) word(excel,tex) [options]:  ///
    *          esttab ……
                      
    *-示例
      sysuse auto, clear
	  
      * Excel 文档
        logout, save(myreg) excel dec(3) replace:   ///
                reg price weight mpg rep78 foreign
				
      * Word 文档
        logout, save(myreg) word dec(3) replace:    ///
                reg price weight mpg rep78 foreign
    
    *______________________________一个完整的例子_________________________
    * 
      *-Step1：估计模型并存储结果
        sysuse auto, clear   
        reg price wei
          est store m1
        reg price wei len
          est store m2
        reg price wei len mpg foreign
          est store m3
        
      *-Step2：logout——结果直接输出到Word文档中
        logout, save(mylogout) word replace fix(3):     /// //注意冒号
             esttab m1 m2 m3, mtitle(模型1 模型2 模型3) ///
                    b(%6.3f) se(%6.2f)                  /// //系数、标准误
                    star(* 0.1 ** 0.05 *** 0.01)        /// //显著水平的标注
                    scalar(r2 r2_a N F) compress nogap  
    *_____________________________________________________________________                                             
      * 说明：
      *  (1) -fix(#)- 选项决定了转换的敏感度，本例中，fix(3)效果最佳 
      *  (2) 更改 -word- 选项，可以输出到 Excel(-excel-) 或 LaTeX 中(-tex-)
      *  (3) 优势：输出的-Word-文档比较美观
      *  (4) 缺陷：无法追加新的结果，
	  *      需要多个结果分别存储到不同的-Word-文件中。
    
	  *-例：输出 TeX 文档�
        logout, save(mylogout) tex replace fix(3):     /// 
             esttab m1 m2 m3, mtitle(模型1 模型2 模型3) ///
                    b(%6.3f) se(%6.2f)                  /// 
                    star(* 0.1 ** 0.05 *** 0.01)        /// 
                    scalar(r2 r2_a N F) compress nogap  
        
       
  *-1.10.2.3  -xml_tab- 命令：专业输出 【Excel 文档】
  
    sysuse nlsw88, clear   
    reg wage hours married
      est store m1
    reg wage hours married ttl_exp south
      est store m2
    xi:reg wage hours married ttl_exp south i.race
      est store m3
    xi:reg wage hours married ttl_exp south i.race i.occupation
      est store m4  
          
    *-基本设定  
      xml_tab m1 m2 m3 m4, replace
	  
      * 说明：
      *   (1) 默认存储于当前活动目录下，名称为 stata_out.xml；
      *   (2) 默认显示变量标签，而非变量名称，变量标签不支持中文
    
	
    *-稍作美化
      xml_tab m1 m2 m3 m4, save(result) sheet(OLS) replace  ///
                           tstat below stats(r2 r2_a N)  
          
		  
    *-进一步美化
      xml_tab m1 m2 m3 m4, save(result) sheet(OLS) replace     ///
                           tstat below stats(r2 r2_a N)        ///
              drop(_Ioccup*) font("Times New Roman" 10)        ///
              title(Table 1 Basic Regression of US women wage) ///
              tblank(1) format(NCCR3)                          ///
              note("Occupation dummies are not presented")
      
	  * 说明：
      *   (1) 若部分变量有中文标签，需要事先修改，或附加 -nolabel- 选项；
      *   (2) 有关 -format()- 选项的填写，请参阅帮助文件；
      *   (3) save() 选项中可填写具体的存储路径
      *   (4) 优势：可以用一个-Excel-文件存储多个-sheet-       
       
	   
   *-输出结果的追加
     * 分析妇女是否加入工会的影响因素
       logit union wage ttl_exp
       est store a1
       xi: logit union wage ttl_exp i.race i.occupation   
       est store a2
       xml_tab a1 a2, save(result) sheet(Logit) append  ///  //注意此处的变化
                          tstat below stats(r2 r2_a N)  ///
             drop(_Ioccup*) font("Times New Roman" 10)  ///
             title(Table 2 Determinants of being a Union member) ///
             tblank(1) format(NCCR3)                             ///
             note("Occupation dummies are controlled, but not presented")      
       
	   * 说明：
       *   (1) 不同类别或不同阶段的回归结果，可以分别放入不同的 sheet（） 中；
       *   (2) 除第一个 sheet 使用 -replace- 选项外，
	   *       后续追加的 sheet 使用 -append- 选项
       *   (3) 上述结果稍作整理即可贴入-Word-，
	   *       建议使用-Word-表格自动调整功能
     

  
  *-1.10.2.4 -outreg2- 命令：专业输出【Word、Excel文档】 
   
    sysuse nlsw88, clear
    tab race, gen(d_race)
      drop d_race1
    tab occu, gen(d_occu)
      drop d_occu1
    reg wage hours ttl_exp married 
      est store m1
    reg wage hours ttl_exp married d_race*
      est store m2
    reg wage hours ttl_exp married d_race* d_occu*   
      est store m3
  
    *-基本用法：在数据窗口中呈现结果     
      outreg2 [m1 m2 m3] using tab01, seeout replace   
       
    *-输出 Word 或 Excel 文档
      outreg2 [m1 m2 m3] using tab01, word  replace 
      outreg2 [m1 m2 m3] using tab01, excel replace 
    
    *-同时输出Word和Excel文档(亦可增加 tex 选项，输出 tex 文档)   
      outreg2 [m1 m2 m3] using tab01, word excel replace      
    
    *-使用变量标签
      label var hours "每周工作时数"
      label var married "已婚==1，未婚==0"
      outreg2 [m1 m2 m3] using tab01, word replace label
      outreg2 [m1 m2 m3] using tab01, word replace label(insert)  
	                                       // 同时呈现变量和标签
    
    *-s.e., t值, 与 p值
      outreg2 [m1 m2 m3] using tab01, word replace tstat   
	                                     // 呈现 t-value
      outreg2 [m1 m2 m3] using tab01, word replace pvalue  
	                                     // 呈现 p-value 
    
    *-小数的显示方式  -tdec()-, -rdec()- 选项
      outreg2 [m1 m2 m3] using tab01, word replace tstat tdec(2)  
	                                      // t-value小数点后两位 
      outreg2 [m1 m2 m3] using tab01, word replace tstat rdec(3)  
	                                      // R2小数点后三位  
    
    *- "()", "[]", 与 " "
      outreg2 [m1 m2 m3] using tab01, word replace pvalue bracket tdec(3)
      outreg2 [m1 m2 m3] using tab01, word replace tstat tdec(2) noparen 
    
    *-新结果的追加  
      logit union wage married wage d_race* d_occu*
      est store logit
      outreg2 [logit] using tab01, word append      
  
    *-弹性系数、标准化系数和边际效果
      reg wage hours ttl_exp married 
      mfx, eyex                              // 计算弹性系数
      outreg2 using tab02_mfx, word replace  // -replace- 新建word文档
        
      reg wage hours ttl_exp married d_race*
      mfx, eyex
      outreg2 using tab02_mfx, word append   // 追加结果
        
	  reg wage hours ttl_exp married d_race* d_occu*
      mfx, eyex  
      outreg2 using tab02_mfx, word append   // 进一步追加结果
             
    *-有选择地呈现变量
      outreg2 [m1 m2 m3] using tab01, word replace        ///
              drop(d_occu*)                                     
      * 说明：
      *   (1) 亦可使用 keep() 选项筛选需要呈现的变量；
      *   (2) 使用 order() 选项可以改变变量的先后顺序 
       
    *-表格的标题
      outreg2 [m1 m2 m3] using tab01, word replace        ///
              title("表1: 美国妇女工资决定因素估计结果") 

    *-最后一行的统计量: adj-R2, F值
      outreg2 [m1 m2 m3] using tab01, word replace        ///
              title("表1: 美国妇女工资决定因素估计结果")  ///
              drop(d_occu*)                               ///
              adjr2 e(F ll)                                     
             
    *-重新定义注释
      outreg2 [m1 m2 m3] using tab01, word replace        ///
              title("表1: 美国妇女工资决定因素估计结果")  ///
              drop(d_occu*)  nonote                       /// 
              addnote("注：(1)***,**,*分别表示在1%,5%和10%水平上显著;",  ///
                          "(2)括号中为标准误;",                          ///
                          "(3)m3中控制了职业虚拟变量 d_occu2-d_occu13。")  
      * 说明：
	  *
      *  (1) -nonote-  选项：
	  *      不显示原有英文注释 "Standard errors in parentheses" 
      *      和 "*** p<0.01, ** p<0.05, * p<0.1"  
	  *
      *  (2) -addnote-  选项：addnote("注释1", "注释2", "注释3")    
      

	  
    *__-<-<-<-<- 【一个模板】 ->->->->-__
    *   
    *- 特征: 
    *   (T1) 附加表格标题；
    *   (T2) 调整变量的显示顺序和多寡 -drop()-, -sortvar()-
    *   (T3) t-value 小数点后显示两位；adj-R2  小数点后显示三位；
    *   (T4) 修改表格注释；
    *
    *________________________________outreg2模板____________________________  
      outreg2 [m1 m2 m3] using tab01, word replace        ///
              title("表1: 美国妇女工资决定因素估计结果")  ///   // (T1)
              drop(d_occu*) sortvar(married hours)        ///   // (T2)
              tdec(2) rdec(3)  adjr2 e(F)                 ///   // (T3)
              nonote                                      ///   // (T4)
              addnote("注：(1)***,**,*分别表示在1%,5%和10%水平上显著;",  ///
                          "(2)括号中为标准误;",                          ///
                          "(3)其它注释语句。")    
    *_______________________________________________________________________                            
            
            
    *-多方程模型结果的呈现
      *-示例1：SUR模型
        use invest2.dta, clear
        sureg (invest1 market1 stock1)  ///
              (invest2 market2 stock2)  ///
              (invest3 market3 stock3)  ///
              (invest4 market4 stock4)  ///
              (invest5 market5 stock5), corr  
        outreg2 using table2, word replace       
		                         // 单个模型的呈现，无需est store 
        outreg2 using table2, word replace long  // 长条形显示结果
     
      *-示例2：Multinomial Logit 模型 -mlogit-
        use fullauto, clear
        replace wei = wei/1000
        replace price = price/1000
        mlogit rep77 mpg wei price rseat foreign
        outreg2 using table2, word replace
     
        
*- 评述：

*  (1) 整体而言，-outreg2- 命令最为好用，
*      可以同时实现对 Word, Excel, LaTeX 的支持

*  (2) -esttab-, -xml_tab- 用起来也比较方便


 
 
  
  
  
  
  

  
  
          *===================================
          *      计量分析与STATA应用
          *===================================

          *        主讲人：连玉君 博士

          *        单  位：中山大学岭南学院金融系
          *        电  邮: arlionn@163.com
          *        主  页: http://blog.cnfol.com/arlion 

          *           ::第一部分::
          *            Stata 操作
          *       =====================
          *         第一讲  STATA简介
          *       =====================
          *         -1.11- Stata 设定

      cd `c(sysdir_personal)'Net_course_A\A1_intro  
	  
		  
*--------------------
*-> 1.11 Stata 设定
*--------------------

         *     ==本节目录==

         *     1.11.1 Stata帮助
         *     1.11.2 文件目录
         *     1.11.3 Stata 外部命令的获取
         *          1.11.3.1 外部命令的存储路径 
         *          1.11.3.2 外部命令的获取方式
         *          1.11.3.3 外部命令的管理和更新
         *     1.11.4 Stata 的系统参数  
         *     1.11.5 文件和文件夹的操作
         *          1.11.5.1  文件的基本操作：查找、复制、编辑和删除
         *          1.11.5.2  使用stata打开txt, Word, Excel, 网页文件
         *          1.11.5.3  文件夹的操作
         *     1.11.6  每次启动时均需执行的命令(profile)
         *     1.11.7  常用快捷键
         *     1.11.8  退出stata(exit)
         
         
*__________________
*-1.11.1 Stata帮助    -help-, -search-, -hsearch-, -findit-

  * -help-命令
  * -search-命令   searches the [keywords] of the help files; 
  * -hsearch-命令  searches the help files [themselves].
  * -findit-命令   类似-search-命令，但可以进一步搜索网络上的信息
  
    help regress
    search panel data, net
    hsearch "fixed effect"
    findit panel unit root

  * -view- 命令  新开窗口显示
  
    view search panel data, net        // 新开窗口显示结检索果
    view news                          // 显示stata的最近动态
    view browse http://www.baidu.com   // 打开网页
    viewsource winsor.ado              // 查看 ado 文件源文件，只读
    viewsource xtreg_fe.ado
    viewsource xtbalance.ado
  
  
  *-更多的帮助和讨论
  
    *- 常见问题解答：FAQ  
       view browse http://www.stata.com/support/statalist/faq 
	   
    *- 加入STATA用户邮件列表
       view browse http://www.stata.com/statalist/
	   
    *- 人大经济论坛【stata专版】
       view browse http://www.pinggu.org/bbs/forum-67-1.html
	   
    *- 人大经济论坛【VIP答疑专区】
       view browse http://www.pinggu.org/bbs/forum-114-1.html  



*___________________
*-1.11.2  文件目录      -help sysdir-

  *-1.11.2.1 stata 系统目录的设定
  
    sysdir        // 显示当前系统目录的设定

    *- 释义：
       *    STATA:  D:\stata11\			     stata 安装根目录
       *  UPDATES:  D:\stata11\ado\updates\	【更新文件】的存储地址
       *     BASE:  D:\stata11\ado\base\	【官方命令】存储地址
       *     SITE:  D:\stata11\ado\site\	【自编命令】存储地址
       *     PLUS:  D:\stata11\ado\plus\	【外部命令】的储存地址
       * PERSONAL:  D:\stata11\ado\personal\【自有文件夹】首次安装时，需要自建			
  
    *- 查看
	   pwd             // 当前工作路径
       personal        // 显示路径(个人文件夹)
       personal dir    // 查看详情
       
    *- 设定   help sysdir  
       sysdir set PLUS      "D:\stata11\ado\plus"      // 外部命令的存放地址
       sysdir set PERSONAL  "D:\stata11\ado\personal"  // 个人文件夹 
       
       adopath + "D:\mypaper\my_ado"      // 增加新的查询目录
       adopath - "D:\mypaper\my_ado"      // 取消特定查询目录
       

	   
*______________________________
*-1.11.3  Stata 外部命令的获取   

*         -findit-, -ssc-, -net-, -adoupdate-, -mypkg-

  *-1.11.3.1 外部命令的存储路径  
  
    *-说明：
    *  (1) 默认情况下，stata会在 "...\stata11\ado\plus" 文件夹下存储外部命令
    *  (2) 可通过 -sysdir set- 命令更改之
    *  (3) 第一次下载外部命令时，stata会自动建立 \plus 文件夹
    
    sysdir

    
  *-1.11.3.2 外部命令的获取方式

    *-findit-命令：模糊查询
      findit panel data
      findit normal test
 
    *-ssc-命令：安装(卸载)来源于 ssc 的命令
	*           ssc: Statistical Software Components
      help ssc             // http://www.repec.org/
      ssc whatsnew
      * 查看来源于 SSC 的外部命令列表
        ssc describe b    // 列示以 -b- 开头的所有命令，可为 a-z,以及 "_"
        ssc describe x
        ssc des winsor      
      * 下载安装 ssc 命令              
        ssc install winsor, replace

    *-net-命令
      help net
      *
      *-示例
              net search hausman test
         view net search hausman test
              net from http://fmwww.bc.edu/RePEc/bocode/m/   
			                            // [result]窗口显示SSC命令
         view net from http://fmwww.bc.edu/RePEc/bocode/m/   
		                                // 新开窗口显示
      *
      *-Stata Journal(SJ) 相关文档
        view net from "http://www.stata-journal.com/" 
        view net from "http://www.stata-journal.com/software/"
        net cd software  // 网络不好时，可能无法连接
        net cd sj9-2 
      *   
      *-Stata Technical Bulletin(STB) 相关文档    
        net from "http://www.stata.com/stb/"


  *-1.11.3.3 外部命令的管理和更新
  
    *-查询已安装的外部命令  -ado-, -mypkg-, -which-
	   ado
       ado, find(winsor)
       ado, find(panel unit)
       mypkg                      // 呈现本机上已安装的外部命令 net findit ssc
       mypkg xt*
       mypkg *lorenz*
       mypkg xtbalance
       which xtbalance  
       which outreg2              // 列示命令的基本信息  
	   
    *-外部命令的更新     -adoupdate-
       adoupdate                  // 更新本机上的外部 ado 命令
       adoupdate outreg2, update  // 更新特定的命令 

    *-发布自己的 stata 命令
	  help usersite
	

	
*___________________________
*-1.11.4  Stata 的系统参数
   
   query                   // 呈现当前系统参数的设定情况
   
 * 关于版本
   about
   
 * 验证是否正确安装
   verinst
   
 * 系统参数范围
   help limits
   
 * 一些常用的设定
   clear
   set obs 200             // 设定观察值的个数
   set memory 40m 
  *------------------------------------------ 
   set more on             // 开启 分屏显示
    sysuse auto, clear
    list price
   set more off            // 禁止 分屏显示
    list price
  *------------------------------------------ 
    clear 
    set memory 40m         // 设定内存的大小
    set matsize 3000       // 设定矩阵的最大维度
  *------------------------------------------  
    set trace on           // 跟踪调试
      sysuse auto, clear
      reg price wei 
    set trace off
  *------------------------------------------ 
    set seed 1357923       // 产生随机数时的种子
     matrix a = matuniform(2,2)
     matrix list a
  *------------------------------------------
    help set_defaults      // 恢复系统参数的默认值
    set_defaults memory    // 仅恢复 memory 项 
    set_defaults _all      // 全部恢复


*_____________________________  
*-1.11.5  文件和文件夹的操作

* 相关命令：shell, shellout, findfile, erase, 
*           mkdir, rmdir, copysource, winexec
 
  *-1.11.5.1  文件的基本操作：查找、查看、复制、编辑和删除
    
    findfile xtreg_fe.ado         // 查找文件
    copysource xtreg_fe.ado       // 在adopath路径下查找,复制到当前工作目录下
    dir xt*.ado                   // 显示当前工作目录下的文件
    viewsource xtreg_fe.ado       // 查看指定的 ado 文档(只读)
    doedit `c(pwd)'\xtreg_fe.ado  // 编辑指定的 ado 文档
    erase  `c(pwd)'\xtreg_fe.ado  // 删除文件
    
    copysource xtreg_fe.ado
    shell rename xtreg_fe.ado FE.do  // 文件更名
    dir *.do
    shell                            // 在 dos 环境下操作
       
    copy d1.txt  new_d1.txt,replace  // 复制文件 
      dir *d1.txt 
    copy http://www.stata.com/examples/simple.dta  simple.dta, replace
      dir *.dta
      erase new_d1.txt 
      erase simple.dta       


  *-1.11.5.2  使用stata打开-.txt-, -Word-, -Excel-, -iexplorer- 文件
  
    * 语法： 
    * shellout 完整文件名        // help shellout
      
    *-打开记事本  
        shellout d1.txt 
        
    *-打开-Word-文档  
        shellout mypaper.doc        
    
    *-打开-Excel-文档 
        shellout  d1.xls
      
    *-打开网页
        shellout myhome.mht
        shellout my_log.html
      
    *-打开-PPT-文档          // 自娱自乐一下吧 
    *-打开-PDF-文档

	
	*-把帮助文件转换为 pdf 格式
	  help hlp2winpdf 
	  hlp2winpdf, cdn(xtreg)
	  shellout xtreg.pdf
	  
	  hlp2winpdf, cdn(xtbalance xtabond) replace
	  shellout xtbalance.pdf
	  shellout xtabond.pdf
	  
	  *-说明：需要安装 Ghostscript 或 WinEdt 套装
	  * 可到如下网址下载：
	  *  http://www.ctex.org/HomePage
	  
	  

  *-1.11.5.3  文件夹的操作
    
    *-stata官方命令  -dir-, -mkdir-, -rmdir-
    
      dir               // 显示当前目录下的所有文件
      dir *.txt         // 显示后缀为 ".txt" 的所有文件
      dir xt*           // 显示以 "xt" 开头的所有文件
         
      mkdir `c(pwd)'\mystata   // 新建文件夹
      rmdir mystata            // 删除文件夹 
      
                    
    *-dirtools- 命令: 高效管理文件的外部命令

      cd  `c(sysdir_personal)'Net_course_A
      lall              // 列示所有文件
      cd  A1_intro
      ldta              // 列示 .dta 数据文件
      cd `c(sysdir_stata)'ado\base\x
      lado              // 列示 .ado 文件

     
	*-cdout- 命令：打开当前工作路径所在的文件夹
	  cd D:\stata11\utilities
	  cdout
	  cd  `c(sysdir_personal)'Net_course_A
	  cdout 
	  
	  
	  
*___________________________________  
*-1.11.6  每次启动时均需执行的命令     -profile-

  help profile

  * 建立一个 profile.do 文档，存于 D:\stata11\ 下

  * --------begin profile.do------------
  *
  *   基本参数设定
      set type double
      set memory 50m
      set matsize 2000
      set scrollbufsize 50000   // 设定屏幕的最大显示行数
      set more off,perma
	  
  *   log 文件设定
      log using    D:\stata11\ado\personal\stata.log, text replace
      cmdlog using D:\stata11\ado\personal\command.log, append
	  
  *   文件目录设定
      sysdir set PLUS     "D:\stata11\ado\plus"     //外部命令的存放地址
      sysdir set OLDPLACE "D:\ado"
      sysdir set PERSONAL "D:\stata11\ado\personal" //个人文件夹
	  
  *   ado文档查找路径  
      adopath + "D:\stata11\ado\personal"
      adopath + "D:\stata11\ado\personal\_Myado"
	  
  *   当前工作路径
      cd D:\stata11\ado\personal
	  
  * --------end profile.do------------


  *- Arlion 的 profile.do 文档
  
    *doedit D:\stata11\profile.do
     doedit `c(sysdir_stata)'profile.do
    
	*-我的日志文件
	  cd D:\stata11\do
	  cdout


*_____________________  
*-1.11.7  常用快捷键    
    
                                        /*
	  F-key 	Definition
	---------------------------
	  F1 		help
	  F2 		#review;
	  F3 		describe;  (*)
	  F7 		save
	  F8 		use
	---------------------------
	
	
	  Ctrl-key 		Definition
	-------------------------------------------------
	  Ctrl+D 		执行(Do)选中的命令 (*)
	  Ctrl+R        运行程序(Run)      (*)
	  Ctrl+F		在do-editor中搜索特定的关键词
	  Ctrl+O		打开do文档
	  Ctrl+N		新建do文档
	  Ctrl+S		保存do文档         (*)
	  Ctrl+G        跳转到第#行        (*)
	  Ctrl+Shift+Y	选中光标所在的行
	  Ctrl+Y		删除光标所在的行
	  Ctrl+F2       定义小节标签
	  Shift+F2      跳转到上一个小节标签
	  F2            跳转到下一个小节标签
	-------------------------------------------------	
	注：上述快捷键仅适用于do-editor
	
                                        */
                                        
                                        
*_____________________  
*-1.11.8  退出stata：     -exit-
  
  *-几个需要注意的事项:
   
    *- 常规方法
       * 点击叉号关闭stata，多数情况下都无需保存；
       
    *- 命令方法
       exit
       exit, clear



