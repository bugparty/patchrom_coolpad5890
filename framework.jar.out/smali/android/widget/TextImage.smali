.class public Landroid/widget/TextImage;
.super Landroid/view/View;
.source "TextImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextImage$1;
    }
.end annotation


# static fields
.field public static final ICON_POSITION_BOTTOM:I = 0x4

.field public static final ICON_POSITION_LEFT:I = 0x1

.field public static final ICON_POSITION_RIGHT:I = 0x3

.field public static final ICON_POSITION_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TextImage"


# instance fields
.field private mAlign:Landroid/graphics/Paint$Align;

.field private mCharHeightToShow:I

.field private mCharWidthToShow:I

.field private mContext:Landroid/content/Context;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mGravity:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconHeight:I

.field private mIconPosition:I

.field private mIconWidth:I

.field private mPaintNormal:Landroid/graphics/Paint;

.field private mTempRect:Landroid/graphics/Rect;

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mTextString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    .line 35
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 37
    const/high16 v14, 0x4170

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mTextSize:F

    .line 43
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mIconPosition:I

    .line 45
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 49
    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    .line 51
    const/16 v14, 0x11

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mGravity:I

    .line 53
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mIconWidth:I

    .line 55
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mIconHeight:I

    .line 57
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mCharWidthToShow:I

    .line 59
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mCharHeightToShow:I

    .line 61
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    .line 75
    .local v13, theme:Landroid/content/res/Resources$Theme;
    sget-object v14, Lcom/android/internal/R$styleable;->TextView:[I

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v0, v14, v1, v15}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 78
    .local v2, a:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    .line 80
    .local v11, text:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 81
    .local v10, n:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 82
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 84
    .local v3, attr:I
    sparse-switch v3, :sswitch_data_0

    .line 81
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 86
    :sswitch_0
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 87
    goto :goto_1

    .line 89
    :sswitch_1
    const/4 v8, 0x3

    .line 90
    .local v8, ellipsize:I
    invoke-virtual {v2, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 91
    packed-switch v8, :pswitch_data_0

    .line 102
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 93
    :pswitch_0
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 96
    :pswitch_1
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 99
    :pswitch_2
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    .line 108
    .end local v8           #ellipsize:I
    :sswitch_2
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 111
    :sswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextImage;->mTextSize:F

    float-to-int v12, v14

    .line 112
    .local v12, textsize:I
    invoke-virtual {v2, v3, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextImage;->mTextSize:F

    goto :goto_1

    .line 116
    .end local v12           #textsize:I
    :sswitch_4
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 117
    .local v5, drawableLeft:Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 121
    .end local v5           #drawableLeft:Landroid/graphics/drawable/Drawable;
    :sswitch_5
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 122
    .local v7, drawableTop:Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 126
    .end local v7           #drawableTop:Landroid/graphics/drawable/Drawable;
    :sswitch_6
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 127
    .local v6, drawableRight:Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 131
    .end local v6           #drawableRight:Landroid/graphics/drawable/Drawable;
    :sswitch_7
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 132
    .local v4, drawableBottom:Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/TextImage;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 135
    .end local v4           #drawableBottom:Landroid/graphics/drawable/Drawable;
    :sswitch_8
    const/4 v14, -0x1

    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/TextImage;->setGravity(I)V

    goto :goto_1

    .line 139
    .end local v3           #attr:I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    if-eqz v11, :cond_1

    .line 142
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/TextImage;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/TextImage;->init(Landroid/content/Context;)V

    .line 146
    return-void

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_8
        0x12 -> :sswitch_0
        0x30 -> :sswitch_5
        0x31 -> :sswitch_7
        0x32 -> :sswitch_4
        0x33 -> :sswitch_6
    .end sparse-switch

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getEllipsizePosition(I)I
    .locals 9
    .parameter "maxWidth"

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x0

    .line 523
    const/4 v0, 0x0

    .line 525
    .local v0, ellipsizeStringWidth:I
    iget-object v4, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    const-string v5, "..."

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 526
    iget-object v4, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 527
    if-lt v0, p1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v3

    .line 530
    :cond_1
    sub-int/2addr p1, v0

    .line 532
    sget-object v4, Landroid/widget/TextImage$1;->$SwitchMap$android$text$TextUtils$TruncateAt:[I

    iget-object v5, p0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5}, Landroid/text/TextUtils$TruncateAt;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 557
    iget-object v4, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 559
    .local v2, length:I
    const/4 v1, 0x0

    .line 560
    .local v1, index:I
    :goto_1
    if-gt v1, v2, :cond_2

    .line 561
    iget-object v4, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v8, v1, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 562
    iget-object v4, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, p1, :cond_6

    .line 568
    :cond_2
    if-eqz v1, :cond_0

    .line 572
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 575
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 535
    .end local v1           #index:I
    .end local v2           #length:I
    :pswitch_0
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 536
    .restart local v2       #length:I
    add-int/lit8 v1, v2, -0x1

    .line 537
    .restart local v1       #index:I
    :goto_2
    if-lez v1, :cond_3

    .line 538
    iget-object v3, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 539
    iget-object v3, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v3, p1, :cond_5

    .line 546
    :cond_3
    if-gez v1, :cond_4

    .line 547
    const/4 v1, 0x0

    .line 550
    :cond_4
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 553
    iget-object v3, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto/16 :goto_0

    .line 543
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 565
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 149
    iput-object p1, p0, Landroid/widget/TextImage;->mContext:Landroid/content/Context;

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextImage;->setClickable(Z)V

    .line 151
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Landroid/widget/TextImage;->mTextSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 263
    invoke-virtual {p0}, Landroid/widget/TextImage;->getHeight()I

    move-result v8

    .line 264
    .local v8, viewHeight:I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getWidth()I

    move-result v9

    .line 266
    .local v9, viewWidth:I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getPaddingLeft()I

    move-result v7

    .line 267
    .local v7, paddingleft:I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getPaddingRight()I

    move-result v5

    .line 268
    .local v5, paddingRight:I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getPaddingTop()I

    move-result v6

    .line 269
    .local v6, paddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getPaddingBottom()I

    move-result v4

    .line 271
    .local v4, paddingBottom:I
    const/4 v0, 0x0

    .line 272
    .local v0, charStartX:I
    const/4 v1, 0x0

    .line 273
    .local v1, charStartY:I
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 275
    iget-object v10, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_3

    .line 276
    iget v10, p0, Landroid/widget/TextImage;->mIconPosition:I

    packed-switch v10, :pswitch_data_0

    .line 415
    :goto_0
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-gez v10, :cond_0

    .line 416
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 417
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 420
    :cond_0
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-gez v10, :cond_1

    .line 421
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 422
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 425
    :cond_1
    iget-object v10, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 426
    iget-object v10, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/TextImage;->getDrawableState()[I

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 427
    iget-object v10, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 457
    :goto_1
    iget-object v10, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-eqz v10, :cond_2

    .line 458
    iget v10, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    if-eqz v10, :cond_2

    iget v10, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    if-nez v10, :cond_4

    .line 473
    :cond_2
    :goto_2
    return-void

    .line 279
    :pswitch_0
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_1

    .line 290
    :goto_3
    :pswitch_1
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 292
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_0

    .line 306
    :goto_4
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 307
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/Rect;->right:I

    .line 308
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 281
    :pswitch_2
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v7, v10, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 284
    :pswitch_3
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v9, v5

    iget v12, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 287
    :pswitch_4
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v11, v9, v11

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 294
    :sswitch_0
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->top:I

    .line 295
    move v1, v6

    .line 296
    goto :goto_4

    .line 298
    :sswitch_1
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v8, v4

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 299
    sub-int v10, v8, v4

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v1, v10, v11

    .line 300
    goto :goto_4

    .line 302
    :sswitch_2
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int v11, v8, v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 303
    iget v10, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v10, v8, v10

    div-int/lit8 v1, v10, 0x2

    goto :goto_4

    .line 311
    :pswitch_5
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_2

    .line 322
    :goto_5
    :pswitch_6
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 324
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_1

    .line 338
    :goto_6
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 340
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/Rect;->left:I

    .line 341
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto/16 :goto_0

    .line 313
    :pswitch_7
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    add-int/2addr v11, v7

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 316
    :pswitch_8
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v9, v5

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 319
    :pswitch_9
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    iget v12, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v12, v9, v12

    iget v13, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 326
    :sswitch_3
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->top:I

    .line 327
    move v1, v6

    .line 328
    goto :goto_6

    .line 330
    :sswitch_4
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v8, v4

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 331
    sub-int v10, v8, v4

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v1, v10, v11

    .line 332
    goto :goto_6

    .line 334
    :sswitch_5
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int v11, v8, v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 335
    iget v10, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v10, v8, v10

    div-int/lit8 v1, v10, 0x2

    goto :goto_6

    .line 346
    :pswitch_a
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_3

    .line 363
    :goto_7
    :pswitch_b
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 365
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_2

    .line 376
    :goto_8
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 377
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    .line 378
    goto/16 :goto_0

    .line 348
    :pswitch_c
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v7, v10, Landroid/graphics/Rect;->left:I

    .line 349
    move v0, v7

    .line 350
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_7

    .line 353
    :pswitch_d
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v9, v5

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 354
    sub-int v0, v9, v5

    .line 355
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_7

    .line 358
    :pswitch_e
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int v11, v9, v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 359
    iget v10, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v10, v9, v10

    div-int/lit8 v0, v10, 0x2

    .line 360
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_7

    .line 367
    :sswitch_6
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->top:I

    goto :goto_8

    .line 370
    :sswitch_7
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v8, v4

    iget v12, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_8

    .line 373
    :sswitch_8
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v11, v8, v11

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_8

    .line 380
    :pswitch_f
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_4

    .line 397
    :goto_9
    :pswitch_10
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 399
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_3

    .line 410
    :goto_a
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 411
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v1, v10, v11

    goto/16 :goto_0

    .line 382
    :pswitch_11
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iput v7, v10, Landroid/graphics/Rect;->left:I

    .line 383
    move v0, v7

    .line 384
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_9

    .line 387
    :pswitch_12
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v9, v5

    iget v12, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 388
    sub-int v0, v9, v5

    .line 389
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_9

    .line 392
    :pswitch_13
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int v11, v9, v11

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 393
    iget v10, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v10, v9, v10

    div-int/lit8 v0, v10, 0x2

    .line 394
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_9

    .line 401
    :sswitch_9
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    add-int/2addr v11, v6

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_a

    .line 404
    :sswitch_a
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    sub-int v11, v8, v4

    iget v12, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_a

    .line 407
    :sswitch_b
    iget-object v10, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    iget v12, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v12, v8, v12

    iget v13, p0, Landroid/widget/TextImage;->mIconHeight:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->top:I

    goto :goto_a

    .line 429
    :cond_3
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x7

    packed-switch v10, :pswitch_data_5

    .line 444
    :goto_b
    :pswitch_14
    iget v10, p0, Landroid/widget/TextImage;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_4

    goto/16 :goto_1

    .line 452
    :sswitch_c
    iget v10, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v10, v8, v10

    div-int/lit8 v1, v10, 0x2

    goto/16 :goto_1

    .line 431
    :pswitch_15
    move v0, v7

    .line 432
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_b

    .line 435
    :pswitch_16
    sub-int v0, v9, v5

    .line 436
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_b

    .line 439
    :pswitch_17
    iget v10, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    sub-int v10, v9, v10

    div-int/lit8 v0, v10, 0x2

    .line 440
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v10, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    goto :goto_b

    .line 446
    :sswitch_d
    move v1, v6

    .line 447
    goto/16 :goto_1

    .line 449
    :sswitch_e
    sub-int v10, v8, v4

    iget v11, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    sub-int v1, v10, v11

    .line 450
    goto/16 :goto_1

    .line 462
    :cond_4
    const/high16 v2, -0x100

    .line 463
    .local v2, color:I
    iget-object v10, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v10, :cond_5

    .line 464
    iget-object v10, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextImage;->getDrawableState()[I

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 466
    :cond_5
    iget-object v10, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    iget-object v10, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v11, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 469
    int-to-float v10, v1

    iget-object v11, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v10, v11

    float-to-int v3, v10

    .line 471
    .local v3, iYpos:I
    iget-object v10, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    int-to-float v11, v0

    int-to-float v12, v3

    iget-object v13, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_a
        :pswitch_5
        :pswitch_f
    .end packed-switch

    .line 279
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 292
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch

    .line 311
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 324
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x30 -> :sswitch_3
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 346
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch

    .line 365
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_8
        0x30 -> :sswitch_6
        0x50 -> :sswitch_7
    .end sparse-switch

    .line 380
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 399
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch

    .line 429
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_15
        :pswitch_14
        :pswitch_16
    .end packed-switch

    .line 444
    :sswitch_data_4
    .sparse-switch
        0x10 -> :sswitch_c
        0x30 -> :sswitch_d
        0x50 -> :sswitch_e
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 477
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 478
    invoke-virtual {p0}, Landroid/widget/TextImage;->getWidth()I

    move-result v4

    .line 479
    .local v4, viewWidth:I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getPaddingLeft()I

    move-result v1

    .line 480
    .local v1, paddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextImage;->getPaddingRight()I

    move-result v2

    .line 482
    .local v2, paddingRight:I
    sub-int v5, v4, v1

    sub-int v3, v5, v2

    .line 484
    .local v3, usefulWidth:I
    iget-object v5, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 485
    const/4 v5, 0x1

    iget v6, p0, Landroid/widget/TextImage;->mIconPosition:I

    if-eq v5, v6, :cond_0

    const/4 v5, 0x3

    iget v6, p0, Landroid/widget/TextImage;->mIconPosition:I

    if-ne v5, v6, :cond_1

    .line 487
    :cond_0
    iget v5, p0, Landroid/widget/TextImage;->mIconWidth:I

    sub-int/2addr v3, v5

    .line 491
    :cond_1
    if-gtz v3, :cond_2

    .line 492
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    .line 520
    :goto_0
    return-void

    .line 496
    :cond_2
    iput v3, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    .line 497
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    .line 499
    iget-object v5, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-eqz v5, :cond_5

    .line 500
    iget-object v5, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 501
    iget-object v5, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 502
    iget-object v5, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, p0, Landroid/widget/TextImage;->mCharHeightToShow:I

    .line 504
    iget-object v5, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 506
    .local v0, needwidth:I
    if-le v0, v3, :cond_4

    .line 507
    invoke-direct {p0, v3}, Landroid/widget/TextImage;->getEllipsizePosition(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 508
    iget-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 511
    :cond_3
    iget-object v5, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 512
    iget-object v5, p0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    goto :goto_0

    .line 514
    :cond_4
    iput v0, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    goto :goto_0

    .line 517
    .end local v0           #needwidth:I
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/TextImage;->mTextString:Ljava/lang/String;

    .line 518
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/TextImage;->mCharWidthToShow:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 21
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 582
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    .line 584
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 585
    .local v14, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 586
    .local v5, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 587
    .local v15, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 589
    .local v6, heightSize:I
    const/4 v13, 0x0

    .line 590
    .local v13, width:I
    const/4 v4, 0x0

    .line 592
    .local v4, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->setEmpty()V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 595
    .local v12, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 598
    .end local v12           #text:Ljava/lang/String;
    :cond_0
    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    .line 599
    move v13, v15

    .line 628
    :cond_1
    :goto_0
    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    .line 630
    move v4, v6

    .line 660
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Landroid/widget/TextImage;->setMeasuredDimension(II)V

    .line 661
    return-void

    .line 600
    :cond_3
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-eq v14, v0, :cond_4

    if-nez v14, :cond_1

    .line 602
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingLeft()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingRight()I

    move-result v18

    add-int v16, v17, v18

    .line 603
    .local v16, widthneed:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconPosition:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 615
    :goto_2
    if-nez v14, :cond_6

    .line 616
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getMeasuredWidth()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 617
    move/from16 v13, v16

    goto :goto_0

    .line 606
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconWidth:I

    move/from16 v17, v0

    add-int v16, v16, v17

    .line 607
    goto :goto_2

    .line 610
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconWidth:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingLeft()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingRight()I

    move-result v18

    add-int v9, v17, v18

    .line 611
    .local v9, iconwidthneed:I
    move/from16 v0, v16

    if-le v9, v0, :cond_5

    move/from16 v16, v9

    :cond_5
    goto :goto_2

    .line 619
    .end local v9           #iconwidthneed:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getSuggestedMinimumWidth()I

    move-result v11

    .line 620
    .local v11, minWidth:I
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 621
    move v13, v15

    goto :goto_0

    .line 623
    :cond_7
    move/from16 v0, v16

    if-le v0, v11, :cond_8

    move/from16 v13, v16

    :goto_3
    goto :goto_0

    :cond_8
    move v13, v11

    goto :goto_3

    .line 631
    .end local v11           #minWidth:I
    .end local v16           #widthneed:I
    :cond_9
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-eq v5, v0, :cond_a

    if-nez v5, :cond_2

    .line 633
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextImage;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingBottom()I

    move-result v18

    add-int v7, v17, v18

    .line 635
    .local v7, heightneed:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconPosition:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    .line 647
    :goto_4
    if-nez v5, :cond_c

    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 649
    move v4, v7

    goto/16 :goto_1

    .line 638
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconHeight:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getPaddingBottom()I

    move-result v18

    add-int v8, v17, v18

    .line 639
    .local v8, iconheightneed:I
    if-le v8, v7, :cond_b

    move v7, v8

    .line 640
    :cond_b
    goto :goto_4

    .line 643
    .end local v8           #iconheightneed:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextImage;->mIconHeight:I

    move/from16 v17, v0

    add-int v7, v7, v17

    goto :goto_4

    .line 651
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextImage;->getSuggestedMinimumHeight()I

    move-result v10

    .line 652
    .local v10, minHeight:I
    if-le v7, v6, :cond_d

    .line 653
    move v4, v6

    goto/16 :goto_1

    .line 655
    :cond_d
    if-le v7, v10, :cond_e

    move v4, v7

    :goto_5
    goto/16 :goto_1

    :cond_e
    move v4, v10

    goto :goto_5

    .line 603
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 635
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .parameter "where"

    .prologue
    .line 251
    iget-object v0, p0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 252
    iput-object p1, p0, Landroid/widget/TextImage;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 254
    invoke-virtual {p0}, Landroid/widget/TextImage;->requestLayout()V

    .line 255
    invoke-virtual {p0}, Landroid/widget/TextImage;->invalidate()V

    .line 257
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 242
    iget v0, p0, Landroid/widget/TextImage;->mGravity:I

    if-ne v0, p1, :cond_0

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    iput p1, p0, Landroid/widget/TextImage;->mGravity:I

    .line 247
    invoke-virtual {p0}, Landroid/widget/TextImage;->invalidate()V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .parameter "icon"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/widget/TextImage;->mIconPosition:I

    if-ne v0, p2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 225
    :cond_2
    iput-object p1, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 227
    iget-object v0, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 228
    iput v1, p0, Landroid/widget/TextImage;->mIconWidth:I

    .line 229
    iput v1, p0, Landroid/widget/TextImage;->mIconHeight:I

    .line 235
    :goto_1
    iput p2, p0, Landroid/widget/TextImage;->mIconPosition:I

    .line 237
    invoke-virtual {p0}, Landroid/widget/TextImage;->requestLayout()V

    .line 238
    invoke-virtual {p0}, Landroid/widget/TextImage;->invalidate()V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v0, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/TextImage;->mIconWidth:I

    .line 232
    iget-object v0, p0, Landroid/widget/TextImage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/TextImage;->mIconHeight:I

    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 154
    iput-object p1, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    .line 155
    iget-object v0, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextImage;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 156
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/TextImage;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 161
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget v0, p0, Landroid/widget/TextImage;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 164
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/TextImage;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextImage;->requestLayout()V

    .line 171
    invoke-virtual {p0}, Landroid/widget/TextImage;->invalidate()V

    .line 172
    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 196
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    .line 197
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 205
    :cond_0
    iput-object p1, p0, Landroid/widget/TextImage;->mTextColor:Landroid/content/res/ColorStateList;

    .line 206
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .parameter "size"

    .prologue
    .line 179
    iget v0, p0, Landroid/widget/TextImage;->mTextSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iput p1, p0, Landroid/widget/TextImage;->mTextSize:F

    .line 184
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Landroid/widget/TextImage;->mPaintNormal:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/TextImage;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 186
    invoke-virtual {p0}, Landroid/widget/TextImage;->requestLayout()V

    .line 187
    invoke-virtual {p0}, Landroid/widget/TextImage;->invalidate()V

    goto :goto_0
.end method
