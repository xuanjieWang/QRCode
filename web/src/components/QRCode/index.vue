<template>
  <div id="QRCode" :style="{'width':width, 'height':height}">
    <canvas :id="canvasId" :style="{'width':width, 'height':height}"></canvas>
    <div class="flex jc-center">
      <el-button
        type="text"
        v-if="copy"
        v-clipboard:copy="content"
        v-clipboard:success="onCopy"
        v-clipboard:error="onError"
      >复制链接</el-button>
      <el-button class="configBtn" type="text" size="" @click="download1" v-if="download">下载二维码</el-button>
    </div>
  </div>
</template>
<script>
import QRCode from 'qrcode'
import VueClipboard from 'vue-clipboard2'
export default {
  name: 'QRCode',
  props: {
    canvasId: {
      type: String,
      default: 'canvasId'
    },
    content: { // 二维码中存储的信息
      type: String,
      default: '测试二维码'
    },
    width: {
      type: String,
      default: '200'
    },
    height: {
      type: String,
      default: '200'
    },
    download: {
      type: Boolean,
      default: false
    },
    copy: {
      type: Boolean,
      default: false
    },
    downloadParam: { // 下载的参数
      type: Object,
      default () {
        return {
          width: 200,
          height: 200,
          name: '二维码' // 下载之后的文件名
        }
      }
    },
    view: {
      type: Boolean,
      default: true
    }
  },
  data () {
    return {}
  },
  computed: {},
  created () {
    this.$nextTick(() => {
      this.init()
    })
  },
  mounted () {},
  methods: {
    init () {
      const width = this.width
      const height = this.height
      QRCode.toCanvas(
        document.getElementById(this.canvasId),
        this.content,
        { width, height, toSJISFunc: QRCode.toSJIS },
        error => {}
      )
    },
    onCopy: function (e) {
      this.$message({
        message: '复制成功！',
        type: 'success'
      })
    },
    onError: function (e) {
      alert('复制失败')
    },
    // 下载二维码
    download1 () {
      const ele = document.createElement('canvas')
      ele.style.width = this.downloadParam.width || '200' + 'px'
      ele.style.height = this.downloadParam.height || '200' + 'px'
      QRCode.toCanvas(
        ele,
        this.content,
        {
          width: this.downloadParam.width || '200',
          height: this.downloadParam.height || '200',
          toSJISFunc: QRCode.toSJIS
        },
        error => {}
      )
      const [F, S, a] = [
        navigator.userAgent.indexOf('Firefox') > -1,
        ele.toDataURL('image/png'),
        document.createElement('a')
      ];
      [a.href, a.download] = [S, this.downloadParam.name]
      if (F) {
        const evt = document.createEvent('MouseEvents')
        evt.initEvent('click', true, true)
        a.dispatchEvent(evt)
      } else {
        a.click()
      }
    }
  },
  watch: {
    content (val) {
      this.init()
    }
  }
}
</script>
<style lang="scss" scoped>
#QRCode {
  display: inline-block;
  position: relative;
  overflow: hidden;
}

</style>
