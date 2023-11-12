@Entry
@Component
struct Index {
  @State count: number = 0
  @State message: string = 'Count ++'

  build() {
    Row() {
      Column() {
        Image($r('app.media.baizhi958216'))
          .width(150).height(150)
        Row(){
          Image($r('app.media.vuejslogo'))
            .objectFit(ImageFit.Fill)
            .width(50).height(50)
          Text('Hello Vue.js').fontSize(30).fontWeight(FontWeight.Bolder)
        }.height(150).width('100%').justifyContent(FlexAlign.Center)
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
    .height('100%')
  }
}