.class public Lcom/nvidia/NvCamera$NvParameters;
.super Landroid/hardware/Camera$Parameters;
.source "NvCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NvParameters"
.end annotation


# static fields
.field private static final NV_AUTOEXPOSURE_LOCK:Ljava/lang/String; = "auto-exposure-lock"

.field private static final NV_AUTOWHITEBALANCE_LOCK:Ljava/lang/String; = "auto-whitebalance-lock"

.field private static final NV_AUTO_ROTATION:Ljava/lang/String; = "nv-auto-rotation"

.field private static final NV_BURST_PICTURE_COUNT:Ljava/lang/String; = "nv-burst-picture-count"

.field private static final NV_CAPABILITY_FOR_VIDEO_SIZE:Ljava/lang/String; = "nv-capabilities-for-video-size"

.field private static final NV_CAPTURE_MODE:Ljava/lang/String; = "nv-capture-mode"

.field private static final NV_COLOR_CORRECTION:Ljava/lang/String; = "nv-color-correction"

.field private static final NV_CONTINUOUS_SHOT_MODE:Ljava/lang/String; = "shot2shot"

.field private static final NV_CONTRAST:Ljava/lang/String; = "nv-contrast"

.field private static final NV_EDGE_ENHANCEMENT:Ljava/lang/String; = "nv-edge-enhancement"

.field private static final NV_EV_BRACKET_CAPTURE:Ljava/lang/String; = "nv-ev-bracket-capture"

.field private static final NV_EXPOSURE_TIME:Ljava/lang/String; = "nv-exposure-time"

.field private static final NV_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field private static final NV_FOCUS_POSITION:Ljava/lang/String; = "nv-focus-position"

.field private static final NV_METERING_AREAS:Ljava/lang/String; = "metering-areas"

.field private static final NV_NORMAL_SHOT_MODE:Ljava/lang/String; = "normal"

.field private static final NV_NSL_BURST_PICTURE_COUNT:Ljava/lang/String; = "nv-nsl-burst-picture-count"

.field private static final NV_NSL_NUM_BUFFERS:Ljava/lang/String; = "nv-nsl-num-buffers"

.field private static final NV_NSL_SKIP_COUNT:Ljava/lang/String; = "nv-nsl-burst-skip-count"

.field private static final NV_PHOTO_SCOUTER:Ljava/lang/String; = "nv-photo-scouter"

.field private static final NV_PHOTO_SOLID:Ljava/lang/String; = "nv-photo-solid"

.field private static final NV_PICTURE_ISO:Ljava/lang/String; = "nv-picture-iso"

.field private static final NV_RAW_DUMP_FLAG:Ljava/lang/String; = "nv-raw-dump-flag"

.field private static final NV_SATURATION:Ljava/lang/String; = "nv-saturation"

.field private static final NV_SENSOR_CAPTURE_RATE:Ljava/lang/String; = "nv-sensor-capture-rate"

.field private static final NV_SKIP_COUNT:Ljava/lang/String; = "nv-burst-skip-count"

.field private static final NV_SMART_SELECT:Ljava/lang/String; = "nv-smart-select"

.field private static final NV_STEREO_MODE:Ljava/lang/String; = "nv-stereo-mode"

.field private static final NV_STILL_HDR:Ljava/lang/String; = "nv-still-hdr"

.field private static final NV_SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final NV_TRACK_SOLID:Ljava/lang/String; = "nv-track-solid"

.field private static final NV_TRACK_SOLID_AREA:Ljava/lang/String; = "nv-track-solid-area"

.field private static final NV_VIDEO_SPEED:Ljava/lang/String; = "nv-video-speed"


# instance fields
.field private final MARVELL_CONTRAST:[I

.field private final MARVELL_ISO:[Ljava/lang/String;

.field private final MARVELL_SATURATION:[I

.field private final MTK_CONTRAST:[I

.field private final MTK_ISO:[Ljava/lang/String;

.field private final MTK_SATURATION:[I

.field private final MTK_SHARPNESS:[I

.field private final Nv_CONTRAST:[Ljava/lang/String;

.field private final Nv_ISO:[Ljava/lang/String;

.field private final Nv_SATURATION:[Ljava/lang/String;

.field private final Nv_SHARPNESS:[Ljava/lang/String;

.field private final QC_CONTRAST:[I

.field private final QC_ISO:[Ljava/lang/String;

.field private final QC_SATURATION:[I

.field private final QC_SHARPNESS:[I

.field final synthetic this$0:Lcom/nvidia/NvCamera;


# direct methods
.method protected constructor <init>(Lcom/nvidia/NvCamera;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 347
    iput-object p1, p0, Lcom/nvidia/NvCamera$NvParameters;->this$0:Lcom/nvidia/NvCamera;

    .line 348
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;)V

    .line 324
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v4

    const-string v1, "100"

    aput-object v1, v0, v5

    const-string v1, "200"

    aput-object v1, v0, v6

    const-string v1, "400"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "800"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->Nv_ISO:[Ljava/lang/String;

    .line 325
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v4

    const-string v1, "ISO100"

    aput-object v1, v0, v5

    const-string v1, "ISO200"

    aput-object v1, v0, v6

    const-string v1, "ISO400"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "ISO800"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->QC_ISO:[Ljava/lang/String;

    .line 326
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v4

    const-string v1, "ISO100"

    aput-object v1, v0, v5

    const-string v1, "ISO200"

    aput-object v1, v0, v6

    const-string v1, "ISO400"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "ISO800"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->MTK_ISO:[Ljava/lang/String;

    .line 327
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "auto"

    aput-object v1, v0, v4

    const-string v1, "100"

    aput-object v1, v0, v5

    const-string v1, "200"

    aput-object v1, v0, v6

    const-string v1, "400"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "800"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->MARVELL_ISO:[Ljava/lang/String;

    .line 329
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "lowest"

    aput-object v1, v0, v4

    const-string/jumbo v1, "low"

    aput-object v1, v0, v5

    const-string v1, "Normal"

    aput-object v1, v0, v6

    const-string v1, "hight"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "hightest"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->Nv_CONTRAST:[Ljava/lang/String;

    .line 330
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->QC_CONTRAST:[I

    .line 331
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->MARVELL_CONTRAST:[I

    .line 332
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->MTK_CONTRAST:[I

    .line 334
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "-100"

    aput-object v1, v0, v4

    const-string v1, "-50"

    aput-object v1, v0, v5

    const-string v1, "0"

    aput-object v1, v0, v6

    const-string v1, "50"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "100"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->Nv_SATURATION:[Ljava/lang/String;

    .line 335
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->QC_SATURATION:[I

    .line 336
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->MARVELL_SATURATION:[I

    .line 337
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->MTK_SATURATION:[I

    .line 340
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "-100"

    aput-object v1, v0, v4

    const-string v1, "-50"

    aput-object v1, v0, v5

    const-string v1, "0"

    aput-object v1, v0, v6

    const-string v1, "50"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "100"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->Nv_SHARPNESS:[Ljava/lang/String;

    .line 341
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->QC_SHARPNESS:[I

    .line 343
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/nvidia/NvCamera$NvParameters;->MTK_SHARPNESS:[I

    .line 349
    return-void

    .line 330
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 331
    :array_1
    .array-data 0x4
        0x81t 0xfft 0xfft 0xfft
        0xc4t 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    .line 332
    :array_2
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 335
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 336
    :array_4
    .array-data 0x4
        0x81t 0xfft 0xfft 0xfft
        0xc4t 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    .line 337
    :array_5
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 341
    :array_6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    .line 343
    :array_7
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1713
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1715
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "("

    invoke-direct {v5, p2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1718
    new-instance v6, Lcom/nvidia/NvCamera$NvWindow;

    invoke-direct {v6}, Lcom/nvidia/NvCamera$NvWindow;-><init>()V

    .line 1719
    .local v6, window:Lcom/nvidia/NvCamera$NvWindow;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1720
    .local v4, token:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v3, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    .local v3, subTokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1722
    .local v2, subToken:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->left:I

    .line 1723
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1724
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->top:I

    .line 1725
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1726
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->right:I

    .line 1727
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1728
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->bottom:I

    .line 1729
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1730
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v7, ")"

    invoke-direct {v1, v2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    .local v1, endTokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, endToken:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/nvidia/NvCamera$NvWindow;->weight:I

    .line 1733
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1736
    .end local v0           #endToken:Ljava/lang/String;
    .end local v1           #endTokenizer:Ljava/util/StringTokenizer;
    .end local v2           #subToken:Ljava/lang/String;
    .end local v3           #subTokenizer:Ljava/util/StringTokenizer;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #tokenizer:Ljava/util/StringTokenizer;
    .end local v6           #window:Lcom/nvidia/NvCamera$NvWindow;
    :cond_0
    return-void
.end method

.method private WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1683
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1685
    :cond_0
    const/4 v4, 0x0

    .line 1708
    :goto_0
    return-object v4

    .line 1689
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1690
    .local v1, size:I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1691
    .local v3, windowsString:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1693
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nvidia/NvCamera$NvWindow;

    .line 1694
    .local v2, window:Lcom/nvidia/NvCamera$NvWindow;
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1696
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1698
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1700
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1702
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    iget v4, v2, Lcom/nvidia/NvCamera$NvWindow;->weight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1704
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_2

    .line 1706
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1708
    .end local v2           #window:Lcom/nvidia/NvCamera$NvWindow;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public YLIsSupportHDR()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 431
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "nvidia_t30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 432
    const/4 v0, 0x1

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 433
    :cond_1
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8x25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8960"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "lc1810"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "marvell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public YLIsSupportPhotoSolid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 476
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "nvidia_t30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 477
    const/4 v0, 0x1

    .line 487
    :cond_0
    :goto_0
    return v0

    .line 478
    :cond_1
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8x25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8960"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "lc1810"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "marvell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public YLIsSupportPhotosouter()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 461
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "nvidia_t30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 462
    const/4 v0, 0x1

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8x25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8960"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "lc1810"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "marvell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public YLIsSupportSmartSelect()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 491
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "nvidia_t30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 492
    const/4 v0, 0x1

    .line 502
    :cond_0
    :goto_0
    return v0

    .line 493
    :cond_1
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8x25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8960"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "lc1810"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "marvell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public YLIsSupportTrackSolid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 446
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "nvidia_t30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 447
    const/4 v0, 0x1

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8x25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8960"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "lc1810"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "marvell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public YLsetContrast(I)V
    .locals 2
    .parameter "nvalue"

    .prologue
    .line 412
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_2

    .line 413
    :cond_0
    const-string v0, "NvCamera"

    const-string v1, "YLLOG:invalid parameter for YLsetContrast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_1
    :goto_0
    return-void

    .line 416
    :cond_2
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "nvidia_t30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 417
    const-string/jumbo v0, "nv-contrast"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->Nv_CONTRAST:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_3
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8x25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8930"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8960"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 421
    :cond_4
    const-string v0, "contrast"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->QC_CONTRAST:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 422
    :cond_5
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "lc1810"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 423
    const-string v0, "contrast"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->MTK_CONTRAST:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 424
    :cond_6
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "marvell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 425
    const-string v0, "contrast"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->MARVELL_CONTRAST:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public YLsetIso(I)V
    .locals 2
    .parameter "nvalue"

    .prologue
    .line 355
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_2

    .line 356
    :cond_0
    const-string v0, "NvCamera"

    const-string v1, "YLLOG:invalid parameter for YLsetIso"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_1
    :goto_0
    return-void

    .line 359
    :cond_2
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "nvidia_t30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 360
    const-string/jumbo v0, "nv-picture-iso"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->Nv_ISO:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_3
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8x25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8930"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8960"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 364
    :cond_4
    const-string/jumbo v0, "iso"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->QC_ISO:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_5
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "lc1810"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 366
    const-string/jumbo v0, "iso-mode"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->MTK_ISO:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_6
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "marvell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 368
    const-string/jumbo v0, "iso"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->MARVELL_ISO:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public YLsetSaturation(I)V
    .locals 2
    .parameter "nvalue"

    .prologue
    .line 373
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_2

    .line 374
    :cond_0
    const-string v0, "NvCamera"

    const-string v1, "YLLOG:invalid parameter for YLsetSaturation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_1
    :goto_0
    return-void

    .line 377
    :cond_2
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "nvidia_t30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 378
    const-string/jumbo v0, "nv-saturation"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->Nv_SATURATION:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_3
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8x25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8930"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8960"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 382
    :cond_4
    const-string/jumbo v0, "saturation"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->QC_SATURATION:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 383
    :cond_5
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "lc1810"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 384
    const-string/jumbo v0, "saturation"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->MTK_SATURATION:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 385
    :cond_6
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "marvell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 386
    const-string/jumbo v0, "saturation"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->MARVELL_SATURATION:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public YLsetSharpness(I)V
    .locals 2
    .parameter "nvalue"

    .prologue
    .line 392
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_2

    .line 393
    :cond_0
    const-string v0, "NvCamera"

    const-string v1, "YLLOG:invalid parameter for YLsetSharpness"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "nvidia_t30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 397
    const-string/jumbo v0, "nv-edge-enhancement"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->Nv_SHARPNESS:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_3
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8x25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8930"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8960"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 401
    :cond_4
    const-string/jumbo v0, "sharpness"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->QC_SHARPNESS:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 402
    :cond_5
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "lc1810"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 403
    const-string/jumbo v0, "sharpness"

    iget-object v1, p0, Lcom/nvidia/NvCamera$NvParameters;->MTK_SHARPNESS:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 404
    :cond_6
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "marvell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method public getAutoExposureLock()Z
    .locals 2

    .prologue
    .line 1504
    const-string v1, "auto-exposure-lock"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1505
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getAutoRotation()Z
    .locals 2

    .prologue
    .line 1528
    const-string/jumbo v1, "nv-auto-rotation"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1529
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getAutoWhiteBalanceLock()Z
    .locals 2

    .prologue
    .line 1488
    const-string v1, "auto-whitebalance-lock"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getBurstCount()I
    .locals 1

    .prologue
    .line 733
    const-string/jumbo v0, "nv-burst-picture-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCapabilitiesForVideoSizes()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nvidia/NvCamera$NvVideoPreviewFps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .local v1, VideoPreviewSizeFPS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvVideoPreviewFps;>;"
    const-string/jumbo v9, "nv-capabilities-for-video-size-values"

    invoke-virtual {p0, v9}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1005
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 1040
    .end local v1           #VideoPreviewSizeFPS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvVideoPreviewFps;>;"
    :cond_0
    return-object v1

    .line 1006
    .restart local v1       #VideoPreviewSizeFPS:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvVideoPreviewFps;>;"
    :cond_1
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v6, v2, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    .local v6, tokenizer1:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1009
    new-instance v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;

    invoke-direct {v0}, Lcom/nvidia/NvCamera$NvVideoPreviewFps;-><init>()V

    .line 1011
    .local v0, TempVideoPreviewFps:Lcom/nvidia/NvCamera$NvVideoPreviewFps;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1014
    .local v3, token1:Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v9, ":"

    invoke-direct {v7, v3, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    .local v7, tokenizer2:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1017
    .local v4, token2:Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string/jumbo v9, "x"

    invoke-direct {v8, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    .local v8, tokenizer3:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1021
    .local v5, token3:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoWidth:I

    .line 1022
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1023
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->VideoHeight:I

    .line 1025
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1026
    new-instance v8, Ljava/util/StringTokenizer;

    .end local v8           #tokenizer3:Ljava/util/StringTokenizer;
    const-string/jumbo v9, "x"

    invoke-direct {v8, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    .restart local v8       #tokenizer3:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1030
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewWidth:I

    .line 1031
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1032
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxPreviewHeight:I

    .line 1034
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1036
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/nvidia/NvCamera$NvVideoPreviewFps;->MaxFps:I

    .line 1038
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getColorCorrection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1207
    const-string/jumbo v0, "nv-color-correction"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorCorrection([F)V
    .locals 8
    .parameter "matrix"

    .prologue
    const/16 v7, 0x10

    .line 1225
    if-eqz p1, :cond_1

    array-length v6, p1

    if-ne v6, v7, :cond_1

    .line 1227
    const-string/jumbo v6, "nv-color-correction"

    invoke-virtual {p0, v6}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1228
    .local v3, str:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1230
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 1231
    const/4 v6, 0x0

    aput v6, p1, v0

    .line 1230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1235
    .end local v0           #i:I
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 1237
    .local v1, index:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1239
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1240
    .local v4, token:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, p1, v1

    move v1, v2

    .line 1241
    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_1

    .line 1244
    .end local v1           #index:I
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    .end local v5           #tokenizer:Ljava/util/StringTokenizer;
    :cond_1
    return-void
.end method

.method public varargs getContrast([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "obj"

    .prologue
    .line 1327
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "nvidia_t30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1328
    const-string/jumbo v0, "nv-contrast"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1335
    :goto_0
    return-object v0

    .line 1330
    :cond_0
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8x25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8930"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8960"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1333
    :cond_1
    invoke-super {p0}, Landroid/hardware/Camera$Parameters;->getContrast()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1335
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEdgeEnhancement()I
    .locals 1

    .prologue
    .line 1364
    const-string/jumbo v0, "nv-edge-enhancement"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExposureTime()I
    .locals 1

    .prologue
    .line 1396
    const-string/jumbo v0, "nv-exposure-time"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFocusAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1099
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    const-string v1, "focus-areas"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/nvidia/NvCamera$NvParameters;->StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1101
    return-void
.end method

.method public getFocusPosition()I
    .locals 1

    .prologue
    .line 1461
    const-string/jumbo v0, "nv-focus-position"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMeteringAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1158
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    const-string/jumbo v1, "metering-areas"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/nvidia/NvCamera$NvParameters;->StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1160
    return-void
.end method

.method public getNSLBurstCount()I
    .locals 1

    .prologue
    .line 658
    const-string/jumbo v0, "nv-nsl-burst-picture-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNSLNumBuffers()I
    .locals 1

    .prologue
    .line 593
    const-string/jumbo v0, "nv-nsl-num-buffers"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNSLSkipCount()I
    .locals 1

    .prologue
    .line 629
    const-string/jumbo v0, "nv-nsl-burst-skip-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPhotoScouter()Z
    .locals 2

    .prologue
    .line 1605
    const-string/jumbo v1, "nv-photo-scouter"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1606
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getPhotoSolid()Z
    .locals 2

    .prologue
    .line 1571
    const-string/jumbo v1, "nv-photo-solid"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1572
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getPictureISO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1426
    const-string/jumbo v0, "nv-picture-iso"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawDumpFlag()I
    .locals 1

    .prologue
    .line 835
    const-string/jumbo v0, "nv-raw-dump-flag"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSaturation()I
    .locals 2

    .prologue
    .line 1275
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "nvidia_t30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1276
    const-string/jumbo v0, "nv-saturation"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1282
    :goto_0
    return v0

    .line 1277
    :cond_0
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8x25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8930"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8960"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1280
    :cond_1
    invoke-super {p0}, Landroid/hardware/Camera$Parameters;->getSaturation()I

    move-result v0

    goto :goto_0

    .line 1282
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSkipCount()I
    .locals 1

    .prologue
    .line 714
    const-string/jumbo v0, "nv-burst-skip-count"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSmartSelect()Z
    .locals 2

    .prologue
    .line 1588
    const-string/jumbo v1, "nv-smart-select"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1589
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getStereoMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1661
    const-string/jumbo v0, "nv-stereo-mode"

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStillHDR()Z
    .locals 2

    .prologue
    .line 1553
    const-string/jumbo v1, "nv-still-hdr"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1554
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getSupportedSensorCaptureRate()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    const-string/jumbo v5, "nv-sensor-capture-rate-values"

    invoke-virtual {p0, v5}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 918
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 928
    :cond_0
    return-object v0

    .line 920
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .local v0, SensorCaptureRate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 924
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 925
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 926
    .local v1, r:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSupportedStereoModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1677
    const-string/jumbo v1, "nv-stereo-mode-values"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera$NvParameters;->splitCloned(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedVideoSpeeds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 970
    const-string/jumbo v5, "nv-video-speed-values"

    invoke-virtual {p0, v5}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 971
    .local v1, str:Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v4, 0x0

    .line 981
    :cond_0
    return-object v4

    .line 973
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v4, videospeeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 977
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 978
    .local v2, token:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 979
    .local v0, s:F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getTrackSolid()Z
    .locals 2

    .prologue
    .line 1623
    const-string/jumbo v1, "nv-track-solid"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1624
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getTrackSolidAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1171
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    const-string/jumbo v1, "nv-track-solid-area"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/nvidia/NvCamera$NvParameters;->StringToWindows(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method public inContinuousShotMode()Z
    .locals 2

    .prologue
    .line 787
    const-string/jumbo v1, "nv-capture-mode"

    invoke-virtual {p0, v1}, Lcom/nvidia/NvCamera$NvParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, nvCaptureMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 789
    const-string/jumbo v1, "shot2shot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 790
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutoExposureLock(Z)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 1496
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1497
    .local v0, v:Ljava/lang/String;
    const-string v1, "auto-exposure-lock"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    return-void
.end method

.method public setAutoRotation(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1520
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1521
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-auto-rotation"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    return-void
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 1480
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1481
    .local v0, v:Ljava/lang/String;
    const-string v1, "auto-whitebalance-lock"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    return-void
.end method

.method public setBurstCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 725
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-burst-picture-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public setColorCorrection(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1199
    const-string/jumbo v0, "nv-color-correction"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    return-void
.end method

.method public setColorCorrection([F)V
    .locals 5
    .parameter "matrix"

    .prologue
    const/16 v4, 0xf

    .line 1211
    if-eqz p1, :cond_1

    array-length v2, p1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1214
    .local v1, matrixString:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1216
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1217
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1219
    :cond_0
    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1220
    const-string/jumbo v2, "nv-color-correction"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    .end local v0           #i:I
    .end local v1           #matrixString:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public setContrast(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 1313
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "nvidia_t30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1314
    const-string/jumbo v1, "nv-contrast"

    invoke-virtual {p0, v1, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1315
    :cond_1
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8x25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8960"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1318
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1319
    .local v0, contrast:I
    invoke-super {p0, v0}, Landroid/hardware/Camera$Parameters;->setContrast(I)V

    goto :goto_0
.end method

.method public setEdgeEnhancement(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1355
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1356
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-edge-enhancement"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    return-void
.end method

.method public setEvBracketCapture([F)V
    .locals 4
    .parameter "evValues"

    .prologue
    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 865
    .local v0, evString:Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 867
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    :goto_0
    const-string/jumbo v2, "nv-ev-bracket-capture"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    return-void

    .line 871
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 873
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 874
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 876
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setExposureTime(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1388
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-exposure-time"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    return-void
.end method

.method public setFocusAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1087
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    invoke-direct {p0, p1}, Lcom/nvidia/NvCamera$NvParameters;->WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1089
    const-string v1, "focus-areas"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_0
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1453
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1454
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-focus-position"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    return-void
.end method

.method public setMeteringAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1146
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    invoke-direct {p0, p1}, Lcom/nvidia/NvCamera$NvParameters;->WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1148
    const-string/jumbo v1, "metering-areas"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_0
    return-void
.end method

.method public setNSLBurstCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 650
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-burst-picture-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public setNSLNumBuffers(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 574
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-num-buffers"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public setNSLSkipCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 621
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-burst-skip-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public setNVShotMode(Ljava/lang/String;)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, retVal:Z
    if-eqz p1, :cond_0

    .line 771
    const-string/jumbo v1, "shot2shot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    const-string/jumbo v1, "nv-capture-mode"

    const-string/jumbo v2, "shot2shot"

    invoke-virtual {p0, v1, v2}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const/4 v0, 0x1

    .line 780
    :cond_0
    :goto_0
    return v0

    .line 775
    :cond_1
    const-string/jumbo v1, "normal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    const-string/jumbo v1, "nv-capture-mode"

    const-string/jumbo v2, "normal"

    invoke-virtual {p0, v1, v2}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPhotoScouter(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1597
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1598
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-photo-scouter"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    return-void
.end method

.method public setPhotoSolid(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1563
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1564
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-photo-solid"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    return-void
.end method

.method public setPictureISO(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1419
    const-string/jumbo v0, "nv-picture-iso"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    return-void
.end method

.method public setRawDumpFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 827
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-raw-dump-flag"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public setSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 1261
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1262
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "nvidia_t30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1263
    const-string/jumbo v1, "nv-saturation"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8x25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "qc_8x25"

    const-string/jumbo v2, "qc_8960"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1267
    :cond_2
    invoke-super {p0, p1}, Landroid/hardware/Camera$Parameters;->setSaturation(I)V

    goto :goto_0
.end method

.method public setSensorCaptureRate(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 908
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-sensor-capture-rate"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public setSkipCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 706
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-burst-skip-count"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public setSmartSelect(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1580
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1581
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-smart-select"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    return-void
.end method

.method public setStereoMode(Ljava/lang/String;)V
    .locals 1
    .parameter "stereoMode"

    .prologue
    .line 1649
    const-string/jumbo v0, "nv-stereo-mode"

    invoke-virtual {p0, v0, p1}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    return-void
.end method

.method public setStillHDR(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1545
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1546
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-still-hdr"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    return-void
.end method

.method public setTrackSolid(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1615
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1616
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-track-solid"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    return-void
.end method

.method public setTrackSolidAreas(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nvidia/NvCamera$NvWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1164
    .local p1, windowList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nvidia/NvCamera$NvWindow;>;"
    invoke-direct {p0, p1}, Lcom/nvidia/NvCamera$NvParameters;->WindowsToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1166
    const-string/jumbo v1, "nv-track-solid-area"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    :cond_0
    return-void
.end method

.method public setVideoSpeed(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 961
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, v:Ljava/lang/String;
    const-string/jumbo v1, "nv-video-speed"

    invoke-virtual {p0, v1, v0}, Lcom/nvidia/NvCamera$NvParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method protected splitCloned(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 523
    :cond_0
    return-object v0

    .line 518
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
