python3 << EOF
import vim
import requests
class Stock(object):
    def __init__(self, id='603970'):
        self.id = id
        self.per = ''
        self.name = ''

    def stockInfo(self):
        if self.id[0] == '6':
            url = 'https://hq.sinajs.cn/list=sh' + self.id
        else:
            url = 'https://hq.sinajs.cn/list=sz' + self.id
        r = requests.get(url)
        self.info = r.text.split(',')

    def priceRise(self):
        cur_price = float(self.info[3])  # 当前价格
        open_price = float(self.info[2])  # 昨天的收盘价
        self.per = (cur_price - open_price) / open_price
        self.per *= 100
        self.per = '%.2f%%' % self.per

    def stockName(self):
        self.name = (self.info[0].split('"'))[1]

    def output(self):
        self.stockInfo()
        self.priceRise()
        self.stockName()
        txt = self.name + '  ' + self.per
        # print(txt)
        return txt
        #vim.command('let @*= "%s"' % txt)
EOF

"  let s:com = "py3"
"  function! stock#price()
"      exec s:com 'Stock'
"  endfunction
