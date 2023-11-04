
export function base64ToBlob (base64Data, contentType) {
  var byteCharacters = atob(base64Data)
  var byteArrays = []
  for (var offset = 0; offset < byteCharacters.length; offset += 512) {
    var slice = byteCharacters.slice(offset, offset + 512)
    var byteNumbers = new Array(slice.length)
    for (var i = 0; i < slice.length; i++) {
      byteNumbers[i] = slice.charCodeAt(i)
    }
    var byteArray = new Uint8Array(byteNumbers)
    byteArrays.push(byteArray)
  }
  var blob = new Blob(byteArrays, { type: contentType })
  return blob
}
