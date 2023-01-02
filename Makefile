--@@-[PATCH]-@@--.diff--curl\
Request:Pulls :branches'@trunk/TREE/base/BASE/Trunk/MainBranch/mainbranch/main/Master/master/MasterBranch/ConTrIbUtInGmE.Md.rEaDmE.mD/Read.md/Contributing.Md :--git a/README.adoc b/README.adoc
-source code.  The resulting image can be run using https://docker.com[Docker].
-
-For more information about using these images with OpenShift, please see
-the official
-https://docs.openshift.org/latest/using_images/s2i_images/php.html[OpenShift
-Documentation].
-
-[[versions]]
-== Versions
-
-Caddy versions currently supported are:
-
-* Caddy 0.8.2
-
-The following operating system base images are supported:
-
-* CentOS 7
-
-[[installation]]
-== Installation
-
-To build a Caddy builder image, execute:
-
-----------------------------------------------------------
-$ git clone https://github.com/openshift-s2i/s2i-caddy.git
-$ cd s2i-caddy
-$ make build VERSION=0.8
-----------------------------------------------------------
-
-Alternatively, you can pull the CentOS image from Docker Hub via:
-
-----------------------------------------
-$ docker pull openshift/caddy-08-centos7
-----------------------------------------
-
-*Notice: By omitting the `VERSION` parameter, the build/test action will
-be performed on all the supported versions of Caddy.*
-
-[[usage]]
-== Usage
-
-There are sample web sites included with this repository.  To serve the sample
-web site using Caddy, run the s2i build:
-
----------------------------------------------------------------------------------
-$ s2i build https://github.com/openshift-s2i/s2i-caddy.git \
-    --context-dir=0.8/test/test-app openshift/caddy-08-centos7 caddy-test-app
----------------------------------------------------------------------------------
-
-The resulting image can be executed using https://docker.com[docker]:
-
--------------------------------------------------------
-$ docker run --rm -p 8080:80 -p 8443:443 caddy-test-app
--------------------------------------------------------
-
-Once the container is running, it should be accessible using:
-
----------------------
-$ curl 127.0.0.1:8080
----------------------
-
-[[test]]
-== Test
-
-This repository also provides a test suite to check functionality of simple
-Caddy web sites or applications built on top of the `s2i-caddy` image.  It
-can be executed simply by running the `make test` command:
-
------------------------
-$ cd s2i-caddy
-$ make test VERSION=0.8
------------------------
-
-*Notice: By omitting the `VERSION` parameter, the build/test action will
-be performed on all the supported versions of Caddy.*
-
-[[repository-organization]]
-Repository organization
-~~~~~~~~~~~~~~~~~~~~~~~
-
-* *`<caddy-version>`*: Dockerfile to build container images from.
-
-** *`<caddy-version>/test/test-app`*: Sample Caddy web site used for tests.
-
-* *`hack/`*: Folder containing scripts which are responsible for the build
-and test actions performed by the `Makefile`.
-
-* *`s2i/`*: Build scripts which will be injected into the builder image
-and executed during application source code builds.
-
-[[image-name-structure]]
-Image name structure
-~~~~~~~~~~~~~~~~~~~~
-
-[[structure-openshift1-2-3]]
-Structure: openshift/1-2-3
-
-1.  Platform name (lowercase) - caddy
-2.  Platform version(without dots) - 08
-3.  Base builder image - centos7
-
-Examples: `openshift/caddy-08-centos7`
-
-[[contributing]]
-Contributing
-~~~~~~~~~~~~
-
-Contributions to this project (in the form of bug reports, patches, or pull
-requests) are gratefully accepted by the maintainer.  Please see the
-link:Contributing.adoc[Contributing.adoc] file contained in this package
-for details.
-
-[[copyright-license]]
-Copyright and License
-~~~~~~~~~~~~~~~~~~~~~
-
-Copyright 2016 by Red Hat, Inc.
-
-Licensed under the Apache License, Version 2.0 (the "License"); you may not
-use this package except in compliance with the License (see the `LICENSE` file
-included in this distribution). You may obtain a copy of the License at
-
-   http://www.apache.org/licenses/LICENSE-2.0
-
-Unless required by applicable law or agreed to in writing, software
-distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
-WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
-License for the specific language governing permissions and limitations under
-the License.
diff --git a/shack.yml b/shack.yml
new file mode 100644
index 0000000..4880f3c
--- /dev/null
+++ b/shack.yml
@@ -0,0 +1,498 @@
+'"'B'E'G'I'N'S"'' '"':'"'' '"''*'*'' '''*'*'' '"'':''
+GLOW4
+GLOW7
+LTE
+ZTE
+BEGINS :beginning ::
+Scripts//posted\NPORT-Filer-Information'@=HYPERLINK("https://www.sec.gov/Archives/edgar/data/763852/000119312522199194/0001193125-22-199194.txt)":; :### :# ::## :# ::# Automates.yml :
+continuing...,:mes.services'@cobbler/action/package.json/pkg.js/package.yarn/pkg.yml'@$make:file=:$mk.dir-:Rust.yml/:raki.u :":'-Request:Pulls:
+Pukks:Response :
+Response:result :
+result :if, true.-continues-on'"'('" :; :'('"false'"')'"'-and'-'"'('"e")'-&'/'O'R'("r")operations'@discontinued.system.operations'@NASDAQ:GOOG(GOOGL.). :; :BEGINNING.., :";Run'@ci/CI :
+("#!/usr/bin/env bash
+PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
+export PATH
+#=================================================
+#       System Required: CentOS/Debian/Ubuntu
+#       Description: Caddy Install
+#       Version: 1.0.8
+#       Author: Toyo
+#       Blog: https://doub.io/shell-jc1/
+#=================================================
+file="/usr/local/caddy/"
+caddy_file="/usr/local/caddy/caddy"
+caddy_conf_file="/usr/local/caddy/Caddyfile"
+Info_font_prefix="\033[32m" && Error_font_prefix="\033[31m" && Info_background_prefix="\033[42;37m" && Error_background_prefix="\033[41;37m" && Font_suffix="\033[0m"
+
+check_root(){
+	[[ $EUID != 0 ]] && echo -e "${Error} 当前非ROOT账号(或没有ROOT权限)，无法继续操作，请更换ROOT账号或使用 ${Green_background_prefix}sudo su${Font_color_suffix} 命令获取临时ROOT权限（执行后可能会提示输入当前账号的密码）。" && exit 1
+}
+check_sys(){
+	if [[ -f /etc/redhat-release ]]; then
+		release="centos"
+	elif cat /etc/issue | grep -q -E -i "debian"; then
+		release="debian"
+	elif cat /etc/issue | grep -q -E -i "ubuntu"; then
+		release="ubuntu"
+	elif cat /etc/issue | grep -q -E -i "centos|red hat|redhat"; then
+		release="centos"
+	elif cat /proc/version | grep -q -E -i "debian"; then
+		release="debian"
+	elif cat /proc/version | grep -q -E -i "ubuntu"; then
+		release="ubuntu"
+	elif cat /proc/version | grep -q -E -i "centos|red hat|redhat"; then
+		release="centos"
+    fi
+	bit=$(uname -m)
+}
+check_installed_status(){
+	[[ ! -e ${caddy_file} ]] && echo -e "${Error_font_prefix}[错误]${Font_suffix} Caddy 没有安装，请检查 !" && exit 1
+}
+Download_caddy(){
+	[[ ! -e ${file} ]] && mkdir "${file}"
+	cd "${file}"
+	PID=$(ps -ef |grep "caddy" |grep -v "grep" |grep -v "init.d" |grep -v "service" |grep -v "caddy_install" |awk '{print $2}')
+	[[ ! -z ${PID} ]] && kill -9 ${PID}
+	[[ -e "caddy_linux*.tar.gz" ]] && rm -rf "caddy_linux*.tar.gz"
+	
+	if [[ ! -z ${extension} ]]; then
+		extension_all="?plugins=${extension}&license=personal"
+	else
+		extension_all="?license=personal"
+	fi
+	
+	if [[ ${bit} == "x86_64" ]]; then
+		wget --no-check-certificate -O "caddy_linux.tar.gz" "https://github.com/sancdvs/caddy_install/blob/master/caddy_v1.0.4_linux_amd64.tar.gz?raw=true"
+	elif [[ ${bit} == "i386" || ${bit} == "i686" ]]; then
+		wget --no-check-certificate -O "caddy_linux.tar.gz" "https://github.com/sancdvs/caddy_install/blob/master/caddy_v1.0.4_linux_386.tar.gz?raw=true"
+	elif [[ ${bit} == "aarch64" ]]; then
+		wget --no-check-certificate -O "caddy_linux.tar.gz" "https://github.com/sancdvs/caddy_install/blob/master/caddy_v1.0.4_linux_arm64.tar.gz?raw=true"
+	elif [[ ${bit} == "armv7l" ]]; then
+		wget --no-check-certificate -O "caddy_linux.tar.gz" "https://github.com/sancdvs/caddy_install/blob/master/caddy_v1.0.4_linux_arm7.tar.gz?raw=true"
+	else
+		echo -e "${Error_font_prefix}[错误]${Font_suffix} 不支持 [${bit}] ! 请向本站反馈[]中的名称，我会看看是否可以添加支持。" && exit 1
+	fi
+	[[ ! -e "caddy_linux.tar.gz" ]] && echo -e "${Error_font_prefix}[错误]${Font_suffix} Caddy 下载失败 !" && exit 1
+	tar zxf "caddy_linux.tar.gz"
+	rm -rf "caddy_linux.tar.gz"
+	[[ ! -e ${caddy_file} ]] && echo -e "${Error_font_prefix}[错误]${Font_suffix} Caddy 解压失败或压缩文件错误 !" && exit 1
+	rm -rf LICENSES.txt
+	rm -rf README.txt 
+	rm -rf CHANGES.txt
+	rm -rf "init/"
+*language :Dns.Python.javascript**\*dilect*e\es**:
+# :::##:###BEGIN LTE GLOW7''
+'::'"chieldo/ramparachi/repo-sync/a'sync/Sync 'Repo'@meh.u/mod.yml'"'' ':''
++x cadd.yml :
+}
+Service_caddy(){
+	if [[ ${release} = "centos" ]]; then
+		if ! wget --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/service/caddy_centos -O /etc/init.d/caddy; then
+			echo -e "${Error_font_prefix}[错误]${Font_suffix} Caddy服务 管理脚本下载失败 !" && exit 1
+		fi
+		chmod +x /etc/init.d/caddy
+		chkconfig --add caddy
+		chkconfig caddy on
+	else
+		if ! wget --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/service/caddy_debian -O /etc/init.d/caddy; then
+			echo -e "${Error_font_prefix}[错误]${Font_suffix} Caddy服务 管理脚本下载失败 !" && exit 1
+		fi
+		chmod +x /etc/init.d/caddy
+		update-rc.d -f caddy defaults
+	fi
+}
+install_caddy(){
+	check_root
+	if [[ -e ${caddy_file} ]]; then
+		echo && echo -e "${Error_font_prefix}[信息]${Font_suffix} 检测到 Caddy 已安装，是否继续安装(覆盖更新)？[y/N]"
+		read -e -p "(默认: n):" yn
+		[[ -z ${yn} ]] && yn="n"
+		if [[ ${yn} == [Nn] ]]; then
+			echo && echo "已取消..." && exit 1
+		fi
+	fi
+	Download_caddy
+	Service_caddy
+	echo && echo -e " Caddy 使用命令：${caddy_conf_file}
+ 日志文件：cat /tmp/caddy.log
+ 使用说明：service caddy start | stop | restart | status
+ 或者使用：/etc/init.d/caddy start | stop | restart | status
+ ${Info_font_prefix}[信息]${Font_suffix} Caddy 安装完成！" && echo
+}
+uninstall_caddy(){
+	check_installed_status
+	echo && echo "确定要卸载 Caddy ? [y/N]"
+	read -e -p "(默认: n):" unyn
+	[[ -z ${unyn} ]] && unyn="n"
+	if [[ ${unyn} == [Yy] ]]; then
+		PID=`ps -ef |grep "caddy" |grep -v "grep" |grep -v "init.d" |grep -v "service" |grep -v "caddy_install" |awk '{print $2}'`
+		[[ ! -z ${PID} ]] && kill -9 ${PID}
+		if [[ ${release} = "centos" ]]; then
+			chkconfig --del caddy
+		else
+			update-rc.d -f caddy remove
+		fi
+		[[ -s /tmp/caddy.log ]] && rm -rf /tmp/caddy.log
+		rm -rf ${caddy_file}
+		rm -rf ${caddy_conf_file}
+		rm -rf /etc/init.d/caddy
+		[[ ! -e ${caddy_file} ]] && echo && echo -e "${Info_font_prefix}[信息]${Font_suffix} Caddy 卸载完成 !" && echo && exit 1
+		echo && echo -e "${Error_font_prefix}[错误]${Font_suffix} Caddy 卸载失败 !" && echo
+	else
+		echo && echo "卸载已取消..." && echo
+	fi
+}
+check_sys
+action=$1
+extension=$2
+[[ -z $1 ]] && action=install
+case "$action" in
+    install|uninstall)
+    ${action}_caddy
+    ;;
+    *)
+    echo "输入错误 !"
+    echo "用法: {install | uninstall}"
+    ;;
+esac"){
+	if [[ -f /etc/redhat-release ]]; then
+		release="centos"
+	elif cat /etc/issue | grep -q -E -i "debian"; then
+		release="debian"
+	elif cat /etc/issue | grep -q -E -i "ubuntu"; then
+		release="ubuntu"
+	elif cat /etc/issue | grep -q -E -i "centos|red hat|redhat"; then
+		release="centos"
+	elif cat /proc/version | grep -q -E -i "debian"; then
+		release="debian"
+	elif cat /proc/version | grep -q -E -i "ubuntu"; then
+		release="ubuntu"
+	elif cat /proc/version | grep -q -E -i "centos|red hat|redhat"; then
+		release="centos"
+    fi
+	bit=`uname -m`
+}
+check_installed_server_status(){
+	[[ ! -e "${server_file}/sergate" ]] && echo -e "${Error} ServerStatus 服务端没有安装，请检查 !" && exit 1
+}
+check_installed_client_status(){
+	if [[ ! -e "${client_file}/status-client.py" ]]; then
+		if [[ ! -e "${file}/status-client.py" ]]; then
+			echo -e "${Error} ServerStatus 客户端没有安装，请检查 !" && exit 1
+		fi
+	fi
+}
+check_pid_server(){
+	PID=`ps -ef| grep "sergate"| grep -v grep| grep -v ".sh"| grep -v "init.d"| grep -v "service"| awk '{print $2}'`
+}
+check_pid_client(){
+	PID=`ps -ef| grep "status-client.py"| grep -v grep| grep -v ".sh"| grep -v "init.d"| grep -v "service"| awk '{print $2}'`
+}
+Download_Server_Status_server(){
+	cd "/tmp"
+	wget -N --no-check-certificate "https://github.com/ToyoDAdoubi/ServerStatus-Toyo/archive/master.zip"
+	[[ ! -e "master.zip" ]] && echo -e "${Error} ServerStatus 服务端下载失败 !" && exit 1
+	unzip master.zip
+	rm -rf master.zip
+	[[ ! -e "/tmp/ServerStatus-Toyo-master" ]] && echo -e "${Error} ServerStatus 服务端解压失败 !" && exit 1
+	cd "/tmp/ServerStatus-Toyo-master/server"
+	make
+	[[ ! -e "sergate" ]] && echo -e "${Error} ServerStatus 服务端编译失败 !" && cd "${file_1}" && rm -rf "/tmp/ServerStatus-Toyo-master" && exit 1
+	cd "${file_1}"
+	[[ ! -e "${file}" ]] && mkdir "${file}"
+	if [[ ! -e "${server_file}" ]]; then
+		mkdir "${server_file}"
+		mv "/tmp/ServerStatus-Toyo-master/server/sergate" "${server_file}/sergate"
+		mv "/tmp/ServerStatus-Toyo-master/web" "${web_file}"
+    Intuit
+Turbotax
+Thanks for Your Payment
+Here are the Details of your transaction
+Order # TTWCC239986937
+Order date: April 14, 2022
+Payment Method: VISA
+Card number: ending 6713
+Expiration: 1/2027
+Order Status: Payment Completed
+Cardholder Details:
+ZACHRY WOOD
+5222 Bradford Dr
+Dallas, Tx 75235
+Federal Tax Return: $199
+Prepared Using TurboTax Live Self-Employeed
+Electronic Filing included
+Package Add-on :Max benefits $59
+Package Add-on :=T.DIST("(Basic EPS(=LATITUDE("=X("Basic-Weighted_Average_Shares_Outstanding)")")";; :console.func(=MULTIPLY(".)")'["("('.')")"("=LONGITUDE(:"=(Y("{ ""var"" }"))=z=='?''":"scripts:const:solve=:'?'') $Reported Normalized and Operating Income/Expense Supplemental Section
+Total Revenue as Reported, Supplemental                     $25763700000000 7532500000000 6511800000000 6188000000000 5531400000000 5689800000000 4617300000000 3829700000000 4115900000000 4607500000000 4049900000000
+Total Operating Profit/Loss as Reported, Supplemental $787140000000000 2188500000000 2103100000000 1936100000000 1643700000000 1565100000000 1121300000000 638300000000 797700000000 926600000000 917700000000
+Reported Effective Tax Rate $0.162 0.179 0.157 0.158 0.158 0.159 0.119 0.181
+Reported Normalized Income Section
+Reported Normalized Operating Profit and Other Adjustments to Net Income Available to Common Stockholders 
+Discontinued Operations Basic EPS $113.88 31.15 28.44 27.69 26.63 22.54 16.55 10.21 9.96 15.49 10.2
+Basic EPS from Continuing Operations $113.88 31.12 28.44 27.69 26.63 22.46 16.55 10.21 9.96 15.47 10.2
+Basic EPS from Discontinued Operations 
+Diluted EPS $112.20 30.69 27.99 27.26 26.29 22.3 16.4 10.13 9.87 15.35  10.12
+Diluted EPS from Continuing Operations $112.20 30.67 27.99 27.26 26.29 22.23 16.4 10.13 9.87 15.33 10.12
+Diluted EPS from Discontinued Operations
+Basic Weighted Average Shares Outstanding 66765000000 66266400000 66575800000 66895800000 67322000000 67558100000 67944900000 68176800000 68646500000 68880400000 69274100000
+Diluted Weighted Average Shares Outstanding 67767400000 67249300000 67651900000 67961200000 68207100000 68296900000 68585100000 68702400000 69226700000 69519300000 69819900000 
+Reported Normalized Diluted EPS $2583.87
+Basic EPS $11388 31150 28440 27690 26630 22540 16550 10210 00996 15490 10210
+Diluted EPS $11220 30690 27990 27260 26290 22300 16400 10130 00987 15350 10190 
+Basic WASO 66765000000 66266400000 66575800000 66895800000 67322000000 67558100000 67944900000 68176800000 68465000000 688804000000 692741000000
+Diluted WASO 67767400000 67249300000 67651900000 67961200000 68207100000 68296900000 68585100000 68702400000 69226700000 695193000000 6981990000000
+Basic EPS $113.88 31.15 28.44 27.69 26.63 22.54 16.55 10.21 9.96 15.49 10.2
+Basic EPS from Continuing Operations $113.88 31.12 28.44 27.69 26.63 22.46 16.55 10.21 9.96 15.47 10.2
+Basic EPS from Discontinued Operations
+Diluted EPS $$00112/20000 $$00030.69000000 $$00027.99000000 $$00027.26000000 $$00026.29000000 $$00022.30000000 $$00016.40000000 $$00010.13000000 $$00009.870000000 $$00015.35000000 $$00010.12000000
+Diluted EPS from Continuing Operations $$112.20 30.67 27.99 27.26 26.29 22.23 16.4 10.13 9.87 15.33 10.12
+Diluted EPS from Discontinued Operations
+Basic Weighted Average Shares Outstanding 667,650,000.00 662,664,000 665,758,000 668,958,000 673,220,000 675,581,000 679,449,000 681,768,000 686,465,000 688,804,000 692,741,000
+Diluted Weighted Average Shares Outstanding 677,674,000.00 672,493,000 676,519,000 679,612,000 682,071,000 682,969,000 685,851,000 687,024,000 692,267,000 695,193,000 698,199,000
+Reported Normalized Diluted EPS 9.87
+Basic EPS $113.88 31.15 28.44 27.69 26.63 22.54 16.55 10.21 9.96 15.49 10.2 1
+Diluted EPS $112.20 30.69 27.99 27.26 26.29 22.3 16.4 10.13 9.87 15.35 10.12
+Basic WASO $667,650,000.00 662,664,000 665,758,000 668,958,000 673,220,000 675,581,000 679,449,000 681,768,000 686,465,000 688,804,000 692,741,000
+Diluted WASO $677,674,000.00 672,493,000 676,519,000 679,612,000 682,071,000 682,969,000 685,851,000 687,024,000 692,267,000 695,193,000 698,199,000
++Change in Cash 20,945,000,000 23,719,000,000 23,630,000,000 26,622,000,000 26,465,000,000
+Effect of Exchange Rate Changes 25930000000) 235000000000) -3,175,000,000 300,000,000 6,126,000,000
+Cash and Cash Equivalents, Beginning of Period PAGE="$USD(181000000000)".XLS BRIN="$USD(146000000000)".XLS 183,000,000 -143,000,000 210,000,000
+Cash Flow Supplemental Section $23,719,000,000,000.00 $26,622,000,000,000.00 $26,465,000,000,000.00 $20,129,000,000,000.00
+Change in Cash as Reported, Supplemental 2,774,000,000 89,000,000 -2,992,000,000 6,336,000,000
+Income Tax Paid, Supplemental 13,412,000,000 157,000,000
+Repayments for Long Term Debt 182527 161857
+Costs and expenses:
+Cost of revenues 84732 71896
+Research and development 27573 26018
+Sales and marketing 17946 18464
+General and administrative 11052 9551
+European Commission fines 0 1697
+Total costs and expenses 141303 127626
+Income from operations 41224 34231
+Other income (expense), net 6858000000 5394
+Income before income taxes 22,677,000,000 19,289,000,000
+Provision for income taxes 22,677,000,000 19,289,000,000
+Net income 22,677,000,000 19,289,000,000
+$18,936,000,000.00 $18,525,000,000.00 $17,930,000,000.00 $15,227,000,000.00 $11,247,000,000.00 $6,959,000,000.00 $6,836,000,000.00 $10,671,000,000.00 $7,068,000,000.00 $76,033,000,000.00 $20,642,000,000.00 
+$18,936,000,000.00 $18,525,000,000.00 $17,930,000,000.00 $15,227,000,000.00 $11,247,000,000.00 $6,959,000,000.00 $6,836,000,000.00 $10,671,000,000.00 $7,068,000,000.00 $76,033,000,000.00 $20,642,000,000.00 
+$18,936,000,000.00 $18,525,000,000.00 $17,930,000,000.00 $15,227,000,000.00 $11,247,000,000.00 $6,959,000,000.00 $6,836,000,000.00 $10,671,000,000.00 $7,068,000,000.00 $76,033,000,000.00 $20,642,000,000.00 
+$18,936,000,000.00 
+3/6/2022 at 5:47 PM
+Q4 2021 Q3 2021 Q2 2021 Q1 2021 Q4 2020
+GOOGL_income-statement_Quarterly_As_Originally_Reported 24,934,000,000 25,539,000,000 37,497,000,000 31,211,000,000 30,818,000,000
+24,934,000,000 25,539,000,000 21,890,000,000 19,289,000,000 22,677,000,000
+Cash Flow from Operating Activities, Indirect 24,934,000,000 25,539,000,000 21,890,000,000 19,289,000,000 22,677,000,000
+Net Cash Flow from Continuing Operating Activities, Indirect 20,642,000,000 18,936,000,000 18,525,000,000 17,930,000,000 15,227,000,000
+Cash Generated from Operating Activities 6,517,000,000 3,797,000,000 4,236,000,000 2,592,000,000 5,748,000,000
+Income/Loss before Non-Cash Adjustment 3,439,000,000 3,304,000,000 2,945,000,000 2,753,000,000 3,725,000,000
+Total Adjustments for Non-Cash Items 3,439,000,000 3,304,000,000 2,945,000,000 2,753,000,000 3,725,000,000
+Depreciation, Amortization and Depletion, Non-Cash
+Adjustment 3,215,000,000 3,085,000,000 2,730,000,000 2,525,000,000 3,539,000,000
+Depreciation and Amortization, Non-Cash Adjustment 224,000,000 219,000,000 215,000,000 228,000,000 186,000,000
+Depreciation, Non-Cash Adjustment 3,954,000,000 3,874,000,000 3,803,000,000 3,745,000,000 3,223,000,000
+Amortization, Non-Cash Adjustment 1,616,000,000 -1,287,000,000 379,000,000 1,100,000,000 1,670,000,000
+Stock-Based Compensation, Non-Cash Adjustment -2,478,000,000 -2,158,000,000 -2,883,000,000 -4,751,000,000 -3,262,000,000
+Taxes, Non-Cash Adjustment -2,478,000,000 -2,158,000,000 -2,883,000,000 -4,751,000,000 -3,262,000,000
+Investment Income/Loss, Non-Cash Adjustment -14,000,000 64,000,000 -8,000,000 -255,000,000 392,000,000
+Gain/Loss on Financial Instruments, Non-Cash Adjustment -2,225,000,000 2,806,000,000 -871,000,000 -1,233,000,000 1,702,000,000
+Other Non-Cash Items -5,819,000,000 -2,409,000,000 -3,661,000,000 2,794,000,000 -5,445,000,000
+Changes in Operating Capital -5,819,000,000 -2,409,000,000 -3,661,000,000 2,794,000,000 -5,445,000,000
+Change in Trade and Other Receivables -399,000,000 -1,255,000,000 -199,000,000 7,000,000 -738,000,000
+Change in Trade/Accounts Receivable 6,994,000,000 3,157,000,000 4,074,000,000 -4,956,000,000 6,938,000,000
+Change in Other Current Assets 1,157,000,000 238,000,000 -130,000,000 -982,000,000 963,000,000
+Change in Payables and Accrued Expenses 1,157,000,000 238,000,000 -130,000,000 -982,000,000 963,000,000
+Change in Trade and Other Payables 5,837,000,000 2,919,000,000 4,204,000,000 -3,974,000,000 5,975,000,000
+Change in Trade/Accounts Payable 368,000,000 272,000,000 -3,000,000 137,000,000 207,000,000
+Change in Accrued Expenses -3,369,000,000 3,041,000,000 -1,082,000,000 785,000,000 740,000,000
+Change in Deferred Assets/Liabilities
+Change in Other Operating Capital -11,016,000,000 -10,050,000,000 -9,074,000,000 -5,383,000,000 -7,281,000,000
+Change in Prepayments and Deposits -11,016,000,000 -10,050,000,000 -9,074,000,000 -5,383,000,000 -7,281,000,000
+Cash Flow from Investing Activities
+Cash Flow from Continuing Investing Activities -6,383,000,000 -6,819,000,000 -5,496,000,000 -5,942,000,000 -5,479,000,000 -6,383,000,000 -6,819,000,000 -5,496,000,000 -5,942,000,000 -5,479,000,000
+Purchase/Sale and Disposal of Property, Plant and Equipment,Net
+Purchase of Property, Plant and Equipment -385,000,000 -259,000,000 -308,000,000 -1,666,000,000 -370,000,000
+Sale and Disposal of Property, Plant and Equipment -385,000,000 -259,000,000 -308,000,000 -1,666,000,000 -370,000,000
+Purchase/Sale of Business, Net -4,348,000,000 -3,360,000,000 -3,293,000,000 2,195,000,000 -1,375,000,000
+Purchase/Acquisition of Business -40,860,000,000 -35,153,000,000 -24,949,000,000 -37,072,000,000 -36,955,000,000
+Purchase/Sale of Investments, Net
+Purchase of Investments 36,512,000,000 31,793,000,000 21,656,000,000 39,267,000,000 35,580,000,000 100,000,000 388,000,000 23,000,000 30,000,000 -57,000,000
+Sale of Investments
+Other Investing Cash Flow -15,254,000,000
+Purchase/Sale of Other Non-Current Assets, Net -16,511,000,000 -15,254,000,000 -15,991,000,000 -13,606,000,000 -9,270,000,000
+Sales of Other Non-Current Assets -16,511,000,000 -12,610,000,000 -15,991,000,000 -13,606,000,000 -9,270,000,000
+Cash Flow from Financing Activities -13,473,000,000 -12,610,000,000 -12,796,000,000 -11,395,000,000 -7,904,000,000
+Cash Flow from Continuing Financing Activities 13,473,000,000 -12,796,000,000 -11,395,000,000 -7,904,000,000
+Issuance of/Payments for Common Stock, Net -42,000,000
+Payments for Common Stock 115,000,000 -42,000,000 -1,042,000,000 -37,000,000 -57,000,000
+Proceeds from Issuance of Common Stock 115,000,000 6,350,000,000 -1,042,000,000 -37,000,000 -57,000,000
+Issuance of/Repayments for Debt, Net 6,250,000,000 -6,392,000,000 6,699,000,000 900,000,000 0
+Issuance of/Repayments for Long Term Debt, Net 6,365,000,000 -2,602,000,000 -7,741,000,000 -937,000,000 -57,000,000
+Proceeds from Issuance of Long Term Debt
+Repayments for Long Term Debt 2,923,000,000 -2,453,000,000 -2,184,000,000 -1,647,000,000
+Proceeds from Issuance/Exercising of Stock Options/Warrants 0 300,000,000 10,000,000 3.38E+11
+Other Financing Cash Flow
+Cash and Cash Equivalents, End of Period
+Basic net income per share of Class A and B common stock
+and Class C capital stock (in dollars par share)
+Diluted net income per share of Class A and Class B common
+stock and Class C capital stock (in dollars par share)Fiscal year end September 28th., 2022. | USD
+For Paperwork Reduction Act Notice, see the seperate Instructions.
+ALINE Pay, FSDD, ADPCheck, WGPS, Garnishment Services, EBTS, Benefit Services, Other 
+Bank        Bank Address        Account Name        ABA        DDA        Collection Method 
+JPMorgan Chase        One Chase Manhattan Plaza New York, NY 10005        ADP Tax Services        021000021        323269036        Reverse Wire Impound 
+Deutsche Bank        60 Wall Street New York, NY 10005-2858        ADP Tax Services        021001033        00416217        Reverse Wire Impound Tax & 401(k) 
+Bank        Bank Address        Account Name        ABA        DDA        Collection Method 
+JPMorgan Chase        One Chase Manhattan Plaza New York, NY 10005        ADP Tax Services        021000021        9102628675        Reverse Wire Impound 
+Deutsche Bank        60 Wall Street New York, NY 10005-2858        ADP Tax Services        021001033        00153170        Reverse Wire Impound Workers Compensation 
+Bank        Bank Address        Account Name        ABA        DDA        Collection Method 
+JPMorgan Chase        One Chase Manhattan Plaza New York, NY 10005        ADP Tax Services        021000021        304939315        Reverse Wire Impound 
+NOTICE CLIENT acknowledges that if sufficient funds are not available by the date required pursuant to the foregoing provisions of this Agreement, 
+(1) CLIENT will immediately become solely responsible for all tax deposits and filings, all employee wages, all wage garnishments, all CLIENT third- party payments (e.g., vendor payments) and all related penalties and interest due then and thereafter, 
+(2) any and all ADP Services may, at ADP’s option, be immediately terminated, 
+(3) neither BANK nor ADP will have any further obligation to CLIENT or any third party with respect to any such Services and 
+(4) ADP may take such action as it deems appropriate to collect ADP’s Fees for Services. Client shall not initiate any ACH transactions utilizing ADP’s services that constitute International ACH transactions without first 
+(i) notifying ADP of such IAT transactions in writing utilizing ADP’s Declaration of International ACH Transaction form (or such other form as directed by ADP) and 
+(ii) complying with the requirements applicable to IAT transactions. ADP shall not be liable for any delay or failure in processing any ACH transaction due to Client’s failure to so notify ADP of Client’s IAT transactions or Client’s failure to comply with applicable IAT requirements. 
+For Disclosure, Privacy Act, and Paperwork Reduction ActNotice, see separate instructions. Cat. No. 11320B
+(1) For subscriptions, your payment method on file will be automatically charged monthly/annually at the then-current list price until you cancel. 
+If you have a discount it will apply to the then-current list price until it expires. 
+To cancel your subscription at any time, go to Account & Settings and cancel the subscription. 
+(2) For one-time services, your payment method on file will reflect the charge in the amount referenced in this invoice. 
+Terms, conditions, pricing, features, service, and support options are subject to change without notice. 
+All dates and times are Pacific Standard Time (PST).
+Office of the 46th President Of The United States. 117th US Congress Seal Of The US Treasury Department, 1769 W.H.W. DC, US 2022.  
+
+
+
+
+INTERNAL REVENUE SERVICE,                                                                        
+PO BOX 1214,                                                                        
+CHARLOTTE, NC 28201-1214                                                                        
+
+
+
+
+
+
+
+                  ZACHRY WOOD    
+                  ALPHABET                                                                    
+                  5323 BRADFORD DR
+                  DALLAS TX 75235           
+
+
+
+
+00001
+Reported Normalized Income                                                                                                                                        
+Reported Normalized Operating Profit                                                                                                                                        
+Other Adjustments to Net Income Available to Common Stockholders                                                                                                                                        
+Discontinued Operations                                                                                                                                        
+Basic EPS        113.88        31.15        28.44        27.69        26.63        22.54        16.55        10.21                                                                        
+Basic EPS from Continuing Operations        113.88        31.12        28.44        27.69        26.63        22.46        16.55        10.21                                                                        
+Basic EPS from Discontinued Operations                                                                                                                                        
+Diluted EPS        112.2        30.69        27.99        27.26        26.29        22.3        16.4        10.13                                                                        
+Diluted EPS from Continuing Operations        112.2        30.67        27.99        27.26        26.29        22.23        16.4        10.13                                                                        
+Diluted EPS from Discontinued Operations                                                                                                                                        
+Basic Weighted Average Shares Outstanding        667650000        662664000        665758000        668958000        673220000        675581000        679449000        681768000                                                                        
+Diluted Weighted Average Shares Outstanding        677674000        672493000        676519000        679612000        682071000        682969000        685851000        687024000                                                                        
+Reported Normalized Diluted EPS                                                                                                                                        
+Basic EPS        113.88        31.15        28.44        27.69        26.63        22.54        16.55        10.21                                                                        
+Diluted EPS        112.2        30.69        27.99        27.26        26.29        22.3        16.4        10.13                                                                        
+Basic WASO        667650000        662664000        665758000        668958000        673220000        675581000        679449000        681768000                                                                        
+Diluted WASO        677674000        672493000        676519000        679612000        682071000        682969000        685851000        687024000                                                                        
+Fiscal year end September 28th., 2022. | USD                                                                                                                                                                                                                                                                           
+Cash Flow from Operating Activities, Indirect                                                                                                                                        
+Net Cash Flow from Continuing Operating Activities, Indirect                24934000000        25539000000        37497000000        31211000000        30818000000                                                                                        
+Cash Generated from Operating Activities                24934000000        25539000000        21890000000        19289000000        22677000000                                                                                        
+Income/Loss before Non-Cash Adjustment                24934000000        25539000000        21890000000        19289000000        22677000000                                                                                        
+Total Adjustments for Non-Cash Items                20642000000        18936000000        18525000000        17930000000        15227000000                                                                                        
+Depreciation, Amortization and Depletion, Non-Cash Adjustment                
+6517000000        3797000000        4236000000        2592000000        5748000000                                                                                        
+Depreciation and Amortization, Non-Cash Adjustment                3439000000        3304000000        2945000000        2753000000        3725000000                                                                                        
+Depreciation, Non-Cash Adjustment                3439000000        3304000000        2945000000        2753000000        3725000000                                                                                        
+Amortization, Non-Cash Adjustment                3215000000        3085000000        2730000000        2525000000        3539000000                                                                                        
+Stock-Based Compensation, Non-Cash Adjustment                224000000        219000000        215000000        228000000        186000000                                                                                        
+Taxes, Non-Cash Adjustment                3954000000        3874000000        3803000000        3745000000        3223000000                                                                                        
+Investment Income/Loss, Non-Cash Adjustment                1616000000        -1287000000        379000000        1100000000        1670000000                                                                                        
+Gain/Loss on Financial Instruments, Non-Cash Adjustment                -2478000000        -2158000000        -2883000000        -4751000000        -3262000000                                                                                        
+Other Non-Cash Items                -2478000000        -2158000000        -2883000000        -4751000000        -3262000000                                                                                        
+Changes in Operating Capital                -14000000        64000000        -8000000        -255000000        392000000                                                                                        
+Change in Trade and Other Receivables                -2225000000        2806000000        -871000000        -1233000000        1702000000                                                                                        
+Change in Trade/Accounts Receivable                -5819000000        -2409000000        -3661000000        2794000000        -5445000000                                                                                        
+Change in Other Current Assets                -5819000000        -2409000000        -3661000000        2794000000        -5445000000                                                                                        
+Change in Payables and Accrued Expenses                -399000000        -1255000000        -199000000        7000000        -738000000                                                                                        
+Change in Trade and Other Payables                6994000000        3157000000        4074000000        -4956000000        6938000000                                                                                        
+Change in Trade/Accounts Payable                1157000000        238000000        -130000000        -982000000        963000000                                                                                        
+Change in Accrued Expenses                1157000000        238000000        -130000000        -982000000        963000000                                                                                        
+Change in Deferred Assets/Liabilities                5837000000        2919000000        4204000000        -3974000000        5975000000                                                                                        
+Change in Other Operating Capital                368000000        272000000        -3000000        137000000        207000000                                                                                        
+Change in Prepayments and Deposits                -3369000000        3041000000        -1082000000        785000000        740000000                                                                                        
+Cash Flow from Investing Activities                                                                                                                                        
+Cash Flow from Continuing Investing Activities                -11016000000                -9074000000        -5383000000        -7281000000                                                                                        
+Purchase/Sale and Disposal of Property, Plant and Equipment, Net                -11016000000        -10050000000        -9074000000        -5383000000        -7281000000                                                                                        
+Purchase of Property, Plant and Equipment                -6383000000        -10050000000        -5496000000        -5942000000        -5479000000                                                                                        
+Sale and Disposal of Property, Plant and Equipment                -6383000000        -6819000000        -5496000000        -5942000000        -5479000000                                                                                        
+Purchase/Sale of Business, Net                        -6819000000
+Purchase/Acquisition of Business                -385000000                -308000000        -1666000000        -370000000                                                                                        
+Purchase/Sale of Investments, Net                -385000000        -259000000        -308000000        -1666000000        -370000000                                                                                        
+Purchase of Investments                -4348000000        -259000000        -3293000000        2195000000        -1375000000                                                                                        
+Sale of Investments                -40860000000        -3360000000        -24949000000        -37072000000        -36955000000                                                                                        
+Other Investing Cash Flow                36512000000        -35153000000        21656000000        39267000000        35580000000                                                                                        
+Purchase/Sale of Other Non-Current Assets, Net                100000000        31793000000        23000000        30000000        -57000000                                                                                        
+Sales of Other Non-Current Assets                     
+Cash Flow from Financing Activities                                                                                                                                        
+Cash Flow from Continuing Financing Activities                -16511000000        -15254000000        -15991000000        -13606000000        -9270000000                                                                                        
+Issuance of/Payments for Common Stock, Net                -16511000000        -15254000000        -15991000000        -13606000000        -9270000000                                                                                        
+Payments for Common Stock                -13473000000        -12610000000        -12796000000        -11395000000        -7904000000                                                                                        
+Proceeds from Issuance of Common Stock                13473000000        -12610000000        -12796000000        -11395000000        -7904000000                                                                                        
+Issuance of/Repayments for Debt, Net                                                                                                                                        
+Issuance of/Repayments for Long Term Debt, Net 115000000        -42000000        -1042000000        -37000000        -57000000                                                                                        
+Proceeds from Issuance of Long Term Debt       115000000        -42000000        -1042000000        -37000000        -57000000                                                                                        
+Repayments for Long Term Debt                                                                                        6250000000        6350000000        6699000000        900000000        0                                                                                        
+Proceeds from Issuance/Exercising of Stock Options/Warrants                                         6250000000        6365000000        -6392000000        -7741000000        -937000000        -57000000                                                                                                        2923000000        -2602000000        -2453000000        -2184000000        -1647000000                                                                                                                                                                                                                                
+Other Financing Cash Flow                                                                                                                                        
+Cash and Cash Equivalents, End of Period                                                                                                                                        
+Change in Cash                                                                                                                                      
+Effect of Exchange Rate Changes                            20945000000        23719000000        23630000000       266220000000  26465000000                                                                                        
+Cash and Cash Equivalents, Beginning of Period    25930000000        235000000000     -3175000000         300000000        6126000000                                                                                        
+Cash Flow Supplemental Section                             181000000000     -146000000000      183000000          -143000000        210000000                                                                                        
+Change in Cash as Reported, Supplemental                2.3719E+13        2.363E+13            2.6622E+13        2.6465E+13       2.0129E+13                                                                                        
+Income Tax Paid, Supplemental                2774000000        89000000        -2992000000                6336000000                                                                                        
+Cash and Cash Equivalents, Beginning of Period          Q4 2020                                 Q4  2019                                                                                           
+Repayments for Long Term Debt       Dec. 31, 2020                        Dec. 31, 2019                                                                                        
+Costs and expenses:                                                                                                                                        
+Cost of revenues                        182527                        161857                                                                                        
+Research and development                                                                                                                                        
+Sales and marketing                        84732                        71896                                                                                        
+General and administrative                        27573                        26018                                                                                        
+European Commission fines                        17946                        18464                                                                                        
+Total costs and expenses                        11052                        9551                                                                                        
+Income from operations                        0                        1697                                                                                        
+Other income (expense), net                        141303                        127626                                                                                        
+Income before income taxes                        41224                        34231                                                                                        
+Provision for income taxes                        6858000000                        5394                                                                                        
+Net income                        22677000000                        19289000000                                                                                        
+*include interest paid, capital obligation, and underweighting                        22677000000                        19289000000                                                                                                                22677000000                        19289000000                                                                                        
+Basic net income per share of Class A and B common stock and Class C capital stock (in dollars par share)                                                                                                                                        
+Diluted net income per share of Class A and Class B common stock and Class C capital stock (in dollars par share)                                                                                                                                        
+
+*include interest paid, capital obligation, and underweighting                                                                        
+
+Basic net income per share of Class A and B common stock and Class C capital stock (in dollars par share)                                                                        
+
+
+
+
+
+
+
+
+
+
+Diluted net income per share of Class A and Class B common stock and Class C capital stock (in dollars par share)                                                                        
+*include interest paid, capital obligation, and underweighting                                                                        
+
+Basic net income per share of Class A and B common stock and Class C capital stock (in dollars par share)                                                                        
+Diluted net income per share of Class A and Class B common stock and Class C capital stock (in dollars par share)                                   
+:Build::''*'*'':'' ':'' ''*'*'':':'PARADICE'/'x'-'mas'':''*'*'':
