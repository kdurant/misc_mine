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
        vim.command('let @u= "%s"' % txt)
        return txt

def stock_rise(id='603970'):
    #    if id[0] == '6':
    #        url = 'https://hq.sinajs.cn/list=sh' + id
    #    else:
    #        url = 'https://hq.sinajs.cn/list=sz' + id
    #    r = requests.get(url)
    #    info = r.text.split(',')
    #
    #    cur_price = float(info[3])  # 当前价格
    #    open_price = float(info[2])  # 昨天的收盘价
    #    per = (cur_price - open_price) / open_price
    #    per *= 100
    #    per = '%.2f%%' % per
    #    
    #    name = (info[0].split('"'))[1]
    #
    #    txt = name + '  '
    txt = '中农李华 -1.33%'
    vim.command("let @i = '%s'" % txt)
    return txt
EOF

let s:com = "py3"
function! stock#price(id)
    "exec s:com 'Stock().output()'
    "echo @u
    exec s:com 'stock_rise(id)'
endfunction
