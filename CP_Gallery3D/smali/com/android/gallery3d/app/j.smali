.class public Lcom/android/gallery3d/app/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static dy:Lcom/android/gallery3d/app/j;


# instance fields
.field public final dA:I

.field public final dB:I

.field public final dC:I

.field public final dD:I

.field public final dE:I

.field public final dF:I

.field public final dG:I

.field public final dz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/j;->dz:I

    .line 135
    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/j;->dA:I

    .line 136
    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/j;->dB:I

    .line 137
    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/j;->dC:I

    .line 138
    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/j;->dD:I

    .line 139
    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/j;->dE:I

    .line 140
    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/j;->dF:I

    .line 141
    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/j;->dG:I

    .line 142
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/android/gallery3d/app/j;
    .locals 2
    .parameter

    .prologue
    .line 126
    const-class v1, Lcom/android/gallery3d/app/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/j;->dy:Lcom/android/gallery3d/app/j;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/gallery3d/app/j;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/j;->dy:Lcom/android/gallery3d/app/j;

    .line 129
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/j;->dy:Lcom/android/gallery3d/app/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
