/**
 * S3のコスト算出を行う
 * 
 */

/// 円/GB
const double costPerGb = 0.114;

/// S3ダウンロード費用を返却する
double calculateS3DownloadCost({required double gb, required int times}) {
  return gb * times * costPerGb;
}
