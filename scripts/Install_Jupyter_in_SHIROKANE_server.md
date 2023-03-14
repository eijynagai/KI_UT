# Install Jupyter in SHIROKANE server

Jupyter Notebook is a web-based interactive computational environment for creating, editing, and sharing documents that contain live code, equations, visualizations, and explanatory text. It allows you to write and execute code in several programming languages, including Python, R, and Julia, directly in your web browser. Jupyter Notebook supports data cleaning and transformation, numerical simulation, statistical modeling, data visualization, machine learning, and more.

Jupyter Notebook was originally developed as part of the IPython project in 2011, but it has since grown into a standalone project and has been renamed to Jupyter (an acronym for Julia, Python, and R). The name "Jupyter" is a combination of "Julia," "Python," and "R," the three programming languages that Jupyter Notebook initially supported. Jupyter Notebook is open-source software and is widely used by data scientists, researchers, educators, and professionals across various industries.

### Installing Jupyter

First, load the modules containing Python definitions and statements. To use module,  make adjustments based on your system as follows:

```bash
$ module use /usr/local/package/modulefiles
$ module load python/3.6.5
$ pip install jupyter
$ pip install --upgrade jupyter_client
```

If the plan is to use Jupyter Notebook in a personal computer, then you can start using right after with the command `$ jupyter notebook`. However, you use from a external server, you may need to do extra steps to configure it properly.

```bash
# generate a new config file
jupyter notebook --generate-config
```

Then, go to the configuration directory at `~/.jupyter/`  at your home directory and modify the jupyter configuration file `jupyter_notebook_config.py` as indicated below. Please pay important attention and do not modify other lines:

```bash
#From
# c.NotebookApp.ip = 'localhost'

#To
c.NotebookApp.ip = '0.0.0.0'
```

Save and quit.

Now, try again 

`$ jupyter notebook`



If a pop up window with forbidden message show in your screen or if Rstudio open, please close the windown and return to the terminal screen. Search for a line that starts with the server you loged in. For example: `gc017:8888/?token=...` . Copy the whole line and paste in ther Firefox browser to open Jupyter notebook.



Congratulations! You succeed this step!
