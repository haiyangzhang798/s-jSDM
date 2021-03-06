#' @title installation help
#' @name installation_help
#' @docType package
#' @description A scalable method to estimates joint Species Distribution Models (jSDMs).
#' @details A scalable method to estimates joint Species Distribution Models (jSDMs) based on the multivariate probit model through Monte-Carlo approximation of the joint likelihood. The numerical approximation is based on PyTorch and reticulate, and can be calculated on CPUs and GPUs alike. 
#' 
#' @section PyTorch Installation - Before you start:
#' 
#' A few notes before you start with the installation:
#'\itemize{
#'  \item existing conda installations (skip this point if you do not know conda): make sure you have the latest conda3/miniconda3 installation and remove unneccessary conda installations.
#'  \item existing conda/virtualenv (skip this point if you do not know conda): the R package reticulate has problems to find the right environment and it is better to remove unneccessary environments (see the troubleshooting section)
#' }
#' 
#' 
#' @section Windows - automatic installation:
#' 
#' Conda is the easiest way to install python and python packages on windows:
#' Install the latest \href{https://www.anaconda.com/distribution/}{conda version}
#' 
#' Afterwards run:\cr
#' \code{install_sjSDM(version = c("gpu")) # or "cpu" if you do not have a proper gpu device }
#' 
#' Reload the package and run the example , if this doesn't work:
#' \itemize{
#' \item Restart RStudio
#' \item Install manually pytorch, see the following section
#' }
#' 
#'  
#' @section Windows - manual installation:
#' 
#' Conda is the easiest way to install python and python packages on windows:
#' \itemize{
#' \item Install the latest \href{https://www.anaconda.com/distribution/}{conda version}
#' \item Open the command window (cmd.exe - hit windows key + r and write cmd)
#' }
#' Run in cmd.exe:\cr
#' \preformatted{
#' $ conda create --name sjSDM_env python=3.7\cr
#' $ conda activate sjSDM_env\cr
#' $ conda install pytorch torchvision cpuonly -c pytorch # cpu\cr
#' $ conda install pytorch torchvision cudatoolkit=10.1 -c pytorch #gpu\cr
#' }
#' 
#' Restart R try to run the example, if this doesn't work:
#' \itemize{
#' \item Restart RStudio
#' \item See the troubleshooting section
#' }
#' 
#'    
#' @section Linux - automatic installation:
#' 
#' Run in R:\cr
#' \code{install_sjSDM(version = c("gpu")) # or "cpu" if you do not have a proper gpu device }
#' Restart R try to run the example, if this doesn't work:
#' \itemize{
#' \item Restart RStudio
#' \item Install manually pytorch, see the following section
#' }
#'  
#'  
#' @section Linux - manual installation:
#' 
#' Via pip\cr
#' python3 is pre-installed on most linux distributions, but you have to check that the minimal requirement of python >= 3.6 is met: 
#'   
#' Run in your shell:\cr
#' \preformatted{
#' $ python3 --version\cr
#' $ python --version\cr
#' }
#' 
#' Check if pip is installed:
#' \preformatted{
#' $ pip3 --version\cr
#' $ pip --version\cr
#' }
#' 
#' If not then install pip:\cr
#' \preformatted{
#' $ sudo apt install python3-pip # for ubuntu/deb   # e.g. for ubuntu
#' }
#' 
#' It depends on your ENVIRONMENTAL variables whether pip or pip3 corresponds to python3. You can check the python version of pip via:\cr
#' \preformatted{
#' $ pip --version
#' }
#' 
#' In my case, I have to use "pip3":\cr
#' \preformatted{
#' $ pip3 install torch==1.4.0+cpu torchvision==0.5.0+cpu -f https://download.pytorch.org/whl/torch_stable.html #cpu
#' $ pip3 install torch torchvision #gpu
#' }
#' 
#' Restart R try to run the example, if this doesn't work:
#' \itemize{
#' \item Restart RStudio
#' \item See the troubleshooting section
#' }
#' 
#' Via virtualenv\cr
#' Create a virtualenv and install dependencies (shell):\cr
#' \preformatted{
#' $ python3 -m pip install --user virtualenv\cr
#' $ python3 -m venv ~/sjSDM_env\cr
#' $ source ~/sjSDM_env/bin/activate\cr
#' $ pip install torch==1.4.0+cpu torchvision==0.5.0+cpu -f https://download.pytorch.org/whl/torch_stable.html #cpu\cr
#' $ pip install torch torchvision #gpu\cr
#' }
#' 
#' Restart R try to run the example, if this doesn't work:
#' \itemize{
#' \item Restart RStudio
#' \item See the troubleshooting section
#' }
#' 
#' Via conda\cr
#' Install the latest \href{https://www.anaconda.com/distribution/}{conda version} and run (shell):\cr
#' \preformatted{
#' $ conda create --name sjSDM_env python=3.7\cr
#' $ conda activate sjSDM_env\cr
#' $ conda install pytorch torchvision cpuonly -c pytorch # cpu\cr
#' $ conda install pytorch torchvision cudatoolkit=10.1 -c pytorch #gpu\cr
#' }
#' Restart R try to run the example from, if this doesn't work:\cr
#' \itemize{
#' \item Restart RStudio
#' \item See the troubleshooting section
#' }
#' 
#' @section  MacOS:
#' 
#' Via conda\cr
#' Install the latest \href{https://www.anaconda.com/distribution/}{conda version} and run in your OS shell:\cr
#' \preformatted{
#' $ conda create --name sjSDM_env python=3.7\cr
#' $ conda activate sjSDM_env\cr
#' $ conda install pytorch torchvision cpuonly -c pytorch # cpu\Cr
#' }
#' Restart R try to run the example from, if this doesn't work:
#' \itemize{
#' \item Restart RStudio
#' \item See the troubleshooting section
#' }
#'     
#' For GPU support on MacOS, you have to install the cuda binaries yourself, see \href{https://pytorch.org/}{PyTorch for help}
#'
#'      
#' @section Troubleshooting:
#' 
#' After several installation attempts you might have corrupt and unneccessary conda environments which you have to remove:
#' Open the shell (Windows users: run cmd.exe):\cr
#' \preformatted{
#' $ conda env list\cr
#' }
#' will list the paths of all your environments, except for the "base" env, delete them via:\cr
#' \preformatted{
#' $ rm - r <path-to-env1>\cr
#' $ rm - r <path-to-env2>\cr
#' }
#' Then continue with the manual install instructions in above sections.
#'
#' @section Help and bugs:
#' 
#' To report bugs or ask for help, post a \href{http://stackoverflow.com/questions/5963269/how-to-make-a-great-r-reproducible-example}{reproducible example} via the sjSDM \href{https://github.com/TheoreticalEcology/s-jSDM/issues}{issue tracker} with a copy of the \code{\link{install_diagnostic}} output as a quote on GitHub. 
NULL