@Entry
@Component
struct Index {
  build() {
    Row() {
      Column() {
        UserImage()
        WebFrameworks()
        ActionLayout({ message: 'Count ++', count: 0 })
      }
    }
    .height('100%').width('100%').justifyContent(FlexAlign.Center)
  }
}

@Component
struct UserImage {
  build(){
    Image($r('app.media.baizhi958216'))
      .width(150).height(150)
  }
}

@Component
struct WebFrameworks {
  @State framework: string = 'vue'

  constructor(framework: string) {
    super()
    this.framework = framework
  }

  build() {
    Row(){
      Image($r('app.media.vuejslogo'))
        .objectFit(ImageFit.ScaleDown)
        .width(50).height(50)
      Text('Hello Vue.js').fontSize(30).fontWeight(FontWeight.Bolder)
    }.height(150).width('70%').justifyContent(FlexAlign.SpaceAround)
  }
}

@Component
struct  ActionLayout {
  @State message: string = ''
  @State count: number = 0
  build() {
    Row(){
      Text(this.count.toString())
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
      Button(this.message).onClick(()=>{
        this.count++
      })
    }.width('50%').justifyContent(FlexAlign.SpaceAround)
  }
}