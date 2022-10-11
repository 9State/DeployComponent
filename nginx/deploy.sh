success()
{
	echo -e "\033[32m ${1} \033[0m"
}


nginx_path=/home/component/nginx
log_path=/home/component/nginx/log
config_path=/home/component/nginx/conf.d
html_path=/home/component/nginx/html

mkdir -p $log_path
mkdir -p $config_path
mkdir -p $html_path

cp log/* $log_path
cp conf.d/* $config_path
cp html/* $html_path
cp nginx.conf $nginx_path


docker-compose up -d 
