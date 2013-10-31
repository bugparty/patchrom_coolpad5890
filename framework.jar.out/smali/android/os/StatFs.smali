.class public Landroid/os/StatFs;
.super Ljava/lang/Object;
.source "StatFs.java"


# instance fields
.field private mIsData:I

.field private mNativeContext:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Landroid/os/StatFs;->native_setup(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private native native_finalize()V
.end method

.method private native native_restat(Ljava/lang/String;)V
.end method

.method private native native_setup(Ljava/lang/String;)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/StatFs;->native_finalize()V

    .line 53
    return-void
.end method

.method public native getAvailableBlocks()I
.end method

.method public native getBlockCount()I
.end method

.method public native getBlockSize()I
.end method

.method public native getFreeBlocks()I
.end method

.method public restat(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/os/StatFs;->native_restat(Ljava/lang/String;)V

    .line 48
    return-void
.end method
