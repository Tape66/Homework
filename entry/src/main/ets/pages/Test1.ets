@Entry
@Component
struct Test1 {
  build() {
    Column(){
      Text('我爱学习')
        .fontSize(80)
        .fontColor(Color.Orange)
        .fontStyle(FontStyle.Italic)
        .fontFamily('HarmonyOS Sans')
        .fontWeight(900)
        .decoration({type:TextDecorationType.LineThrough,color:Color.Red})

      Text('别学了，玩会儿吧,玩会儿吧,玩会儿吧,玩会儿吧,玩会儿吧,玩会儿吧玩会儿吧')
        .fontSize(60)
        .maxLines(1)
        .fontColor(Color.Black)
        .textOverflow({overflow:TextOverflow.MARQUEE})
        .backgroundColor('red')

      Image($r('app.media.sixflower'))
        .objectFit(ImageFit.Contain)
        .width(150)
        .padding(10)

      TextInput({placeholder:'请...请告诉我银行卡密码吧...'})
        .type(InputType.Password)
        .placeholderColor(Color.Black)
        .width('90%')
        .height(40)

      TextArea({placeholder:'还有什么想告诉我的吗'})
        .margin(10)
        .placeholderColor(Color.Black)
        .width('90%')
        .height(40)

      Button('就这样')
        .width(100)
        .margin(2)

      Button('还有事没说',{type:ButtonType.Normal})
        .width(100)
        .borderRadius(4)
    }
    .height(120)
    .width('100%')
  }
}