<template>
  <div class="page-scan">
    <div>
  <!-- 提示语 -->
  <div v-if="tipShow" class="scan-tip"> {{tipMsg}} </div>
  <div v-else class="scan-tip">识别成功:  {{ this.scanText }}</div>
    <van-nav-bar title="扫描二维码/条形码" fixed
      @click-left="clickIndexLeft()"
      class="scan-index-bar">
      <template #left>
        <van-icon name="arrow-left" size="18" color="#fff"/>
        <span style="color: #fff"> 取消 </span>
      </template>
    </van-nav-bar>
    <!-- 扫码区域 -->
    <video ref="video" id="video" class="scan-video" autoplay></video>
    </div>
  </div>
</template>

<script>
import { BrowserMultiFormatReader } from '@zxing/library'

export default {
  name: 'scanCodePage',
  data () {
    return {
      loadingShow: false,
      codeReader: null,
      scanText: '',
      vin: null,
      tipMsg: '正在尝试识别....',
      tipShow: false
    }
  },
  created () {
    this.codeReader = new BrowserMultiFormatReader()
    this.openScan()
  },
  destroyed () {
    this.codeReader.reset()
  },
  methods: {
    async openScan () {
      this.codeReader.getVideoInputDevices().then((videoInputDevices) => {
        this.tipShow = true
        this.tipMsg = '正在调用摄像头...'
        console.log('videoInputDevices', videoInputDevices)
        // 默认获取第一个摄像头设备id
        let firstDeviceId = videoInputDevices[0].deviceId
        // 获取第一个摄像头设备的名称
        const videoInputDeviceslablestr = JSON.stringify(videoInputDevices[0].label)
        if (videoInputDevices.length > 1) {
          // 判断是否后置摄像头
          if (videoInputDeviceslablestr.indexOf('back') > -1) {
            firstDeviceId = videoInputDevices[0].deviceId
          } else {
            firstDeviceId = videoInputDevices[1].deviceId
          }
        }
        this.decodeFromInputVideoFunc(firstDeviceId)
      }).catch(err => {
        this.tipShow = false
        console.error(err)
      })
    },
    async openScanTwo () {
      this.codeReader = await new BrowserMultiFormatReader()
      this.codeReader.getVideoInputDevices().then((videoInputDevices) => {
        this.tipShow = true
        this.tipMsg = '正在调用摄像头...'
        console.log('videoInputDevices', videoInputDevices)
        // 默认获取第一个摄像头设备id
        let firstDeviceId = videoInputDevices[0].deviceId
        // 获取第一个摄像头设备的名称
        const videoInputDeviceslablestr = JSON.stringify(videoInputDevices[0].label)
        if (videoInputDevices.length > 1) {
          // 判断是否后置摄像头
          if (videoInputDeviceslablestr.indexOf('back') > -1) {
            firstDeviceId = videoInputDevices[0].deviceId
          } else {
            firstDeviceId = videoInputDevices[1].deviceId
          }
        }
        this.decodeFromInputVideoFunc(firstDeviceId)
      }).catch(err => {
        this.tipShow = false
        console.error(err)
      })
    },
    decodeFromInputVideoFunc (firstDeviceId) {
      this.codeReader.reset() // 重置
      this.scanText = ''
      this.codeReader.decodeFromInputVideoDeviceContinuously(firstDeviceId, 'video', (result, err) => {
        this.tipMsg = '正在尝试识别...'
        if (result) {
          this.scanText = result.text
          this.tipShow = false
        }
        if (err && !(err)) {
          this.tipMsg = '识别失败'
          setTimeout(() => {
            this.tipShow = false
          }, 2000)
          console.error(err)
        }
      })
    },
    clickIndexLeft () { // 返回上一页
      this.codeReader = null
      this.$destroy()
      this.$router.back()
    }
  }
}
</script>

<style lang="scss">
.scan-video{
  height: 500px;
  width: 1000px;
}
.scan-tip{
  height: 100px;
  padding: 10px;
  text-align: center;
  margin-top: 30px;
}
.page-scan{
  overflow-y: hidden;
  background-color: #363636;
  font-size: 30px;
  color: white;
  width: 1000px;
  height: 700px;
  display: flex;
  position: absolute;
  left: 20%;
}
</style>
