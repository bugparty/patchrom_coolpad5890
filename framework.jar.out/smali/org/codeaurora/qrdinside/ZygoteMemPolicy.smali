.class public Lorg/codeaurora/qrdinside/ZygoteMemPolicy;
.super Ljava/lang/Object;
.source "ZygoteMemPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZygoteMemPolicy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0}, Lorg/codeaurora/qrdinside/ZygoteMemPolicy;->native_init()Z

    .line 39
    return-void
.end method

.method private native native_init()Z
.end method

.method private native native_updateMemPolicy(Ljava/lang/String;I)V
.end method


# virtual methods
.method public updateMemPolicy(Ljava/lang/String;I)V
    .locals 0
    .parameter "procname"
    .parameter "pid"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/qrdinside/ZygoteMemPolicy;->native_updateMemPolicy(Ljava/lang/String;I)V

    .line 44
    return-void
.end method
