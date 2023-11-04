import { request } from '@/api/service'
export const urlPrefix = '/api/book/'

/**
 * 新增
 */
export function createObj (obj) {
  return request({
    url: urlPrefix,
    method: 'post',
    data: obj
  })
}

export function upload (obj) {
  return request({
    url: '/api/upload/',
    method: 'post',
    data: obj
  })
}
