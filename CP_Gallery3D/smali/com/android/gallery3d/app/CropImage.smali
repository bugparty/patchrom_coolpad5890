.class public Lcom/android/gallery3d/app/CropImage;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "SourceFile"


# static fields
.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "CropImage"

.field private static final WIDTH:Ljava/lang/String; = "width"

.field public static final dJ:Ljava/lang/String; = "data"

.field private static final dR:I = 0x0

.field private static final hY:Ljava/lang/String; = "MMddyy"

.field private static final jV:I = 0x1

.field private static final ji:I = 0x5a

.field private static final kA:I = 0x140

.field private static final kB:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field public static final kC:Ljava/lang/String; = "return-data"

.field public static final kD:Ljava/lang/String; = "cropped-rect"

.field public static final kE:Ljava/lang/String; = "aspectX"

.field public static final kF:Ljava/lang/String; = "aspectY"

.field public static final kG:Ljava/lang/String; = "spotlightX"

.field public static final kH:Ljava/lang/String; = "spotlightY"

.field public static final kI:Ljava/lang/String; = "outputX"

.field public static final kJ:Ljava/lang/String; = "outputY"

.field public static final kK:Ljava/lang/String; = "scale"

.field public static final kL:Ljava/lang/String; = "scaleUpIfNeeded"

.field public static final kM:Ljava/lang/String; = "outputFormat"

.field public static final kN:Ljava/lang/String; = "set-as-wallpaper"

.field public static final kO:Ljava/lang/String; = "set-as-keyguard-wallpaper"

.field public static final kP:Ljava/lang/String; = "set-as-launchermenu-wallpaper"

.field public static final kQ:Ljava/lang/String; = "noFaceDetection"

.field public static final kR:Ljava/lang/String; = "set-wallpaper"

.field private static final kS:I = 0x2

.field public static final kT:Ljava/lang/String; = "download"

.field public static final kU:Ljava/io/File; = null

.field public static final kV:Ljava/lang/String; = "com.android.camera.action.CROP"

.field public static final kr:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final ks:I = 0x4c4b40

.field private static final kt:I = 0x3e8

.field private static final ku:I = 0x200

.field private static final kv:I = 0x75300

.field private static final kw:I = 0x1

.field private static final kx:I = 0x2

.field private static final ky:I = 0x3

.field private static final kz:I = 0x4

.field public static le:Lcom/yulong/android/view/dialog/AnimatedDialog;

.field private static final lj:[Ljava/lang/String;


# instance fields
.field private Y:Landroid/os/Handler;

.field private fB:I

.field private kW:Lcom/android/gallery3d/ui/s;

.field private kX:Z

.field private kY:Z

.field private kZ:Z

.field private la:Lcom/android/gallery3d/ui/ex;

.field private lb:Landroid/graphics/BitmapRegionDecoder;

.field private lc:Landroid/graphics/Bitmap;

.field private ld:Z

.field private lf:Lcom/android/gallery3d/b/l;

.field private lg:Lcom/android/gallery3d/b/l;

.field private lh:Lcom/android/gallery3d/b/l;

.field private li:Lcom/android/gallery3d/a/ax;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/app/CropImage;->kU:Ljava/io/File;

    .line 1063
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/app/CropImage;->lj:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 142
    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->kX:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->kY:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->kZ:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->ld:Z

    .line 1050
    return-void
.end method

.method private a(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v12, 0x4000

    const/high16 v5, 0x3f80

    .line 670
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 672
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 674
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 675
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 676
    if-eqz v7, :cond_0

    .line 677
    const-string v4, "outputX"

    invoke-virtual {v7, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 678
    const-string v4, "outputY"

    invoke-virtual {v7, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 681
    :cond_0
    mul-int v4, v3, v0

    const v6, 0x4c4b40

    if-le v4, v6, :cond_1

    .line 682
    const-wide v8, 0x415312d000000000L

    int-to-double v10, v3

    div-double/2addr v8, v10

    int-to-double v10, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 684
    const-string v6, "CropImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scale down the cropped image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 686
    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 693
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 694
    if-eqz v7, :cond_2

    const-string v6, "scale"

    invoke-virtual {v7, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 695
    :cond_2
    int-to-float v1, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v1, v6

    .line 696
    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v1, v8

    .line 697
    if-eqz v7, :cond_3

    const-string v8, "scaleUpIfNeeded"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 699
    :cond_3
    cmpl-float v2, v6, v5

    if-lez v2, :cond_9

    move v2, v5

    .line 700
    :goto_1
    cmpl-float v6, v1, v5

    if-lez v6, :cond_8

    move v1, v5

    move v5, v2

    .line 705
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 706
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 707
    sub-int v7, v3, v2

    int-to-float v7, v7

    div-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v8, v0, v6

    int-to-float v8, v8

    div-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v12

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v6, v0

    int-to-float v6, v6

    div-float/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, v7, v8, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 712
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->lc:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 713
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->lc:Landroid/graphics/Bitmap;

    .line 714
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 716
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 717
    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 755
    :goto_3
    return-object v0

    :cond_4
    move v0, v2

    .line 670
    goto/16 :goto_0

    .line 721
    :cond_5
    iget-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->ld:Z

    if-eqz v2, :cond_7

    .line 722
    iget v2, p0, Lcom/android/gallery3d/app/CropImage;->fB:I

    .line 723
    iget-object v6, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/s;->k()I

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/s;->j()I

    move-result v7

    rsub-int v8, v2, 0x168

    invoke-static {p1, v6, v7, v8}, Lcom/android/gallery3d/app/CropImage;->a(Landroid/graphics/Rect;III)V

    .line 725
    rsub-int v6, v2, 0x168

    invoke-static {v4, v3, v0, v6}, Lcom/android/gallery3d/app/CropImage;->a(Landroid/graphics/Rect;III)V

    .line 727
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 728
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v5

    .line 730
    iput v5, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 731
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v1, v7, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v1, v7, :cond_6

    if-nez v2, :cond_6

    .line 735
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->lb:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v1

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->lb:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0, p1, v6}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1

    goto :goto_3

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 739
    :cond_6
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 741
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 742
    invoke-static {v1, v3, v0, v2}, Lcom/android/gallery3d/app/CropImage;->a(Landroid/graphics/Canvas;III)V

    .line 743
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->lb:Landroid/graphics/BitmapRegionDecoder;

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/CropImage;->a(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    move-object v0, v6

    .line 744
    goto :goto_3

    .line 746
    :cond_7
    iget v2, p0, Lcom/android/gallery3d/app/CropImage;->fB:I

    .line 747
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/s;->k()I

    move-result v1

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/s;->j()I

    move-result v5

    rsub-int v6, v2, 0x168

    invoke-static {p1, v1, v5, v6}, Lcom/android/gallery3d/app/CropImage;->a(Landroid/graphics/Rect;III)V

    .line 749
    rsub-int v1, v2, 0x168

    invoke-static {v4, v3, v0, v1}, Lcom/android/gallery3d/app/CropImage;->a(Landroid/graphics/Rect;III)V

    .line 750
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 751
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 752
    invoke-static {v5, v3, v0, v2}, Lcom/android/gallery3d/app/CropImage;->a(Landroid/graphics/Canvas;III)V

    .line 753
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v5, v0, p1, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v0, v1

    .line 755
    goto/16 :goto_3

    :cond_8
    move v5, v2

    goto/16 :goto_2

    :cond_9
    move v2, v6

    goto/16 :goto_1

    :cond_a
    move v5, v6

    goto/16 :goto_2

    :cond_b
    move v1, v5

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->a(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->Y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/l;)Lcom/android/gallery3d/b/l;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->lh:Lcom/android/gallery3d/b/l;

    return-object p1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/yulong/android/view/dialog/AnimatedDialog;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1156
    new-instance v0, Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-direct {v0, p0}, Lcom/yulong/android/view/dialog/AnimatedDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    .line 1157
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0, p1}, Lcom/yulong/android/view/dialog/AnimatedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1158
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0, p2}, Lcom/yulong/android/view/dialog/AnimatedDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1159
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0, p3}, Lcom/yulong/android/view/dialog/AnimatedDialog;->setIndeterminate(Z)V

    .line 1160
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0, p4}, Lcom/yulong/android/view/dialog/AnimatedDialog;->setCancelable(Z)V

    .line 1161
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/AnimatedDialog;->show()V

    .line 1162
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    return-object v0
.end method

.method private a(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 379
    .line 380
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->cj()Ljava/lang/String;

    move-result-object v4

    move v2, v3

    move-object v0, v1

    .line 381
    :goto_0
    const/16 v5, 0x3e8

    if-ge v2, v5, :cond_0

    .line 382
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 385
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 392
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_4

    .line 393
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :catch_0
    move-exception v2

    .line 387
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to create new file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 419
    :cond_2
    :goto_1
    return-object v0

    .line 381
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 396
    :cond_4
    invoke-virtual {v0, v3, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 397
    invoke-virtual {v0, v3, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 400
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    :try_start_2
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/CropImage;->i(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 414
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 416
    goto :goto_1

    .line 405
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 407
    :catch_1
    move-exception v2

    .line 408
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to save image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 411
    goto :goto_1
.end method

.method public static a(Lcom/android/gallery3d/a/bj;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 328
    const-string v0, "JPEG"

    .line 329
    instance-of v1, p0, Lcom/android/gallery3d/a/ax;

    if-eqz v1, :cond_1

    .line 330
    check-cast p0, Lcom/android/gallery3d/a/ax;

    invoke-virtual {p0}, Lcom/android/gallery3d/a/ax;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 331
    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    :cond_0
    const-string v0, "PNG"

    .line 337
    :cond_1
    return-object v0
.end method

.method private a(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 835
    if-nez p1, :cond_0

    .line 836
    const v0, 0x7f0d00d9

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 837
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 858
    :goto_0
    return-void

    .line 840
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->lb:Landroid/graphics/BitmapRegionDecoder;

    .line 841
    iput-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->ld:Z

    .line 842
    iput v0, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 844
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 845
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    .line 846
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 847
    const/4 v3, -0x1

    const v4, 0x75300

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 849
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 851
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    new-instance v1, Lcom/android/gallery3d/ui/bl;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, p1}, Lcom/android/gallery3d/ui/bl;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;)V

    iget v2, p0, Lcom/android/gallery3d/app/CropImage;->fB:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/aq;I)V

    .line 853
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->kX:Z

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/s;->e(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/s;->aA()V

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Canvas;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 761
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 762
    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 763
    div-int/lit8 v0, p3, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 764
    neg-int v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 768
    :goto_0
    return-void

    .line 766
    :cond_0
    neg-int v0, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 804
    move/from16 v0, p5

    mul-int/lit16 v5, v0, 0x200

    .line 805
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 806
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 807
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 808
    move/from16 v0, p5

    iput v0, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 809
    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 810
    move/from16 v0, p5

    int-to-float v1, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move/from16 v0, p5

    int-to-float v2, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 812
    new-instance v8, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 813
    iget v2, p3, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    .line 814
    :goto_0
    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_2

    .line 815
    iget v4, p3, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    .line 816
    :goto_1
    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v9, :cond_1

    .line 817
    add-int v9, v2, v5

    add-int v10, v4, v5

    invoke-virtual {v6, v2, v4, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 818
    invoke-virtual {v6, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 822
    monitor-enter p2

    .line 823
    :try_start_0
    invoke-virtual {p2, v6, v7}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 824
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    int-to-float v10, v1

    int-to-float v11, v3

    invoke-virtual {p1, v9, v10, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 826
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 816
    :cond_0
    add-int/2addr v4, v5

    add-int/lit16 v3, v3, 0x200

    goto :goto_1

    .line 824
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 814
    :cond_1
    add-int/2addr v2, v5

    add-int/lit16 v1, v1, 0x200

    goto :goto_0

    .line 830
    :cond_2
    return-void
.end method

.method private static a(Landroid/graphics/Rect;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 772
    if-eqz p3, :cond_0

    const/16 v0, 0x168

    if-ne p3, v0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 775
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 776
    sparse-switch p3, :sswitch_data_0

    .line 798
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 778
    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 779
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 780
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 781
    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 785
    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 786
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 787
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 788
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 792
    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 793
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 794
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 795
    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 776
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(Lcom/android/gallery3d/a/ax;Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1082
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1083
    invoke-static {p0, v0}, Lcom/android/gallery3d/c/b;->a(Lcom/android/gallery3d/a/bj;Landroid/media/ExifInterface;)V

    .line 1084
    const-string v1, "ImageWidth"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string v1, "ImageLength"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v1, "Orientation"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :goto_0
    return-void

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    const-string v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot copy exif: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->f(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->a(Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1095
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1096
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1098
    const-string v3, "ImageWidth"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string v3, "ImageLength"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v3, "Orientation"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    sget-object v3, Lcom/android/gallery3d/app/CropImage;->lj:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 1103
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1104
    if-eqz v6, :cond_0

    .line 1105
    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1110
    :cond_1
    const-string v0, "FNumber"

    invoke-virtual {v1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1111
    if-eqz v0, :cond_2

    .line 1113
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1114
    const-string v3, "FNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v5, 0x4120

    mul-float/2addr v1, v5

    const/high16 v5, 0x3f00

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/10"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1143
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 1147
    :goto_2
    return-void

    .line 1116
    :catch_0
    move-exception v1

    .line 1117
    const-string v1, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot parse aperture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1144
    :catch_1
    move-exception v0

    .line 1145
    const-string v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot copy exif: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 342
    :try_start_0
    const-string v0, "CropImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsWallpaper ByteCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const-string v1, "CropImage"

    const-string v2, "fail to set wall paper"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 590
    new-instance v0, Lcom/android/gallery3d/b/ac;

    invoke-direct {v0, p4}, Lcom/android/gallery3d/b/ac;-><init>(Ljava/io/OutputStream;)V

    .line 591
    new-instance v1, Lcom/android/gallery3d/app/cw;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/cw;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/ac;)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/b/j;->a(Lcom/android/gallery3d/b/a;)V

    .line 597
    const/16 v0, 0x5a

    :try_start_0
    invoke-virtual {p2, p3, v0, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 598
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 600
    :goto_0
    invoke-interface {p1, v2}, Lcom/android/gallery3d/b/j;->a(Lcom/android/gallery3d/b/a;)V

    .line 601
    invoke-static {p4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v0

    .line 598
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v0

    invoke-interface {p1, v2}, Lcom/android/gallery3d/b/j;->a(Lcom/android/gallery3d/b/a;)V

    .line 601
    invoke-static {p4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private a(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 607
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->cj()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CropImage;->i(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 613
    :goto_0
    return v0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    const-string v1, "CropImage"

    const-string v2, "cannot write output"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/l;)Lcom/android/gallery3d/b/l;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->lf:Lcom/android/gallery3d/b/l;

    return-object p1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->b(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 353
    :try_start_0
    const-string v0, "CropImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsKeyGuardWallpaper ByteCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/WallpaperManager;->setKeyguardBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    const-string v1, "CropImage"

    const-string v2, "fail to set wall paper"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/l;)Lcom/android/gallery3d/b/l;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->lg:Lcom/android/gallery3d/b/l;

    return-object p1
.end method

.method static synthetic c(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->c(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 365
    :try_start_0
    const-string v0, "CropImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsLauncherMenuWallpaper ByteCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/WallpaperManager;->setLauncherMenuBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    const-string v1, "CropImage"

    const-string v2, "fail to set wall paper"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static calRemaining(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 1214
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x4980

    div-float/2addr v0, v1

    .line 1218
    float-to-long v0, v0

    .line 1224
    :goto_0
    return-wide v0

    .line 1220
    :catch_0
    move-exception v0

    .line 1224
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private ci()Ljava/lang/String;
    .locals 2

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->cj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/png"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "image/jpeg"

    goto :goto_0
.end method

.method private cj()Ljava/lang/String;
    .locals 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "outputFormat"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-static {v0}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/a/bj;)Ljava/lang/String;

    move-result-object v0

    .line 632
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 633
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "png"

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "jpg"

    goto :goto_0
.end method

.method private ck()V
    .locals 5

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/s;->az()Landroid/graphics/RectF;

    move-result-object v1

    .line 641
    if-nez v1, :cond_0

    .line 667
    :goto_0
    return-void

    .line 642
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 643
    if-eqz v0, :cond_1

    const-string v2, "set-as-wallpaper"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0d0045

    .line 651
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v2, v0, v3, v4}, Lcom/android/gallery3d/app/CropImage;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/yulong/android/view/dialog/AnimatedDialog;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    .line 653
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    new-instance v2, Lcom/android/gallery3d/app/az;

    invoke-direct {v2, p0, v1}, Lcom/android/gallery3d/app/az;-><init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V

    new-instance v1, Lcom/android/gallery3d/app/cr;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/cr;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->lh:Lcom/android/gallery3d/b/l;

    goto :goto_0

    .line 643
    :cond_1
    const v0, 0x7f0d003c

    goto :goto_1
.end method

.method private cl()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 881
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 882
    if-nez v0, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 885
    const-string v2, "aspectY"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 886
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 887
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/s;->g(F)V

    goto :goto_0
.end method

.method private cm()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 898
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 900
    if-eqz v3, :cond_4

    .line 901
    const-string v0, "noFaceDetection"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    const-string v0, "noFaceDetection"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->kX:Z

    .line 905
    :cond_0
    const-string v0, "data"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->lc:Landroid/graphics/Bitmap;

    .line 907
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->lc:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 908
    new-instance v0, Lcom/android/gallery3d/ui/ex;

    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->lc:Landroid/graphics/Bitmap;

    const/16 v4, 0x140

    invoke-direct {v0, v3, v4}, Lcom/android/gallery3d/ui/ex;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->la:Lcom/android/gallery3d/ui/ex;

    .line 910
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->la:Lcom/android/gallery3d/ui/ex;

    invoke-virtual {v0, v3, v2}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/aq;I)V

    .line 911
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->kX:Z

    if-eqz v0, :cond_3

    .line 912
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->lc:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/s;->e(Landroid/graphics/Bitmap;)V

    .line 916
    :goto_1
    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 966
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 902
    goto :goto_0

    .line 914
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/s;->aA()V

    goto :goto_1

    .line 921
    :cond_4
    const/4 v0, 0x0

    const v3, 0x7f0d0031

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/gallery3d/app/CropImage;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/yulong/android/view/dialog/AnimatedDialog;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    .line 926
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->cn()Lcom/android/gallery3d/a/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    .line 927
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->co()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/CropImage;->fB:I

    .line 928
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->am()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    move v0, v1

    .line 932
    :goto_3
    if-eqz v0, :cond_8

    .line 933
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v3}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 934
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/CropImage;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 937
    :goto_4
    if-eqz v1, :cond_7

    .line 938
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/ej;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/ej;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/a/ax;)V

    new-instance v2, Lcom/android/gallery3d/app/cq;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/cq;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->lf:Lcom/android/gallery3d/b/l;

    goto :goto_2

    :cond_5
    move v0, v2

    .line 930
    goto :goto_3

    :cond_6
    move v1, v2

    .line 934
    goto :goto_4

    .line 952
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/by;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/by;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/a/ax;)V

    new-instance v2, Lcom/android/gallery3d/app/cs;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/cs;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->lg:Lcom/android/gallery3d/b/l;

    goto :goto_2

    :cond_8
    move v1, v0

    goto :goto_4
.end method

.method private cn()Lcom/android/gallery3d/a/ax;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1024
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1025
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v2

    .line 1026
    if-nez v1, :cond_0

    .line 1027
    const-string v1, "CropImage"

    const-string v2, "no data given"

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :goto_0
    return-object v0

    .line 1030
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/a/ao;->e(Landroid/net/Uri;)Lcom/android/gallery3d/a/dd;

    move-result-object v3

    .line 1031
    if-nez v3, :cond_1

    .line 1032
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get path for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1035
    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->d(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-static {v0}, Lcom/android/gallery3d/c/b;->b(Lcom/android/gallery3d/a/bj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->e(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    instance-of v0, v0, Lcom/android/gallery3d/a/av;

    if-eqz v0, :cond_1

    .line 426
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->f(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->g(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 433
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->kU:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/app/CropImage;->kU:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot create download folder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-static {v0}, Lcom/android/gallery3d/c/b;->c(Lcom/android/gallery3d/a/bj;)Ljava/lang/String;

    move-result-object v0

    .line 438
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 439
    if-ltz v1, :cond_1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 440
    :cond_1
    sget-object v1, Lcom/android/gallery3d/app/CropImage;->kU:Ljava/io/File;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 441
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 465
    :goto_0
    return-object v0

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/a/ax;Ljava/lang/String;II)V

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 446
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 447
    const-string v4, "title"

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-static {v5}, Lcom/android/gallery3d/c/b;->c(Lcom/android/gallery3d/a/bj;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v4, "_display_name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v4, "datetaken"

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-static {v5}, Lcom/android/gallery3d/c/b;->f(Lcom/android/gallery3d/a/bj;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 450
    const-string v4, "date_modified"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 451
    const-string v4, "date_added"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 452
    const-string v1, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->ci()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v1, "orientation"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    const-string v1, "_data"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 456
    const-string v0, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v0, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-static {v0}, Lcom/android/gallery3d/c/b;->g(Lcom/android/gallery3d/a/bj;)D

    move-result-wide v0

    .line 460
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-static {v2}, Lcom/android/gallery3d/c/b;->h(Lcom/android/gallery3d/a/bj;)D

    move-result-wide v4

    .line 461
    invoke-static {v0, v1, v4, v5}, Lcom/android/gallery3d/b/y;->b(DD)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    const-string v2, "latitude"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 463
    const-string v0, "longitude"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 465
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private f(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    check-cast v0, Lcom/android/gallery3d/a/av;

    .line 472
    new-instance v2, Ljava/io/File;

    iget-object v1, v0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 477
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 478
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 480
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/gallery3d/app/CropImage;->calRemaining(Ljava/lang/String;)J

    .line 481
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/gallery3d/app/CropImage;->calRemaining(Ljava/lang/String;)J

    .line 483
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 484
    if-eqz v6, :cond_3

    .line 485
    invoke-static {v4}, Lcom/android/gallery3d/app/CropImage;->calRemaining(Ljava/lang/String;)J

    move-result-wide v4

    .line 486
    cmp-long v4, v4, v9

    if-gez v4, :cond_0

    .line 487
    const v1, 0x7f0d00b9

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 488
    iput-boolean v7, p0, Lcom/android/gallery3d/app/CropImage;->kY:Z

    .line 497
    :cond_0
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 499
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 502
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 503
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 504
    if-ltz v2, :cond_2

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 506
    :cond_2
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 507
    if-nez v1, :cond_4

    const/4 v0, 0x0

    .line 554
    :goto_1
    return-object v0

    .line 491
    :cond_3
    invoke-static {v5}, Lcom/android/gallery3d/app/CropImage;->calRemaining(Ljava/lang/String;)J

    move-result-wide v4

    .line 492
    cmp-long v4, v4, v9

    if-gez v4, :cond_0

    .line 493
    const v1, 0x7f0d00ba

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    iput-boolean v7, p0, Lcom/android/gallery3d/app/CropImage;->kZ:Z

    goto :goto_0

    .line 514
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 515
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 516
    const-string v5, "title"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v5, "_display_name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v5, "datetaken"

    iget-wide v6, v0, Lcom/android/gallery3d/a/at;->qZ:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 519
    const-string v5, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    const-string v5, "date_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 521
    const-string v2, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->ci()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v2, "orientation"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    const-string v2, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v2, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 525
    const-string v1, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const-string v1, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    iget-wide v1, v0, Lcom/android/gallery3d/a/at;->qX:D

    iget-wide v5, v0, Lcom/android/gallery3d/a/at;->qY:D

    invoke-static {v1, v2, v5, v6}, Lcom/android/gallery3d/b/y;->b(DD)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 530
    const-string v1, "latitude"

    iget-wide v2, v0, Lcom/android/gallery3d/a/at;->qX:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 531
    const-string v1, "longitude"

    iget-wide v2, v0, Lcom/android/gallery3d/a/at;->qY:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 534
    :cond_5
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->kY:Z

    if-eqz v0, :cond_7

    .line 535
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->Y:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/app/cu;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/cu;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 554
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 543
    :cond_7
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->kZ:Z

    if-eqz v0, :cond_6

    .line 544
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->Y:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/app/cy;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/cy;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private f(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 861
    if-nez p1, :cond_0

    .line 862
    const v0, 0x7f0d00d9

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 863
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 878
    :goto_0
    return-void

    .line 866
    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->ld:Z

    .line 867
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 869
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 871
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    new-instance v1, Lcom/android/gallery3d/ui/ex;

    const/16 v2, 0x200

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/ex;-><init>(Landroid/graphics/Bitmap;I)V

    iget v2, p0, Lcom/android/gallery3d/app/CropImage;->fB:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/aq;I)V

    .line 873
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->kX:Z

    if-eqz v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/s;->e(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/s;->aA()V

    goto :goto_0
.end method

.method private g(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x3e8

    .line 559
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->kU:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/app/CropImage;->kU:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot create download folder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 564
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 567
    sget-object v3, Lcom/android/gallery3d/app/CropImage;->kU:Ljava/io/File;

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/gallery3d/app/CropImage;->a(Lcom/android/gallery3d/b/j;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 568
    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 583
    :goto_0
    return-object v0

    .line 570
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 571
    const-string v5, "title"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v2, "_display_name"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v2, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 574
    const-string v2, "date_modified"

    div-long v5, v0, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 575
    const-string v2, "date_added"

    div-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    const-string v0, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->ci()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v0, "orientation"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    const-string v0, "_data"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v0, "_size"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 580
    const-string v0, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    const-string v0, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private i(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .parameter

    .prologue
    .line 617
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method private j(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1233
    const-string v0, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseBmp path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1239
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1241
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1242
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 1244
    const/4 v4, 0x6

    .line 1245
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .line 1246
    if-lez v4, :cond_0

    .line 1247
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 1248
    const-string v0, "BM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    const/4 v1, 0x1

    move v0, v1

    .line 1253
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 1254
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1261
    :goto_1
    const-string v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBmpType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    return v0

    .line 1255
    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 1257
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1258
    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 1259
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1258
    :catch_2
    move-exception v1

    goto :goto_3

    .line 1255
    :catch_3
    move-exception v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public co()I
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 1171
    .line 1173
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move v6, v0

    .line 1205
    :goto_0
    return v6

    .line 1177
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    if-eqz v1, :cond_3

    .line 1178
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->li:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->getRotation()I

    move-result v0

    move v6, v0

    .line 1180
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1181
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1182
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1183
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1184
    const-string v3, "_id = ?"

    .line 1187
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "orientation"

    aput-object v8, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1191
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1192
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v6

    .line 1198
    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    const-string v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1194
    :catch_1
    move-exception v0

    move-object v0, v7

    .line 1198
    :goto_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1200
    :catch_2
    move-exception v0

    .line 1201
    const-string v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1197
    :catchall_0
    move-exception v0

    .line 1198
    :goto_3
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1202
    :goto_4
    throw v0

    .line 1200
    :catch_3
    move-exception v1

    .line 1201
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1197
    :catchall_1
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_3

    .line 1194
    :catch_4
    move-exception v1

    goto :goto_2

    :cond_3
    move v6, v0

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 179
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CropImage;->requestWindowFeature(I)Z

    .line 181
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CropImage;->requestWindowFeature(I)Z

    .line 184
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CropImage;->setContentView(I)V

    .line 185
    new-instance v0, Lcom/android/gallery3d/ui/s;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/s;-><init>(Lcom/android/gallery3d/app/bm;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    .line 186
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/eh;->setContentPane(Lcom/android/gallery3d/ui/am;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 192
    new-instance v0, Lcom/android/gallery3d/app/cv;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/cv;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/ui/eh;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->Y:Landroid/os/Handler;

    .line 228
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->cl()V

    .line 229
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 239
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 260
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 247
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 251
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CropImage;->setResult(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 256
    :sswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->ck()V

    goto :goto_0

    .line 245
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a000c -> :sswitch_1
        0x7f0a003b -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 986
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 988
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->lf:Lcom/android/gallery3d/b/l;

    .line 989
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 991
    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 992
    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->N()V

    .line 994
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/AnimatedDialog;->dismiss()V

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->lg:Lcom/android/gallery3d/b/l;

    .line 998
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1000
    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 1001
    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->N()V

    .line 1003
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/AnimatedDialog;->dismiss()V

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->lh:Lcom/android/gallery3d/b/l;

    .line 1007
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1009
    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 1010
    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->N()V

    .line 1012
    sget-object v0, Lcom/android/gallery3d/app/CropImage;->le:Lcom/yulong/android/view/dialog/AnimatedDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/AnimatedDialog;->dismiss()V

    .line 1014
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    .line 1015
    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fY()V

    .line 1017
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/s;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    .line 1021
    return-void

    .line 1019
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 970
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 971
    iget v0, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->cm()V

    .line 972
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->ck()V

    .line 975
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    .line 976
    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fY()V

    .line 978
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->kW:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/s;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    .line 982
    return-void

    .line 980
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 233
    const-string v0, "state"

    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    return-void
.end method
