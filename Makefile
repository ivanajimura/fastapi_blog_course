create-venv:
	@python -m venv env

activate-venv:
	@source env/bin/activate		#needs to be typed into terminal, does not work from within Make

set_path:
	@export PYTHONPATH='/home/ivan/Documents/fastapi_blog' #needs to be typed into terminal, does not work from within Make

freeze-requirements:
	@pip freeze > requirements.txt

install-requirements:
	@pip install -r requirements.txt

update-requirements:
	@pip install $(pip list --outdated --format=columns |tail -n +3|cut -d" " -f1) --upgrade		#type into terminal

start-server:
	@uvicorn backend.main:app --reload

init-git:
	@git init
