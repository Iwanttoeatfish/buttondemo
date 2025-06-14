@Entry
@Component
struct Index {
  @State message: string = 'Hello';
  private flag : boolean =false

  build() {
    Column(){
      // type:ButtonType.Normal:关掉圆角
      Button(this.message,{type:ButtonType.Normal})
        .width(90)
        .height(50)
        .fontSize(14)
        .borderRadius(20) // 设置按钮圆角大小
        .backgroundColor(Color.Red) //设置背景颜色
        .fontColor(Color.Black) // 设置文字颜色
        .margin({top:30})
        .onClick(()=>{
          if (!this.flag) {// 取反用于反转布尔值的真假 为false是true
            this.message="按钮";
            this.flag=true;
          }else {
            this.message="Hello";
            this.flag=false;
          }
        })

      Button("按钮2")
        .width(100)
        .height(50)
        .backgroundColor(Color.Black)
        .fontColor(Color.White)
        .margin({top:10})

      Button({type:ButtonType.Normal})
        Row(){
          Image($r("app.media.app_icon")).width(20).height(20).margin({left:50})
          Text("包含子组件").fontSize(14).fontColor(Color.Gray).margin({left:10})

        }.alignItems(VerticalAlign.Center)// // 这将影响Row内部组件的垂直对齐

        .width(200)
        .height(200)
        .borderRadius(20)
        .backgroundColor(Color.Yellow)
        .margin({top:40})

    //   胶囊类型的按钮
      Button({type:ButtonType.Capsule})
        .width(100)
        .height(50)
        .backgroundColor(Color.Blue)
        .margin({top:10})
    }

    // 圆形牛牛

    .height('100%')
    .width('100%')
  }
}