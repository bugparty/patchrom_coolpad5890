.class Lcom/android/gallery3d/app/z;
.super Lcom/baidu/mapapi/ItemizedOverlay;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemizedOverlay"

.field public static final fF:Ljava/lang/String; = "gpspic_path"

.field public static final fG:Ljava/lang/String; = "gpspic"


# instance fields
.field aI:Ljava/lang/String;

.field public fD:Ljava/util/List;

.field private fE:Landroid/graphics/drawable/Drawable;

.field fH:Ljava/lang/String;

.field fI:Landroid/widget/ImageView;

.field fJ:Landroid/widget/TextView;

.field fK:Landroid/widget/ImageButton;

.field mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mLatitude:D

.field private mLongitude:D

.field mNumber:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v8, 0x412e848000000000L

    .line 195
    invoke-static {p1}, Lcom/android/gallery3d/app/z;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/z;->fD:Ljava/util/List;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/z;->mBitmap:Landroid/graphics/Bitmap;

    .line 196
    iput-object p1, p0, Lcom/android/gallery3d/app/z;->fE:Landroid/graphics/drawable/Drawable;

    .line 197
    iput-object p2, p0, Lcom/android/gallery3d/app/z;->mContext:Landroid/content/Context;

    .line 199
    sget-object v2, Lcom/android/gallery3d/app/PhotoDisplayMap;->CL:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 201
    if-lez v3, :cond_0

    .line 202
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 203
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 205
    const-string v5, "|"

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 206
    const-string v5, "|"

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 207
    const-string v5, "|"

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 209
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/gallery3d/app/z;->mLatitude:D

    .line 210
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/app/z;->mLongitude:D

    .line 213
    new-instance v4, Lcom/baidu/mapapi/GeoPoint;

    iget-wide v5, p0, Lcom/android/gallery3d/app/z;->mLatitude:D

    mul-double/2addr v5, v8

    double-to-int v5, v5

    iget-wide v6, p0, Lcom/android/gallery3d/app/z;->mLongitude:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v4, v5, v6}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 214
    invoke-static {v4}, Lcom/baidu/mapapi/CoordinateConvert;->fromWgs84ToBaidu(Lcom/baidu/mapapi/GeoPoint;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mapapi/CoordinateConvert;->bundleDecode(Landroid/os/Bundle;)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v4

    .line 216
    iget-object v5, p0, Lcom/android/gallery3d/app/z;->fD:Ljava/util/List;

    new-instance v6, Lcom/baidu/mapapi/OverlayItem;

    const-string v7, ""

    invoke-direct {v6, v4, v7, v0}, Lcom/baidu/mapapi/OverlayItem;-><init>(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/z;->populate()V

    .line 220
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/z;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private aD()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->fK:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/gallery3d/app/ci;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/ci;-><init>(Lcom/android/gallery3d/app/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-void
.end method


# virtual methods
.method public aC()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/gallery3d/app/z;->populate()V

    .line 224
    return-void
.end method

.method protected createItem(I)Lcom/baidu/mapapi/OverlayItem;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->fD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v1

    .line 231
    invoke-virtual {p0}, Lcom/android/gallery3d/app/z;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/z;->getItem(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v2

    .line 234
    invoke-virtual {v2}, Lcom/baidu/mapapi/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {v2}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 239
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 240
    const v5, -0xffff01

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    const/high16 v5, 0x4170

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    iget v5, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, -0x1e

    int-to-float v5, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v5, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 231
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mapapi/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V

    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->fE:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/android/gallery3d/app/z;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 248
    return-void
.end method

.method protected onTap(I)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->fD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/z;->setFocus(Lcom/baidu/mapapi/OverlayItem;)V

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->fD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v1

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->fD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/OverlayItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 269
    const-string v3, "|"

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 270
    const-string v4, "|"

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 272
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/app/z;->mNumber:I

    .line 273
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/z;->fH:Ljava/lang/String;

    .line 274
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/z;->aI:Ljava/lang/String;

    .line 277
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 278
    const/16 v2, 0x10

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 279
    iget-object v2, p0, Lcom/android/gallery3d/app/z;->aI:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/z;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d00c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CD:Landroid/view/View;

    const v3, 0x7f0a002e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/gallery3d/app/z;->fI:Landroid/widget/ImageView;

    .line 287
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CD:Landroid/view/View;

    const v3, 0x7f0a002f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/z;->fJ:Landroid/widget/TextView;

    .line 288
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CD:Landroid/view/View;

    const v3, 0x7f0a0030

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/z;->fK:Landroid/widget/ImageButton;

    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->fI:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/gallery3d/app/z;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->fJ:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/gallery3d/app/z;->mNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-direct {p0}, Lcom/android/gallery3d/app/z;->aD()V

    .line 293
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    sget-object v2, Lcom/android/gallery3d/app/PhotoDisplayMap;->CD:Landroid/view/View;

    new-instance v3, Lcom/baidu/mapapi/MapView$LayoutParams;

    const/16 v4, 0x51

    invoke-direct {v3, v6, v6, v1, v4}, Lcom/baidu/mapapi/MapView$LayoutParams;-><init>(IILcom/baidu/mapapi/GeoPoint;I)V

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mapapi/MapView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CD:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 297
    const/4 v0, 0x1

    return v0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string v2, "ItemizedOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 302
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CD:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 306
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/ItemizedOverlay;->onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/app/z;->fD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
