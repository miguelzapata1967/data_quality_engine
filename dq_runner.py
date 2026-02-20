import yaml
from pathlib import path
BASE_DIR = PATH (__FILE__).PARENT
CONFIG_PATH = BASE_DIR / 'config.yaml'
RULES/DIR = BASE_DIR / 'rules'

def load_config():
  with open(config_path) as f:
    return yaml.safe_load(f)
def list_rules_to_run(config):
  tasks = []
  for table, detailsin cofig.get('tables', {}.items():
    if not details.get('enabled', false):
          continue
    for rule in details.get('rules',[]):
      tasks.append ((table, rule))
    return tasks
def main():
  config = load_config()
  tasks = list_rules_to_run(config)
  print('Data Quality Rules to Execute:')
    for table, rule in tasks:
      print(f'__table:{table:<10} | rule:{rules}')
if __name__ == '__main__':
  main()


