export namespace UtilsMath {
  /**
   * 弧度转角度
   * @param radians 弧度
   * @returns 角度
   */
  export function radiansToDegrees(radians: number) {
    let degrees = radians * (180 / Math.PI);
    return degrees;
  }

  /**
   * 角度转弧度
   * @param degrees 角度
   * @returns 弧度
   */
  export function degreesToRadians(degrees: number) {
    let radians = degrees / 180 * Math.PI
    return radians;
  }

  // var data = 10;

}