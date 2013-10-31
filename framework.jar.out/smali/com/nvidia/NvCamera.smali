.class public Lcom/nvidia/NvCamera;
.super Landroid/hardware/Camera;
.source "NvCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/NvCamera$NvParameters;,
        Lcom/nvidia/NvCamera$NvVideoPreviewFps;,
        Lcom/nvidia/NvCamera$NvWindow;,
        Lcom/nvidia/NvCamera$NvCameraInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NvCamera"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "cameraId"

    .prologue
    .line 1774
    invoke-direct {p0, p1}, Landroid/hardware/Camera;-><init>(I)V

    .line 1775
    return-void
.end method

.method public static native getNvCameraInfo(ILcom/nvidia/NvCamera$NvCameraInfo;)V
.end method

.method private final native native_getCustomParameters()Ljava/lang/String;
.end method

.method private final native native_setCustomParameters(Ljava/lang/String;)V
.end method

.method public static open()Lcom/nvidia/NvCamera;
    .locals 4

    .prologue
    .line 1762
    invoke-static {}, Lcom/nvidia/NvCamera;->getNumberOfCameras()I

    move-result v2

    .line 1763
    .local v2, numberOfCameras:I
    new-instance v0, Lcom/nvidia/NvCamera$NvCameraInfo;

    invoke-direct {v0}, Lcom/nvidia/NvCamera$NvCameraInfo;-><init>()V

    .line 1764
    .local v0, cameraInfo:Lcom/nvidia/NvCamera$NvCameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1765
    invoke-static {v1, v0}, Lcom/nvidia/NvCamera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1766
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 1767
    new-instance v3, Lcom/nvidia/NvCamera;

    invoke-direct {v3, v1}, Lcom/nvidia/NvCamera;-><init>(I)V

    .line 1770
    :goto_1
    return-object v3

    .line 1764
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1770
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Lcom/nvidia/NvCamera;
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 1753
    new-instance v0, Lcom/nvidia/NvCamera;

    invoke-direct {v0, p0}, Lcom/nvidia/NvCamera;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/nvidia/NvCamera;->getParameters()Lcom/nvidia/NvCamera$NvParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/nvidia/NvCamera$NvParameters;
    .locals 4

    .prologue
    .line 268
    new-instance v0, Lcom/nvidia/NvCamera$NvParameters;

    invoke-direct {v0, p0}, Lcom/nvidia/NvCamera$NvParameters;-><init>(Lcom/nvidia/NvCamera;)V

    .line 269
    .local v0, p:Lcom/nvidia/NvCamera$NvParameters;
    const/4 v1, 0x0

    .line 270
    .local v1, s:Ljava/lang/String;
    const-string/jumbo v2, "qc_8x25"

    const-string/jumbo v3, "nvidia_t30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/nvidia/NvCamera;->native_getCustomParameters()Ljava/lang/String;

    move-result-object v1

    .line 277
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Lcom/nvidia/NvCamera$NvParameters;->unflatten(Ljava/lang/String;)V

    .line 278
    return-object v0

    .line 272
    :cond_1
    const-string/jumbo v2, "qc_8x25"

    const-string/jumbo v3, "qc_8x25"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "qc_8x25"

    const-string/jumbo v3, "qc_8930"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "qc_8x25"

    const-string/jumbo v3, "qc_8960"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/nvidia/NvCamera;->getUniformParameters()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public newNvWindow()Lcom/nvidia/NvCamera$NvWindow;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/nvidia/NvCamera$NvWindow;

    invoke-direct {v0}, Lcom/nvidia/NvCamera$NvWindow;-><init>()V

    return-object v0
.end method

.method public setParameters(Lcom/nvidia/NvCamera$NvParameters;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 258
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "nvidia_t30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 259
    invoke-virtual {p1}, Lcom/nvidia/NvCamera$NvParameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nvidia/NvCamera;->native_setCustomParameters(Ljava/lang/String;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8x25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8930"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "qc_8x25"

    const-string/jumbo v1, "qc_8960"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 263
    :cond_2
    invoke-virtual {p1}, Lcom/nvidia/NvCamera$NvParameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/NvCamera;->setUniformParameters(Ljava/lang/String;)V

    goto :goto_0
.end method
