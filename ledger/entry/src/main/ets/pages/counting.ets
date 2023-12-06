import router from '@ohos.router';
import CommonConstants from '../common/constants/CommonConstants';
// import { LiteChart } from '../../../../../lite_chart'
@Entry
@Component
struct MinePage {
  @State linesDatas: number[] = [20, 73, 4, 51];
  build() {
    Column() {
      Text(" ").height($r('app.float.edge_size_M')).width('100%')
        .backgroundColor($r('app.color.blue'))
      Row() {
        Image($rawfile('back.png'))
          .height($r('app.float.component_size_SP'))
          .aspectRatio(CommonConstants.FULL_SIZE)
          .margin({ left: $r('app.float.font_size_L') })
          .onClick(() => {
            router.back();
          })
        Text('统计页面')
          .margin({ left: '50px', right: '850px' })
          .fontSize($r('app.float.font_size_L'))

      }.width(CommonConstants.FULL_WIDTH)
      .justifyContent(FlexAlign.SpaceBetween)
      .backgroundColor($r('app.color.blue'))

      Text(" ").height($r('app.float.edge_size_M')).width('100%')
        .backgroundColor($r('app.color.blue'))

    }
  }
}