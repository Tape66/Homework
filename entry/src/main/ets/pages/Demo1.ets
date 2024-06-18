import image from '@ohos.multimedia.image'

@Entry
@Component
struct Demo1 {
  build() {
    Column({space:10}){
      Image($r('app.media.a123'))
        .objectFit(ImageFit.Contain)
        .width(360)

      Text('登录ai心理健康系统')
        .fontSize(29)
        .fontWeight(500)
        .fontColor(Color.Orange)
        .margin(50)

     Row(){
        Text('电子邮箱地址')
          .fontSize(15)
          .fontColor(Color.Orange)
     }
      .width('100%')
      .padding(10)

      TextInput()
        .type(InputType.Email)
        .width('90%')

      Row(){
        Text('密码')
          .fontSize(15)
          .fontColor(Color.Orange)
      }
      .width('100%')
      .padding(10)

      TextInput()
        .type(InputType.Password)
        .width('90%')

      Button('登录')
        .fontColor(Color.White)
        .width('90%')
        .margin(20)
        .backgroundColor(Color.Orange)

      Row() {
        Button({ type: ButtonType.Circle }) {
          Image($r('app.media.Wechat'))
            .width(50)
            .height(50)
        }

        Button({ type: ButtonType.Circle }) {
          Image($r('app.media.zhifubao'))
            .objectFit(ImageFit.Contain)
            .width(40)
            .height(40)
        }

        Button({ type: ButtonType.Circle }) {
          Image($r('app.media.Apple'))
            .width(50)
            .height(50)
        }
      }

      Button('没有账号？立马注册')
        .fontColor(Color.Blue)
        .backgroundColor(Color.White)

      Button('忘记密码')
        .fontColor(Color.Blue)
        .backgroundColor(Color.White)
    }
  }
}