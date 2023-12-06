import ArrayList from '@ohos.util.ArrayList';
import "./CanvasRect"
import CanvasRect from './CanvasRect'

export default class BaseChart {
  protected static LOG_TAG: string = "AwesomeChart";
  protected mColorDarkBlue: string = "";
  // Color.rgb(41, 128, 186);
  protected mColorDarkRed: string = "";
  // Color.rgb(232, 76, 59);

  /**
   * the total sum of all y-values
   * 所有 y 值的总和
   * */
  protected mYValueSum: number = 0;
  /** chart offset to the left
   * 图表偏移到左侧
   * */
  protected mOffsetLeft: number = 35;
  /** chart toffset to the top
   * 图表toffset到顶部
   * */
  protected mOffsetTop: number = 25;
  /** chart offset to the right
   * 图表向右偏移
   * */
  protected mOffsetRight: number = 20;
  /** chart offset to the bottom
   * 图表偏移到底部
   * */
  protected mOffsetBottom: number = 15;
  /** list that holds all values of the x-axis
   * 保存 x 轴的所有值的列表
   * */
  protected mXVals: ArrayList<string>;
  /** list that holds all values of the y-axis
   * 包含 y 轴所有值的列表
   * */
  protected mYVals: ArrayList<number>;
  /** final bitmap that contains all information and is drawn to the screen
   * 包含所有信息并绘制到屏幕上的最终位图
   */
  // protected Bitmap mDrawBitmap;

  /** the canvas that is used for drawing on the bitmap
   * 用于在位图上绘制的画布
   */
  // protected Canvas mDrawCanvas;

  /** the lowest value the chart can
   * 图表可以显示的最低值
   */
  protected mYChartMin: number = 0.0;
  /** the highest value the chart can display
   * 图表可以显示的最高值
   */
  protected mYChartMax: number = 0.0;
  /** maximum y-value in the y-value array
   * y值数组中的最大y值
   */
  protected mYMax: number = 0.0;
  /** the minimum y-value in the y-value array
   * y值数组中的最小y值
   */
  protected mYMin: number = 0.0;


  // protected ColorTemplate mColorTemplate;

  // protected Paint mDrawPaint;
  // protected Paint mDescPaint;
  // protected Paint mInfoPaint;
  // protected Paint mValuePaint;

  // protected Paint[] mDrawPaints;
}
