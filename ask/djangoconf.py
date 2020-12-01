CONFIG = {
  'mode': 'wsgi',
  'python': '/usr/bin/python3.6',
  'working_dir': '/home/box/web/ask',
  'args': (
    '--bind=0.0.0.0:8000',
    '--workers=2',
    '--timeout=60',    
    'ask.wsgi:application',
  ),
}
