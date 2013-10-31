.class public Lcom/yulong/android/service/gifplayer/GifPlayerJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "GifPlayerJNI"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native gifplayerGetOneFrame(I[I)Landroid/graphics/Bitmap;
.end method

.method public static native gifplayerInit()I
.end method

.method public static native gifplayerOpen([BJI)I
.end method

.method public static native gifplayerUnit()I
.end method
