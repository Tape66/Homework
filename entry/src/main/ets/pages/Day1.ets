@Entry
@Component
struct Index {
  build() {
    Column() {
      // Text: 用于在UI界面展示文本，可以嵌套Span和ImageSpan
      // 接口：Text(value?: string)
      Text('你好世界')
        // fontColor: 设置字体颜色
        // fontColor(Color.black | x0122436 | '#ffffff' | 'rgb()' | 'rgba()')
        .fontColor(Color.Blue)
        // fontSize: 设置字体大小，单位是fp
        // fontSize(length)
        .fontSize(50)
        // fontStyle: 字体风格
        // fontStyle(fontStyle.Normal | FontStyle.Italic)
        // ps: fontStyle.Normal(默认)
        .fontStyle(FontStyle.Italic)
        // fontFamily: 字体类型，默认字体为'HarmonyOS Sans',如果需要是其他字体，导入字体库
        .fontFamily('HarmonyOS Sans')
        // fontWeight: 字体粗细
        // fontWeight(FontWeight.Bold | 100-900)
        .fontWeight(FontWeight.Bold)
        // decoration: 文本修饰
          // decoration({type: TextDecorationType, color?: Color.Gray | ...})
        .decoration({type: TextDecorationType.LineThrough, color: Color.Gray})
        // .height('100%')
        // lineHeight: 行高，用于文本在容器中垂直居中
        // .lineHeight(50)

      Text('天行健，君子以自强不息。地势坤，君子以厚德载物。')
        .fontSize(20)
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.Ellipsis})
        .backgroundColor('green')
      // maxLines: 最大行数 => maxLines(number)
      // textOverflow: 文本裁剪
      // textOverflow({ overflow: TextOverflow.None | TextOverflow.Ellipsis | TextOverflow.Clip})
      // ps： textOverflow 一定要配合maxLines一起使用
      Text('天行健，君子以自强不息。地势坤，君子以厚德载物。天行健，君子以自强不息。地势坤，君子以厚德载物。')
      .fontSize(20)
      .maxLines(2)
      .textOverflow({ overflow: TextOverflow.Ellipsis})
      .backgroundColor('red')

      Image($r('app.media.app_icon'))
        // objectFit(ImageFit.cover): 默认，保持宽高比缩放，使图片显示宽高边界
        // .objectFit(ImageFit.Cover)
        // objectFit(ImageFit.Contain): 保持宽高比缩放，使图片完全展示
        .objectFit(ImageFit.Contain)
        .width(100)

      TextInput({placeholder: '请输入账号...' })
        .width('90%')
        .height(38)
      // TextInput: 单行文本域，用与输入
      // TextInput({placeholder?: string})
      TextInput({ placeholder: '请输入密码...'})
        .type(InputType.Password)
        // type(InputType?: Normal | PassWord | Email | Number | PhoneNumber)
        /*
         *  Normal: 默认值
         *  PassWord: 保密文本域
         *  Email: 邮箱文本域
         *  Number: 纯数字文本域
         *  PhoneNumber: 电话号码文本域，支持“+、-、*、#”
        */
        .placeholderColor(Color.Red) //占位符颜色
        .width('90%')
        .height(38)

      // TextArea()
      //   .width('90%')
      //   .height(50)

      Button('按钮')
        .width(100)

      Button({type: ButtonType.Circle}) {
        Image($r('app.media.startIcon'))
          .width(40)
          .objectFit(ImageFit.Contain)
      }
        .width(80)
        .height(80)
      /*
       *  {type: ButtonType.Normal | ButtonType.Circle | ButtonType.Capsule}
       *    ButtonType.Normal: 普通按按钮，不带圆角，可以自己设置
       *    ButtonType.Circle: 圆形按钮
       *    ButtonType.Capsule: 胶囊型按钮
      */
      Button('自定义样式',{ type: ButtonType.Normal })
        .width(100)
        .borderRadius(4)

    }
    .height(120)
    .width('100%')
    // .backgroundColor(Color.Green)
  }
}