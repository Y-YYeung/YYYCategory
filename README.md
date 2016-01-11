# README

### 一些平时用到的 Category

#### NSString

```objc
/**
 *  去除字符串首位的空格
 *
 *  @return 去除首位空格的字符串
 */
- (instancetype)trimWhiteSpaceCharacterBothEnds;

/**
 *  去除整个字符串中的空格，限于空格的情况
 *
 *  @return 去除空格的字符串
 */
- (instancetype)trimWhiteSpaceCharacterEntire;

/**
 *  判断是否为空字符串
 *
 *  @return 是否为空的 BOOL 值
 */
+ (BOOL)isBlankString:(NSString *)aString;
```

#### UIColor

```objc
/**
 *  根据传入的十六进制字符串转换成相应的颜色
 *
 *  @param hexStringToConvert 代表颜色的十六进制字符串
 *
 *  @return 转换后的颜色
 */
+ (instancetype)colorWithHexString:(NSString *)hexStringToConvert;
```

#### UIImage

```objc
/**
 *  获取不被系统渲染的图片
 *
 *  @param imageName 图片名称
 *
 *  @return 没有被系统渲染的图片
 */
+ (instancetype)originImage:(NSString *)imageName;
```

#### UILabel

```objc
/**
 *  重新设置 label 高度来适应文本
 */
- (void)resizeLabelHeightToFitText;

/**
 *  重新设置 label 宽度和高度来适应文本
 *
 *  @param maxWidth label 的最大宽度
 */
- (void)resizeLabelWidthToFitTextWithMaximumWidth:(CGFloat)maxWidth;
```

#### UIView

```objc
// 直接读取或设置下面顾名思义的值

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize  size;
@property (nonatomic, assign) CGPoint origin;
```

#### NSArray

```objc
/**
 *
 *  @brief NSArray 转 JSON
 *
 *  @return JSON 数据
 */
- (NSData *)JSONData;

/**
 *
 *  @brief NSArray 转 JSON 形式的字符串
 *
 *  @return 具有 JSON 形式的字符串
 */
- (NSString *)JSONString;
```

#### NSDictionary

```objc
/**
 *
 *  @brief NSDictionary 转 JSON
 *
 *  @return JSON 数据
 */
- (NSData *)JSONData;

/**
 *
 *  @brief NSDictionary 转 JSON 形式的字符串
 *
 *  @return 具有 JSON 形式的字符串
 */
- (NSString *)JSONString;
```


