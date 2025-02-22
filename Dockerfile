FROM python:3

# 复制项目文件到容器中
COPY . /app

# 设置工作目录为项目目录
WORKDIR /app

# 创建并激活Python虚拟环境
RUN python -m venv myenv
RUN . myenv/bin/activate

# 安装项目依赖项
RUN pip install -r requirements.txt

# 运行docker run命令
CMD python do_share.py
