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
 *  @author Mon
 *
 *  @brief resize label height to fit the content with the font
 *
 *  @param maxHeight the max height
 */
- (void)resizeLabelHeightToFitContentWithMaximumHeight:(CGFloat)maxHeight;

/**
 *  @author Mon
 *
 *  @brief calculate the size of a label that has a string with specific font based on a specific height, and add additional margin horizontally
 *
 *  @param maxHeight the maximum value of height
 *  @param aString   the string to display on the label
 *  @param font      the font of the string displayed on the label
 *  @param margin    a margin add to both size of the label(left and right), this value just represent one of the side margin
 *
 *  @return a size constraints to the size of the content of the label and the margin
 */
+ (CGSize)labelSizeConstraintToTextWithMaximumHeight:(CGFloat)maxHeight
                                              string:(NSString *)aString
                                                font:(UIFont *)font
                                    horizontalMargin:(CGFloat)margin;

/**
 *  @author Mon
 *
 *  @brief resize label width to fit the content with the font
 *
 *  @param maxWidth the max width
 */
- (void)resizeLabelWidthToFitTextWithMaximumWidth:(CGFloat)maxWidth;

/**
 *  @author Mon
 *
 *  @brief calculate the size of a label that has a string with specific font based on a specific width, and add additional margin horizontally
 *
 *  @param maxWidth the maximum value of width
 *  @param aString  the string to display on the label
 *  @param font     the font of the string displayed on the label
 *  @param margin   a margin add to both size of the label(top and bottom), this value just represent one of the side margin
 *
 *  @return a size constraints to the size of the content of the label and the margin
 */
+ (CGSize)labelSizeConstraintToContentWithMaximumWidth:(CGFloat)maxWidth
                                                string:(NSString *)aString
                                                  font:(UIFont *)font
                                        verticalMargin:(CGFloat)margin;
```

#### UIView

```objc
// 直接读取或设置下面顾名思义的值

@property (nonatomic, assign) CGFloat originX;
@property (nonatomic, assign) CGFloat originY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize  size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat right;
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

#### UIScrollView

```objc

typedef enum : NSUInteger {
    ScrollDirectionNone,
    ScrollDirectionUp,
    ScrollDirectionDown,
} ScrollDirection;

/**
 *
 *  @brief detect which direction the scroll view is scrolling
 *         only for vertical direction now
 *
 *  @return direction the scroll view is scrolling
 */
- (ScrollDirection)scrollDirection;
```

#### UIButton

```objc
/**
 *  @author Mon
 *
 *  @brief Add action to button with a block, but pay attention to retain cycle
 *
 *  @param event  Touch event to trigger the action
 *  @param action Action should perform when touch event occurs
 */
- (void)handleControlEvent:(UIControlEvents)event block:(ActionBlock)action;

/**
 *  @author Mon
 *
 *  @brief Add action to button with a block, along with the sender(self, button), but pay attention to retain cycle
 *
 *  @param event Touch event to trigger the action
 *  @param senderAction Action should perform when touch event occurs
 */
- (void)handleControlEvent:(UIControlEvents)event senderblock:(ActionBlockWithSender)senderAction;
```


