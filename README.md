使用Beehive 搭建组件化的Demo

# LgMainProject
主项目

通过Podfile文件设置对应的module.

# LgComponent
组件化模块 

通过spec文件设置每个module的配置信息

# 架构图
```
LgMainProject 
	|	
	| - LgMainProject (主项目)
	|
	| - LgComponents (组件)
			| 
			| _ LgFramework (远程仓库)
			| _ LgPublicService (本地仓库)
			| _ LgUIKit (本地仓库)
```


