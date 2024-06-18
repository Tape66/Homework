@Entry
@Component
struct Index {
  build() {
    // Column: 列组件，主轴方向为垂直方向
    Column({ space: 10 }) {
      Image($r('app.media.startIcon'))
        .width(100)

      Text('登录界面')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)

      Text('登录账号以使用跟多服务')
        .fontColor('#999')

      TextInput({ placeholder: '请输入账号...' })
        .placeholderColor('#999')
        .width('90%')
        .backgroundColor('rgba(0,0,0,0)')

      // Divider() 分割线
      Divider()
        .width('80%')
        .height(0.5)
        .backgroundColor('#666')

      TextInput({ placeholder: '请输入账号...' })
        .type(InputType.Password)
        .placeholderColor('#999')
        .width('90%')
        .backgroundColor('rgba(0,0,0,0)')

      // Divider() 分割线
      Divider()
        .width('80%')
        .height(0.5)
        .backgroundColor('#666')

      Row() {
        Text('短信验证码登入')
          .fontSize(14)
          .fontColor(Color.Blue)
        Text('忘记密码')
          .fontSize(14)
          .fontColor(Color.Blue)
      }
        .width('80%')
        .justifyContent(FlexAlign.SpaceBetween)

      Button('登录')
        .width('80%')
        .margin({ top: 80 })

      Text('注册账号')
        .fontSize(14)
        .fontColor(Color.Blue)

      LoadingProgress()
        .color(Color.Gray)
        .width(40)
        .margin({ top: 20, bottom: 20 })

      Text('其他登入方式')
        .fontSize(12)
        .fontColor(Color.Gray)

      Row() {
        Button({ type: ButtonType.Circle }) {
          Text('方式一').fontSize(12).fontColor(Color.Gray)
        }
        .width(50)
        .height(50)
        .backgroundColor('rgba(0,0,0,0)')
        .borderWidth(1)
        .borderColor(Color.Gray)

        Button({ type: ButtonType.Circle }) {
          Text('方式一').fontSize(12).fontColor(Color.Gray)
        }
        .width(50)
        .height(50)
        .backgroundColor('rgba(0,0,0,0)')
        .borderWidth(1)
        .borderColor(Color.Gray)

        Button({ type: ButtonType.Circle }) {
          Text('方式一').fontSize(12).fontColor(Color.Gray)
        }
        .width(50)
        .height(50)
        .backgroundColor('rgba(0,0,0,0)')
        .borderWidth(1)
        .borderColor(Color.Gray)
      }
      .width('80%')
      .justifyContent(FlexAlign.SpaceEvenly)
    }
      .width('100%')
      .height('100%')
      // .backgroundColor(Color.Green)
      .justifyContent(FlexAlign.Center)
  }
}