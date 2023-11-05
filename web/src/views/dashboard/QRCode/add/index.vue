<template>
  <div>
    <h1 style="padding: 20px; text-align: center; color: white;">生成二维码</h1>
    <div class="body">
      <div>
        <span>请输入,点击确定生成二维码!</span>
        <el-form ref="form" :model="form" label-width="80px">
            <el-input type="textarea" v-model="form.text" placeholder="请输入二维码生成数据!!!" :rows="17" class="input"></el-input>
          <el-button type="primary" @click="qrcode()" class="button">二维码生成</el-button>
      </el-form>
      </div>
    <div style="display: flex; flex-direction: column; justify-items: center; width: 450px; height: 450px;">
      <span>查看生成的二维码</span>
      <div id="qrcode" class="qrcode"></div>
    </div>
  </div>
  </div>

</template>

<script>
import QRCode from 'qrcodejs2' // 引入qrcode
import { mapState } from 'vuex'
import * as api from './api'

export default {
  computed: {
    ...mapState('d2admin/user', ['info'])
  },
  name: 'index',
  data: function () {
    return {
      form: {
        text: '',
        oldText: ''
      },
      qr: null
    }
  },
  methods: {
    qrcode () {
      if (this.form.text !== this.form.oldText) {
        this.form.oldText = this.form.text
        document.getElementById('qrcode').innerHTML = ''
        this.qr = new QRCode('qrcode', {
          text: this.form.text, // 二维码地址
          colorDark: '#000',
          colorLight: '#fff'
        })

        var canvas = document.getElementById('qrcode').getElementsByTagName('canvas')[0]
        var dataURL = canvas.toDataURL('image/png')
        var img64 = dataURL.replace(/^data:image\/(png|jpg);base64,/, '')
        var binaryImg = atob(img64)
        var length = binaryImg.length
        var arraybuffer = new ArrayBuffer(length)
        var uint8 = new Uint8Array(arraybuffer)
        for (var i = 0; i < length; i++) {
          uint8[i] = binaryImg.charCodeAt(i)
        }
        var blob = new Blob([arraybuffer], { type: 'image/png' })
        var formData = new FormData()

        // 数据上传,文件,内容,用户名
        formData.append('qrcode_file', blob)
        formData.append('text', this.form.text)
        formData.append('username', this.info.username)
        formData.append('name', this.info.name)
        if(this.info.role_info[0] && this.info.role_info[0].key){
        formData.append('root', this.info.role_info[0].key)
        }


        api.upload(formData)
          .then(function (response) {
            // 处理上传成功的响应
            console.log('图片上传成功', response)
          })
          .catch(function (error) {
            // 处理上传失败的情况
            console.error('图片上传失败', error)
          })
      }
    }
  }
}
</script>

<style>
 .qrcode {
    display: inline-block;
    margin-top: 20px;
    width: 385px;
    height: 380px;
    border:5px solid #fff
  }
.qrcode >img  {
      width: 355px;
      height: 355px;
      background-color: #fff;
      margin: 10px 10px ;
}
.body{
  padding: 10px;
  display: flex;
  justify-content: space-around;
  position: absolute;
  top: 15%;
  width: 100%;
  color: white;
}
.input{
  width: 380px;
  margin-top: 20px;
}
.button{
  position: absolute;
  top: 42%;
  left: 42%;
}
</style>
