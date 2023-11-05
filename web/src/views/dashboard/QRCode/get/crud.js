// import { request } from '@/api/service'
// import { BUTTON_STATUS_NUMBER } from '@/config/button'
// import { urlPrefix as bookPrefix } from './api'

export const crudOptions = (vm) => {
  return {

    pageOptions: {
      compact: true
    },
    options: {
      tableType: 'vxe-table',
      rowKey: true, // 必须设置，true or false
      rowId: 'id',
      height: '100%', // 表格高度100%, 使用toolbar必须设置
      highlightCurrentRow: false
    },
    rowHandle: {
      width: 140,
      view: {
        thin: false,
        text: '',
        disabled () {
          return !vm.hasPermissions('Retrieve')
        }
      },
      edit: {
        thin: true,
        show: false,
        text: '',
        disabled () {
          return true
          // return !vm.hasPermissions('Update')
        }
      },
      remove: {
        thin: false,
        text: '',
        disabled () {
          return !vm.hasPermissions('Delete')
        }
      }
    },
    indexRow: { // 或者直接传true,不显示title，不居中
      title: '序号',
      align: 'center',
      width: 100
    },
    viewOptions: {
      componentType: 'form'
    },
    formOptions: {
      defaultSpan: 24, // 默认的表单 span
      width: '35%'
    },
    columns: [{
      title: '描述',
      key: 'text',
      show: false,
      disabled: true,
      search: {
        disabled: false
      },
      form: {
        disabled: true,
        component: {
          props: {
            clearable: true
          },
          placeholder: '请输入内容'
        }
      },
      view: { // 查看对话框组件的单独配置
        disabled: true
      }
    },
    {
      title: 'ID',
      key: 'id',
      show: false,
      width: 90,
      form: {
        disabled: true
      },
      view: { // 查看对话框组件的单独配置
        disabled: true
      }
    },
    {
      title: '账号',
      key: 'username',
      treeNode: true,
            view: { // 查看对话框组件的单独配置
        disabled: true
      }
    },
    {
      title: '用户名称',
      key: 'user',
      treeNode: true,
      view: { // 查看对话框组件的单独配置
        disabled: true
      }
    },
    {
      title: '文件名',
      key: 'path',
      width: 250,
      view: { // 查看对话框组件的单独配置
        disabled: true
      }
    },
    {
      title: '二维码内容',
      key: 'text',
            view: { // 查看对话框组件的单独配置
        disabled: true
      }
    },
    {
      title: '二维码',
      key: 'path',
      width: 150,
      component: {
        props: {
          row: Object // 行数据对象
        },
        render: (h, params) => {
          return h('img', {
            attrs: {
              src: 'http://localhost:8000/media/' + params.value,
              alt: '二维码'
            },
            style: {
              width: '100%',
              height: 'auto'
            }
          })
        },
      },
       view: { // 查看对话框组件的单独配置
        disabled: false,
        component: {
        props: {
          row: Object // 行数据对象
        },
        render: (h, params) => {
          return h('img', {
            attrs: {
              src: 'http://localhost:8000/media/' + params.value,
              alt: ''
            },
            style: {
              width: '200px',
              height: 'auto'
            }
          })
        },
      },
      }
    },
    {
      title: '创建时间',
      key: 'create_datetime',
      sortable: true,
      view: { // 查看对话框组件的单独配置
        disabled: true
      }
    },
  ]
  }
}
