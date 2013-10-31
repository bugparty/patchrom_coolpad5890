.class public Lcom/android/gallery3d/app/PhotoDisplayMap;
.super Lcom/baidu/mapapi/MapActivity;
.source "SourceFile"


# static fields
.field static CD:Landroid/view/View; = null

.field static CE:Lcom/baidu/mapapi/MapView; = null

.field public static final CH:Ljava/lang/String; = "com.android.gallery3d.action.GPSDISPLAY"

.field static CL:Ljava/util/ArrayList; = null

.field private static final TAG:Ljava/lang/String; = "PhotoDisplayMap"

.field public static final fF:Ljava/lang/String; = "gpspic_path"


# instance fields
.field CF:I

.field CG:Lcom/android/gallery3d/app/z;

.field public CI:Lcom/baidu/mapapi/BMapManager;

.field public CJ:Ljava/lang/String;

.field CK:Z

.field public tJ:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CD:Landroid/view/View;

    .line 38
    sput-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CL:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/baidu/mapapi/MapActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CF:I

    .line 40
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CG:Lcom/android/gallery3d/app/z;

    .line 44
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CI:Lcom/baidu/mapapi/BMapManager;

    .line 45
    const-string v0, "B314C11A8B462DA25E844B2D292AD1E41783D574"

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CJ:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CK:Z

    .line 50
    const/high16 v0, 0x437f

    iput v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->tJ:F

    return-void
.end method


# virtual methods
.method public eg()I
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x1

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDisplayMap;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 170
    :goto_0
    return v0

    .line 167
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public g(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDisplayMap;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 152
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDisplayMap;->eg()I

    move-result v0

    .line 153
    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    .line 154
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 155
    int-to-float v0, p1

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->tJ:F

    div-float/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 159
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDisplayMap;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 160
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_1
    const/high16 v0, -0x4080

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, -0x2

    const-wide v9, 0x412e848000000000L

    const-wide/high16 v1, 0x4034

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/baidu/mapapi/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoDisplayMap;->setContentView(I)V

    .line 58
    new-instance v0, Lcom/baidu/mapapi/BMapManager;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/BMapManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CI:Lcom/baidu/mapapi/BMapManager;

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CI:Lcom/baidu/mapapi/BMapManager;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CJ:Ljava/lang/String;

    invoke-virtual {v0, v3, v8}, Lcom/baidu/mapapi/BMapManager;->init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CI:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->getLocationManager()Lcom/baidu/mapapi/MKLocationManager;

    move-result-object v0

    const/16 v3, 0xa

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Lcom/baidu/mapapi/MKLocationManager;->setNotifyInternal(II)Z

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CI:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->start()Z

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CI:Lcom/baidu/mapapi/BMapManager;

    invoke-super {p0, v0}, Lcom/baidu/mapapi/MapActivity;->initMapActivity(Lcom/baidu/mapapi/BMapManager;)Z

    .line 67
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDisplayMap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    const-string v3, "gpsAlbums"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CL:Ljava/util/ArrayList;

    .line 70
    const-string v0, "|"

    .line 71
    sget-object v3, Lcom/android/gallery3d/app/PhotoDisplayMap;->CL:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 72
    sget-object v3, Lcom/android/gallery3d/app/PhotoDisplayMap;->CL:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 73
    if-lez v5, :cond_0

    .line 74
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CL:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    :cond_0
    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 77
    const-string v4, "|"

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 78
    const-string v4, "|"

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 79
    const-string v4, "|"

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 81
    if-lez v3, :cond_3

    if-lez v6, :cond_3

    if-ge v3, v6, :cond_3

    .line 82
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 85
    :goto_0
    if-lez v6, :cond_1

    .line 86
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    move-wide v1, v0

    .line 88
    :cond_1
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoDisplayMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MapView;

    sput-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    .line 89
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/MapView;->setBuiltInZoomControls(Z)V

    .line 91
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/MapView;->setDrawOverlayWhenZooming(Z)V

    .line 92
    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    mul-double/2addr v3, v9

    double-to-int v3, v3

    mul-double/2addr v1, v9

    double-to-int v1, v1

    invoke-direct {v0, v3, v1}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 93
    sget-object v1, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getController()Lcom/baidu/mapapi/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/MapController;->setCenter(Lcom/baidu/mapapi/GeoPoint;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDisplayMap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    new-instance v1, Lcom/android/gallery3d/app/z;

    invoke-direct {v1, v0, p0, v5}, Lcom/android/gallery3d/app/z;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CG:Lcom/android/gallery3d/app/z;

    .line 100
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CG:Lcom/android/gallery3d/app/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040021

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CD:Landroid/view/View;

    .line 104
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    sget-object v1, Lcom/android/gallery3d/app/PhotoDisplayMap;->CD:Landroid/view/View;

    new-instance v2, Lcom/baidu/mapapi/MapView$LayoutParams;

    const/16 v3, 0x33

    invoke-direct {v2, v11, v11, v8, v3}, Lcom/baidu/mapapi/MapView$LayoutParams;-><init>(IILcom/baidu/mapapi/GeoPoint;I)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CD:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CF:I

    .line 109
    sget-object v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CI:Lcom/baidu/mapapi/BMapManager;

    new-instance v2, Lcom/android/gallery3d/app/cp;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/cp;-><init>(Lcom/android/gallery3d/app/PhotoDisplayMap;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/MapView;->regMapViewListener(Lcom/baidu/mapapi/BMapManager;Lcom/baidu/mapapi/MKMapViewListener;)V

    .line 126
    :cond_2
    return-void

    :cond_3
    move-wide v3, v1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CI:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CI:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    .line 132
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onPause()V

    .line 133
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CI:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->start()Z

    .line 139
    const/16 v0, 0xa0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/PhotoDisplayMap;->g(IZ)V

    .line 140
    invoke-super {p0}, Lcom/baidu/mapapi/MapActivity;->onResume()V

    .line 141
    return-void
.end method
