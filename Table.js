class Table {
    __Data = []
    Size = 0
    pairs = function(newFunction) {
      var __Index = 0
      for (var data of this.__Data) {
        newFunction(__Index,data)
        __Index++
      }
    }
    add = function(...data) {
      if (data!=null) {
        for (var i = 0;i<=data.length-1;i++) {
          this.__Data.push(data[i])
        }
      }
      this.Size = this.__Data.length-1
    }
    remove = function(index) {
      this.__Data[index] = null
      for (var newIndex = index+1;newIndex<this.__Data.length;newIndex++) {
        this.__Data[newIndex-1] = this.__Data[newIndex]
      }
      this.__Data.length -= 1
      this.Size = this.__Data.length-1
    }
    constructor(...data) {
      if (data!=null) {
        for (var i = 0;i<=data.length-1;i++) {
          this.__Data.push(data[i])
        }
      }
      this.Size = this.__Data.length-1
    }
}
