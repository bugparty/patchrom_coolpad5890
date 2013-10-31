.class public Lorg/codeaurora/qrdinside/Perfman;
.super Ljava/lang/Object;
.source "Perfman.java"


# static fields
.field public static final NOTIFY_SYS:I = 0x1

.field public static final NOTIFY_UX:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native InitPerfman()Z
.end method

.method public static final native NotifyPerfman(II)Z
.end method
