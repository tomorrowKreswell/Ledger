import router from '@ohos.router';

@Entry
@Component
struct First {
  @State message: string = 'Hello World'

  @State translateY_Logo:number = -200    //定义一个用@state修饰的number型变量translateY_Logo
  @State translateY_Title:number = 200    //定义一个用@state修饰的number型变量translateY_Title

  build() {
    Row() {
      Column() {

        //删除页面初始化时默认带有的Text组件, 增加一个新的image件和一个新的Text组件

        Image($rawfile('logo.png'))
          .height(120)
          .width(120)
            //添加关键属性
          .translate({
            y:this.translateY_Logo
          })
          .animation({
            //播放时长
            duration:2000,
            //播放速度
            tempo:1,
            //播放曲线
            curve:Curve.FastOutSlowIn,
            //延迟
            delay:500,
            //循环次数
            iterations:1,
            //播放模式
            playMode:PlayMode.Normal
          })


        Text('FastLedger')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .margin({
            top:7
          })
            //增加关键属性
          .translate({
            y:this.translateY_Title
          })
          .animation({
            delay:500,
            duration:2000,
            curve:Curve.FastOutSlowIn,
            tempo:1,
          })
            //增加onAppear回调
          .onClick(()=>{
            this.translateY_Logo = 0
            this.translateY_Title = 0
            let id = setInterval(()=>{
              console.info('router to Second')
              router.pushUrl({
                url:'pages/EntryPage'
              })
              clearInterval(id)
            },4000,[])
          })

      }
      .width('100%')
    }
    .height('100%')
  }
}