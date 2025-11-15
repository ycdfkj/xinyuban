@echo off  chcp 65001 >nul  title 心愈伴 - 一键部署  echo.  echo ╔══════════════════════════════════════════════════════════════╗  echo ║                心愈伴 - 一键部署到云端                        ║  echo.  set /p username=请输入GitHub用户名:   if "%%reponame%%"=="" set reponame=xinyuban  echo. 
echo 正在创建部署文件... 
echo {"version":2,"builds":[{"src":"api/*.py","use":"@vercel/python"}],"routes":[{"src":"/api/(.*)","dest":"/api/$1"},{"src":"/(.*)","dest":"/$1"}]} > vercel.json 
echo Flask==2.3.3 > requirements.txt 
echo Flask-CORS==4.0.0 >> requirements.txt 
echo PyJWT==2.8.0 >> requirements.txt 
echo # Git忽略文件 > .gitignore 
if not exist api mkdir api 
if not exist api mkdir api 
echo from flask_cors import CORS >> api\index.py 
echo app = Flask(__name__) >> api\index.py 
echo CORS(app) >> api\index.py 
echo @app.route('/api/login', methods=['POST']) >> api\index.py 
echo def login(): return jsonify({'success': True, 'message': '登录成功'}) >> api\index.py 
echo app.run(debug=True) >> api\index.py 
echo. 
echo 正在初始化Git仓库... 
git init >nul 2>&1 && git add . >nul 2>&1 && git commit -m "Initial commit: 心愈伴应用" >nul 2>&1 
echo. 
echo ╔══════════════════════════════════════════════════════════════╗ 
echo ║                        准备完成！                            ║ 
echo ╚══════════════════════════════════════════════════════════════╝ 
echo. 
echo 下一步操作： 
echo 1. 访问: https://github.com/new && 创建仓库: %%reponame%% 
echo 2. 运行: git remote add origin https://github.com/%ddr15%/%%reponame%%.git 
echo 4. 访问: https://vercel.com 部署 
echo 应用地址: https://%%reponame%%.vercel.app 
echo. 
echo 按任意键打开GitHub创建页面... 
pause >nul && start https://github.com/new 
