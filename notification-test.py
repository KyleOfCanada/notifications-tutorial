from secrets import web_hook
import requests


# imported web_hook is
# def web_hook(event):
#     my_key = 'XXXX'
#     url = f'https://maker.ifttt.com/trigger/{event}/with/key/{my_key}'
#     return url


ifttt_web_hook = web_hook('test_event')
requests.post(ifttt_web_hook)
