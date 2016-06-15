# What is this?/这是什么?
This is a baseModel combining internet requests and mapping model(using Objective-c).
这是一个整合了网络请求和模型映射的基类(使用objective-c).


#what can this do?/这能干吗?
This third-party library could make your controllers more readable by moving your requests from controllers to models,and put data you requested into models with just one method.
这个第三方库将网络请求迁移至模型层,并将请求到的数据封装进模型。它可以给控制器减肥,让控制器的代码逻辑更简单易读,更易于维护。

unused/使用前的Controller <br>
![image](https://github.com/shionIsMyName/SYNetModel/blob/master/before_using.png)<br>
used/使用后的Controller <br>
![image](https://github.com/shionIsMyName/SYNetModel/blob/master/after_using.png)

简单来说,只要继承了该基类,调用一个方法,即可完成数据请求和数据解析和映射模型。

#how to use?/如何使用?
注意:该库强依赖afnetworking和mjextension.(afnetworking仅支持3.0以上版本,mjextension理论可兼容其他历史版本).<br>
warning:strongly rely on afnetworking and mjextension.(afnetworking needs to be 3.0+ version)<br>

1,put SYNetModel into your project/集成SYNetModel进项目<br>
2,create your model and implements SYNetModel/创建你的模型并继承SYNetModel(模型属性需要自己对照接口返回参数设定,你懂的.)<br>
3,call model's class method @" netModel..."/调用你的模型的类方法 netModel...(出提示回车即可,参数可以option+点击查看)<br>



