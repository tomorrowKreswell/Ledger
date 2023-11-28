import router from '@ohos.router';
import CommonConstants from '../common/constants/CommonConstants';

/**
 * Personal Center page, displaying personal information and app-related settings.
 */
@Entry
@Component
struct MinePage {
  build() {
    Column() {
      Text(" ").height($r('app.float.edge_size_M')).width('100%')
        .backgroundColor($r('app.color.blue'))
      Row(){
        Image($rawfile('back.png'))
          .height($r('app.float.component_size_SP'))
          .aspectRatio(CommonConstants.FULL_SIZE)
          .margin({ left: $r('app.float.font_size_L') })
        .onClick(() => {
          router.back();
        })
        Text('统计页面')
          .margin({ left:'50px',right:'850px'})
          .fontSize($r('app.float.font_size_L'))
      }.width(CommonConstants.FULL_WIDTH)
      .justifyContent(FlexAlign.SpaceBetween)
      .backgroundColor($r('app.color.blue'))
      Text(" ").height($r('app.float.edge_size_M')).width('100%')
        .backgroundColor($r('app.color.blue'))
      }
    }
  }
